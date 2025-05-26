function PlaySfx(_sound) {
	if (!audio_is_playing(_sound)) {
		audio_play_sound(_sound, 1, false);
	}
}

function PlaySfxLoop(_sound) {
	if (!audio_is_playing(_sound)) {
		audio_play_sound(_sound, 1, true);
	}
}

function StopSound(_sound) {
	if (audio_is_playing(_sound)) {
		audio_stop_sound(_sound);
	}
}