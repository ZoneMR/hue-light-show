//Config
var SHOW_FILE = process.argv[2];

//All actions are advanced by anticipated control lag
var CONTROL_LAG = 0.05;

//Dependencies
var ip = require("ip");
var fs = require('fs');
var airplayer = require('airplayer')
var hue = require("node-hue-api");
var ipAddress = ip.address();

console.log(`<HueLightShow> on ${ipAddress}`);

//Hue API
var HueApi = hue.HueApi;
var HueLightState = hue.lightState;

//Load and parse our Script
var script = fs.readFileSync(SHOW_FILE, 'utf8') + '\n@end';

if(!script) {
	console.log("Couldn't load " + SHOW_FILE);
}

var actionsRegex = /([\s\S]*?)\B@(\S+)/g;
var actions = {};
var nextTime = undefined;

while ((action = actionsRegex.exec(script)) !== null) {
    var actionJs = action[1].trim();

    if (!nextTime) {
        console.log("Running Light Show Script Setup");
        eval(actionJs);
    } else {
        actions[nextTime] = actionJs;
    }

    var actionTime = action[2].split('b');

    nextTime = parseFloat(actionTime[0]);

    if (actionTime[1]) {
        nextTime += parseFloat(actionTime[1]) * BEAT_DURATION;
    }
}

//console.log(actions);

//Function which runs our light script
var startTime;
var lagCompensation = 0;

function runScript() {
    var lastAction = 0;
    var actionTimes = Object.keys(actions).sort((a, b) => {
        return parseFloat(a) - parseFloat(b);
    });

    console.log(actionTimes);

    var interval = setInterval(() => {
        var tickTime = process.hrtime(startTime);

        tickTime = tickTime[0] + tickTime[1] / 1000000000;
        tickTime += lagCompensation;

        var actionTime = actionTimes[0];

        if (!actionTime) {
            console.log("Done all actions :)");

            clearInterval(interval);
        }

        if (tickTime >= actionTime) {
            var actionJs = actions[actionTime];

            actionJs = actionJs.replace(/^\/\/#.*/gm, (val) => {
                val = val.replace('\'', '\\\'');

                return `console.log('${val}');`;
            });

            console.log(actionJs);

            eval(actionJs);

            actionTimes.shift();
        }

        //console.log(actionTime);
        //console.log(tickTime);
    }, 50);
}

//HTTP Server for AirPlay
var express = require('express');
var app = express();

app.use(express.static('./assets/'));

app.listen(8087);
console.log('Listening on port 8087');

//AirPlay the track
var list = airplayer()

list.on('update', function(player) {
    console.log('Found new AirPlay device:', player.name)

    if (player.name == AIRPLAY_TARGET) {
        var audioFileURI = encodeURIComponent(AUDIO_FILE);
        var file = `http://${ipAddress}:8087/${audioFileURI}`;
        var statusInterval;

        player.play(file, 0);
        console.log('... Playing', file);

        player.on('event', (data) => {
            console.log('Event: ' + JSON.stringify(data));

            if (data.state == "playing") {
                startTime = process.hrtime();

                runScript();

                statusInterval = setInterval(() => {
                    //Measure our lag at various intervals so we keep sync
                    player.playbackInfo(function(err, res, body) {
                        if (err) throw err
                        //console.log('Playback info:', body)

                        var airplayTime = body.position;

                        var localTime = process.hrtime(startTime);
                        localTime = localTime[0] + localTime[1] / 1000000000;

                        var lag = airplayTime - localTime - lagCompensation - CONTROL_LAG;

                        lagCompensation += Math.max(Math.min(lag, 0.03), -0.3);

                        if(lag > 0.01 || lag < -0.01) {
                            console.log(`*** lag: ${lag} lagCompensation: ${lagCompensation}`);
                        }
                    })
                }, 2000);
            }

            if (data.state == "stopped") {
                player.destroy();
                list.destroy();
                clearInterval(statusInterval);
                statusInterval = undefined;
            }
        });
    }
})
