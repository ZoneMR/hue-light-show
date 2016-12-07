/* 
 * DEMO LIGHT SCRIPT FILE
 */
 
AUDIO_FILE = "Heroes (We Could Be) [feat. Tove Lo] [Extended Mix].m4a";
//^ Get it from iTunes and plact in the assets folder ^

AIRPLAY_TARGET = "Bedroom";
BEAT_DURATION = 38.11 / 80;
BAR_DURATION = BEAT_DURATION * 4; //~1.9s

//Define Hue Light + Group IDs
BEDROOM_GROUP = 6;
BEDROOM_1 = 20;
BEDROOM_2 = 19;
BEDROOM_3 = 21;
BEDROOM_4 = 22;
BEDROOM_STRIP = 5;
BEDROOM_DESK = 6;
BEDROOM_IRIS = 7;

//Define Hue Light States
S_OFF = HueLightState.create().off().transition(0);
S_ON = HueLightState.create().on().bri(255).transition(0);
S_25 = HueLightState.create().on().bri(64).transition(0);
S_50 = HueLightState.create().on().bri(128).transition(0);
S_75 = HueLightState.create().on().bri(192).transition(0)
S_COLORLOOP = HueLightState.create().on().bri(255).colorLoop().transition(0);
S_PULSE = HueLightState.create().shortAlert();
S_RED = HueLightState.create().on().bri(255).rgb(255, 0, 0).transition(0);
S_GREEN = HueLightState.create().on().bri(255).rgb(0, 255, 0).transition(0);
S_PURPLE = HueLightState.create().on().bri(255).rgb(96, 0, 255).transition(0);
S_YELLOW = HueLightState.create().on().bri(255).rgb(0, 255, 0).transition(0);
S_DAYLIGHT = HueLightState.create().on().white(154, 100).transition(0);

//Begin the show, commands are sync'ed to the music
//1.00b2 means 1 second + 2 * BEAT_DURATION

@0.03b0   hueApi.setLightState(BEDROOM_1, S_PURPLE);
@0.03b1   hueApi.setLightState(BEDROOM_2, S_GREEN);
@0.03b2   hueApi.setLightState(BEDROOM_3, S_PURPLE);
@0.03b3   hueApi.setLightState(BEDROOM_4, S_GREEN);

@0.03b4   hueApi.setLightState(BEDROOM_STRIP, S_GREEN);
@0.03b5   hueApi.setLightState(BEDROOM_DESK, S_GREEN);
@0.03b6   hueApi.setGroupLightState(BEDROOM_GROUP, S_OFF);
@0.03b7   hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@3.85b0   hueApi.setLightState(BEDROOM_1, S_PULSE);
@3.85b1   hueApi.setLightState(BEDROOM_2, S_PULSE);
@3.85b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@3.85b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@3.85b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@3.85b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@3.85b6  hueApi.setLightState(BEDROOM_STRIP, S_PULSE);
@3.85b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@7.66b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@7.66b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@7.66b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@7.66b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@7.66b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@7.66b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@7.66b6  hueApi.setLightState(BEDROOM_DESK, S_PULSE);
@7.66b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@11.46b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@11.46b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@11.46b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@11.46b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@11.46b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@11.46b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@11.46b6  hueApi.setLightState(BEDROOM_STRIP, S_PULSE);
@11.46b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@15.28b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@15.28b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@15.28b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@15.28b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@15.28b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@15.28b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@15.28b6  hueApi.setLightState(BEDROOM_DESK, S_PULSE);
@15.28b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@19.09b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@19.09b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@19.09b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@19.09b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@19.09b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@19.09b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@19.09b6  hueApi.setLightState(BEDROOM_STRIP, S_PULSE);
@19.09b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@22.90b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@22.90b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@22.90b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@22.90b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@22.90b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@22.90b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@22.90b6  hueApi.setLightState(BEDROOM_DESK, S_PULSE);
@22.90b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE).then(() => {
	//Fade in Bedroom Iris over 8 seconds
	var state = S_GREEN.copy().transition(16000);
	hueApi.setLightState(BEDROOM_IRIS, state);
});;

@26.71b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@26.71b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@26.71b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@26.71b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@26.71b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@26.71b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@26.71b6  hueApi.setLightState(BEDROOM_STRIP, S_PULSE);
@26.71b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@30.52b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@30.52b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@30.52b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@30.52b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@30.52b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@30.52b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@30.52b6  hueApi.setLightState(BEDROOM_DESK, S_PULSE);
@30.52b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

@34.33b0  hueApi.setLightState(BEDROOM_1, S_PULSE);
@34.33b1  hueApi.setLightState(BEDROOM_2, S_PULSE);
@34.33b2  hueApi.setLightState(BEDROOM_3, S_PULSE);
@34.33b3  hueApi.setLightState(BEDROOM_4, S_PULSE);

@34.33b4  hueApi.setLightState(BEDROOM_1, S_PULSE);
@34.33b5  hueApi.setLightState(BEDROOM_2, S_PULSE);
@34.33b6  hueApi.setLightState(BEDROOM_STRIP, S_PULSE);
@34.33b6.5  hueApi.setGroupLightState(BEDROOM_GROUP, S_PULSE);

//Things speed up
@38.15b0.0  hueApi.setLightState(BEDROOM_1, S_25);
@38.15b0.5  hueApi.setLightState(BEDROOM_2, S_25);
@38.15b1.0  hueApi.setLightState(BEDROOM_3, S_25);
@38.15b1.5  hueApi.setLightState(BEDROOM_4, S_25);
@38.15b2.0  hueApi.setLightState(BEDROOM_1, S_50);
@38.15b2.5  hueApi.setLightState(BEDROOM_2, S_50);
@38.15b3.0  hueApi.setLightState(BEDROOM_3, S_50);
@38.15b3.5  hueApi.setLightState(BEDROOM_4, S_50);

@38.15b4.0  hueApi.setLightState(BEDROOM_1, S_75);
@38.15b4.5  hueApi.setLightState(BEDROOM_2, S_75);
@38.15b5.0  hueApi.setLightState(BEDROOM_3, S_75);
@38.15b5.5  hueApi.setLightState(BEDROOM_4, S_75);
@38.15b6.0  hueApi.setLightState(BEDROOM_1, S_ON);
@38.15b6.5  hueApi.setLightState(BEDROOM_2, S_ON);
@38.15b7.0  hueApi.setLightState(BEDROOM_3, S_ON);
@38.15b7.5  hueApi.setLightState(BEDROOM_4, S_ON);

//Things get really fast
@41.93b0.00  hueApi.setLightState(BEDROOM_1, S_RED);
@41.93b0.25  hueApi.setLightState(BEDROOM_2, S_RED);
@41.93b0.50  hueApi.setLightState(BEDROOM_3, S_RED);
@41.93b0.75  hueApi.setLightState(BEDROOM_4, S_RED);
@41.93b1.00  hueApi.setLightState(BEDROOM_1, S_PURPLE);
@41.93b1.25  hueApi.setLightState(BEDROOM_2, S_PURPLE);
@41.93b1.50  hueApi.setLightState(BEDROOM_3, S_PURPLE);
@41.93b1.75  hueApi.setLightState(BEDROOM_4, S_PURPLE);
@41.93b2.00  hueApi.setLightState(BEDROOM_1, S_GREEN);
@41.93b2.25  hueApi.setLightState(BEDROOM_2, S_GREEN);
@41.93b2.50  hueApi.setLightState(BEDROOM_3, S_GREEN);
@41.93b2.75  hueApi.setLightState(BEDROOM_4, S_GREEN);
@41.93b3.00  hueApi.setLightState(BEDROOM_1, S_YELLOW);
@41.93b3.25  hueApi.setLightState(BEDROOM_2, S_YELLOW);
@41.93b3.50  hueApi.setLightState(BEDROOM_3, S_YELLOW);
@41.93b3.75  hueApi.setLightState(BEDROOM_4, S_YELLOW);

@41.93b4.00  hueApi.setLightState(BEDROOM_1, S_RED);
@41.93b4.25  hueApi.setLightState(BEDROOM_2, S_RED);
@41.93b4.50  hueApi.setLightState(BEDROOM_3, S_RED);
@41.93b4.75  hueApi.setLightState(BEDROOM_4, S_RED);
@41.93b5.00  hueApi.setLightState(BEDROOM_1, S_PURPLE);
@41.93b5.25  hueApi.setLightState(BEDROOM_2, S_PURPLE);
@41.93b5.50  hueApi.setLightState(BEDROOM_3, S_PURPLE);
@41.93b5.75  hueApi.setLightState(BEDROOM_4, S_PURPLE);
@41.93b6.00  hueApi.setLightState(BEDROOM_1, S_YELLOW);
@41.93b6.25  hueApi.setLightState(BEDROOM_2, S_YELLOW);
@41.93b6.50  hueApi.setLightState(BEDROOM_3, S_YELLOW);
@41.93b6.75  hueApi.setLightState(BEDROOM_4, S_YELLOW);
@41.93b7.00  hueApi.setLightState(BEDROOM_1, S_PURPLE);
@41.93b7.25  hueApi.setLightState(BEDROOM_2, S_GREEN);
@41.93b7.50  hueApi.setLightState(BEDROOM_3, S_PURPLE);
@41.93b7.75  hueApi.setLightState(BEDROOM_4, S_GREEN);

//... and drop!
@45.76b0  hueApi.setGroupLightState(BEDROOM_GROUP, S_OFF);

@48  hueApi.setGroupLightState(BEDROOM_GROUP, S_ON.copy().transition(BAR_DURATION * 1000));
@50  hueApi.setGroupLightState(BEDROOM_GROUP, S_COLORLOOP);

//TODO: The rest!