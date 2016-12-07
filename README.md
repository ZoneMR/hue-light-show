# hue-light-show
A simple scripting engine for creating light shows synchronised to music. Works with Phillips Hue out of the box, with music played over AirPlay. Could be easily adapted to other devices.

# Usage
1. Place songs/videos in an "assets" folder.
2. Place light show scripts in the "scripts" folder (look at Demo.ls)
3. Run "node index.js scripts/Demo.ls"

# Light Script Format
This format is still evolving, but is based on pure JavaScript with some basic extensions to allow commands to be executed at specific times.

eg.
```
AIRPLAY_TARGET = "Bedroom"; //Enter the name of your Apple TV or AirPlay speakers
BEAT_DURATION = 38.11 / 80; //Measure this for your song

//Define Hue Light + Group IDs
BEDROOM_GROUP = 6;
BEDROOM_1 = 20;
BEDROOM_2 = 19;
BEDROOM_3 = 21;
BEDROOM_4 = 22;
...

//Define the Show!
@0.03b0  hueApi.setLightState(BEDROOM_1, S_PURPLE);
@0.03b1  hueApi.setLightState(BEDROOM_2, S_GREEN);
@0.03b2  hueApi.setLightState(BEDROOM_3, S_PURPLE);
@0.03b3  hueApi.setLightState(BEDROOM_4, S_GREEN);

@2.00b4  console.log("executed 2 seconds into the song + 4 * BEAT_DURATION");
```
