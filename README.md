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
var BEAT_DURATION = 0.2;

@2.00b4 console.log("executed 2 seconds into the song + 4 * BEAT_DURATION");
```
