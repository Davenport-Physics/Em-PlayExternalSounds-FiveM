--[[
   
   Emma Davenport <2018>
   
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
   
   * Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above
     copyright notice, this list of conditions and the following disclaimer
     in the documentation and/or other materials provided with the
     distribution.
   * Neither the name of the  nor the names of its
     contributors may be used to endorse or promote products derived from
     this software without specific prior written permission.
   
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
   
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

    "html/sounds/AltJobs/SandyA1.mp3",
    "html/sounds/AltJobs/SandyBM1.mp3",
    "html/sounds/AltJobs/SandyD1.mp3"
}

export 'PlaySound'
export 'StopSound'
