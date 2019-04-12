# Em-PlayExternalSounds-FiveM

PlayExternalSounds is a sound server/plugin for FiveM. It's primary focus is the ability to play custom sounds both for just a single player and players within an area.

## API

<b>Exports</b>

`PlaySound(string sound_file, float volume)`

Plays a sound file, with a specified volume, for just the local client.

`StopSound(string sound_file)`

Stops a sound from playing for just the local client.

<b>Server Side Events</b>

`PlayAudioForBystanders(string sound_file, float base_volume, float x, float y, float z)`

Plays the sound file, with the specified base volume, for clients within the near vicinity of the position (x, y, z).

<b>Client Side Events</b>

`PlaySoundForEveryoneInVicinity(string sound_file)`


Plays a sound file, with the base volume of .3f, for clients within the near vicinity of the triggering local client.

## License

This software is licensed under the MIT license.