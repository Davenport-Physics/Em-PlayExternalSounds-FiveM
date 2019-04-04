class AudioFile {

    constructor(soundfile, volume) {

        this.audio        = new Audio(soundfile);
        this.audio_name   = soundfile;
        this.audio.volume = volume;

    }

    PlayAudio() {

        this.StopAudio();
        this.audio.play();

    }

    StopAudio() {

        this.audio.pause();
        this.audio.currentTime = 0;

    }

    GetAudioName() {

        return this.audio_name;

    }

}

var AudioFiles = [];

function StartAudioFile(soundfile, volume) {

    var i;
    var found_audio_obj = false;
    for (i = 0; i < AudioFiles.length;i++) {
        if (AudioFiles[i].GetAudioName() == soundfile) {
            AudioFiles[i].PlayAudio()
            found_audio_obj = true;
            break;
        }
    }
    if (found_audio_obj == false) {

        AudioFiles.push(new AudioFile(soundfile, volume));
        AudioFiles[AudioFiles.length - 1].PlayAudio();

    }

}

function StopAudioFile(soundfile) {

    for (i = 0; i < AudioFiles.length;i++) {
        if (AudioFiles[i].audio_name == soundfile) {
            AudioFiles[i].StopAudio();
        }
    }

}

$(function() {
	window.addEventListener("message", function(event){
		if (event.data.audio.type == "play_sound") {
            StartAudioFile(event.data.audio.soundfile, event.data.audio.volume);
		} else if (event.data.audio.type == "stop_sound") {
            StopAudioFile(event.data.audio.soundfile);
        }
	});
});
