--[[

   Emma Davenport <2018-2019>

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

--[[

    Everything in this file is related to hunger and thirst notifications. A Player
    will hear themselves pant if thirsty or their stomach growl if hungry.

 --]]

function PlaySound(soundfile, volume)

  local audio = {type = "play_sound", soundfile = soundfile, volume = volume}
  SendNUIMessage({audio = audio})

end

function StopSound(soundfile)

  local audio = {type = "stop_sound", soundfile = soundfile}
  SendNUIMessage({audio = audio})

end

local function CalculateAudioVolumeForBystanders(audio_file, audio_vol_base, audio_x, audio_y, audio_z)

  local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
  local volume  = audio_vol_base * math.exp(-1 * .25 * math.sqrt((x - audio_x) ^ 2 + (y - audio_y) ^ 2 + (z - audio_z) ^ 2))

  if volume < .1 then return end
  PlaySound(audio_file, volume)

end

RegisterNetEvent("PlayAudioForBystanders")
AddEventHandler("PlayAudioForBystanders", CalculateAudioVolumeForBystanders)

local BASE_VOLUME = .3
local function PlaySoundForEveryoneInVicinity(audio_file)

  local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
  TriggerServerEvent("StartClientAudioForBystanders", audio_file, BASE_VOLUME, x, y, z)

end

RegisterNetEvent("PlaySoundForEveryoneInVicinity")
AddEventHandler("PlaySoundForEveryoneInVicinity", PlaySoundForEveryoneInVicinity)
