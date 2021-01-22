#include <SDL2/SDL.h>
#include <SDL2/SDL_mixer.h>

int main(int argc, char* argv[]){
	//sdl
    	SDL_Init(SDL_INIT_AUDIO);
    	Mix_Init(MIX_INIT_MP3);
    	Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, MIX_DEFAULT_CHANNELS, 4096);
    	Mix_Music *audio = Mix_LoadMUS("/usr/local/share/justanormalsound.mp3");	
        Mix_PlayMusic(audio, 1);
	while ( Mix_PlayingMusic() ) ;
	return 0;
}
