# UI and HUD

## UI Styles

UI Styles are different themes for the HUD of players. 

Icons for those themes are stored in `icons/mob/screen/<style>.dmi`

You can register a new style by creating a new dmi file in this folder and registering it inside `code\modules\client\ui_style.dm`

## HUD

HUD is created in `code/_onclick/hud/hud.dm`. Each mob type has a different hud inheriting from `/datum/hud`.