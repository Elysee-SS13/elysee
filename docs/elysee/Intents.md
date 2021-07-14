# Intents 

Fundamentally, intents are constants defined in `code/__defines/mobs.dm`

```
#define I_HELP		"help"
#define I_DISARM	"disarm"
#define I_GRAB		"grab"
#define I_HURT		"harm"
```

Then, each object checks for a mob's intent in its code in order to do different actions depending on the intent. In theory, it would be easy to implement a new intent. 

## UI

The intent UI is defined in `code/_onclick/hud/screen_objects.dm` in the /obj/screen/intent object.

Initially how it worked was that you had a 32x32 sprite with all four intents displayed, and the game checked the position of the mouse in that area. It is impractical because the icons are so small (16x16, while the minimum recommended button size is 24).

I'm currently replacing intents with a cycling system: click on an intent to go to the next one, and ctrl+click to go to the previous one