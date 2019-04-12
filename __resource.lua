--[[
   
MIT License

Copyright (c) 2019 Emma Davenport

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
   
]]--

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page 'html/index.html'

client_scripts {'PlayExternalSounds_client.lua'}
server_scripts {'PlayExternalSounds_server.lua'}

files {
    "html/index.html",
    "html/PlayExternalSounds.js",

    "html/sounds/FoodSpecialSounds/FartSound.mp3",
    "html/sounds/FoodSpecialSounds/HeartBeat.mp3",
    "html/sounds/FoodSpecialSounds/vomit.mp3",
    "html/sounds/FoodSpecialSounds/wet-fart.mp3",
    "html/sounds/FoodSpecialSounds/snore.mp3",

    "html/sounds/PhoneSounds/Notification.mp3",
    "html/sounds/PhoneSounds/Ringtone.mp3",
    "html/sounds/PhoneSounds/OutgoingCall.mp3",

    "html/sounds/htNotifySounds/FemalePanting.mp3",
    "html/sounds/htNotifySounds/MalePanting.mp3",
    "html/sounds/htNotifySounds/StomachGurgle.mp3",

    "html/sounds/PrisonJobs/drilling.mp3",
    "html/sounds/AltJobs/airport-liver.mp3",
    "html/sounds/AltJobs/airport-teeth.mp3",
    "html/sounds/AltJobs/airport-bones.mp3",
    "html/sounds/AltJobs/blackmarket-brain.mp3",
    "html/sounds/AltJobs/blackmarket-heart.mp3",
    "html/sounds/AltJobs/blackmarket-bones.mp3",
    "html/sounds/AltJobs/docks-chemicals.mp3",
    "html/sounds/AltJobs/docks-juice.mp3",
    "html/sounds/AltJobs/docks-fluids.mp3",
    "html/sounds/AltJobs/humane-juice.mp3",
    "html/sounds/AltJobs/humanelabs-brain.mp3",
    "html/sounds/AltJobs/humanelabs-chemical.mp3",
    "html/sounds/AltJobs/nudistcolony-bones.mp3",
    "html/sounds/AltJobs/nudistcolony-juice.mp3",
    "html/sounds/AltJobs/nudist-teeth.mp3",
    "html/sounds/AltJobs/butcher-brain.mp3",
    "html/sounds/AltJobs/butcher-juice.mp3",
    "html/sounds/AltJobs/butcher-liver.mp3",

    "html/sounds/AltJobs/airport-bones-end.mp3",
    "html/sounds/AltJobs/airport-teeth-end.mp3",
    "html/sounds/AltJobs/airport-liver-end.mp3",
    "html/sounds/AltJobs/docks-fluid-end.mp3",
    "html/sounds/AltJobs/dock-chemicals-end.mp3",
    "html/sounds/AltJobs/dock-juice-end.mp3",
    "html/sounds/AltJobs/blackmarket-bones-ending.mp3",
    "html/sounds/AltJobs/blackmarket-heart-ending.mp3",
    "html/sounds/AltJobs/blackmarket-brain-ending.mp3",
    "html/sounds/AltJobs/nudist-juice-ending.mp3",
    "html/sounds/AltJobs/nudist-teeth-ending.mp3",
    "html/sounds/AltJobs/nudist-bone-ending.mp3",
    "html/sounds/AltJobs/humane-brain-ending.mp3",
    "html/sounds/AltJobs/humane-chemical-ending.mp3",
    "html/sounds/AltJobs/humane-juice-ending.mp3",
    "html/sounds/AltJobs/butcher-brain-end.mp3",
    "html/sounds/AltJobs/butcher-juice-end.mp3",
    "html/sounds/AltJobs/butcher-liver-end.mp3",
}

export 'PlaySound'
export 'StopSound'
