# Discord Music Bot 

A Docker based Discord music bot with a clean interface, and that is easy to set up and run yourself!

## Features
  * Easy to run
  * Fast loading of songs
  * No external keys needed (besides a Discord Bot token)
  * Smooth playback
  * Server-specific setup for the "DJ" role that can moderate the music
  * Clean and beautiful menus
  * Supports many sites, including Youtube, Soundcloud, and more
  * Supports many online radio/streams/livestreams
  * Supports local files
  * Playlist support (both web/youtube, and local)

## Supported sources and formats
JMusicBot supports all sources and formats supported by [lavaplayer](https://github.com/sedmelluq/lavaplayer#supported-formats):
### Sources
  * YouTube
  * SoundCloud
  * Bandcamp
  * Vimeo
  * Twitch streams
  * Local files
  * HTTP URLs
### Formats
  * MP3
  * FLAC
  * WAV
  * Matroska/WebM (AAC, Opus or Vorbis codecs)
  * MP4/M4A (AAC codec)
  * OGG streams (Opus, Vorbis and FLAC codecs)
  * AAC streams
  * Stream playlists (M3U and PLS)

## Steps to Build and Deploy
[![Build MusicBot Docker Image](https://github.com/Harshraj9812/HR-Bot-JMusicBot/actions/workflows/main.yml/badge.svg?branch=main&event=workflow_dispatch)](https://github.com/Harshraj9812/HR-Bot-JMusicBot/actions/workflows/main.yml)

### Build Using `Github Actions`
* Go to [Actions/Build MusicBot Docker Image](https://github.com/Harshraj9812/HR-Bot-JMusicBot/actions/workflows/main.yml)
* Click on `Run Workflow` >> Choose `main` branch 
* Give the latest version refer [here](https://github.com/jagrosh/MusicBot/releases) **[Ex - 0.3.9]**
* Click Run Workflow 
* Wait for Workflow Successful Completion

### Run using `Docker-compose`
* Provide you Bot Token in Environment Variable.
* Modify the Version as provided [while building](#build-using-github-actions) the Image time.

```
version: "3"
services:
  discord-bot:
    container_name: Discord-Hr-Music-bot
    restart: unless-stopped
    # Modify Version as per input[0.3.9]
    image: harshraj9812/hr-bot-jmusicbot:0.3.9
    labels:
      # This is for Watchtower to Ignore Updating this Image.
      - "com.centurylinklabs.watchtower.enable=false"
    environment:
      # Add your Bot TOken below
      - TOKEN=qwegaesw....
```

### Bot Commands

```
**Hr Music 🎸** commands:

`@Hr Music 🎸 about` - shows info about the bot
`@Hr Music 🎸 ping` - checks the bot's latency
`@Hr Music 🎸 settings` - shows the bots settings

  __Music__:

`@Hr Music 🎸 lyrics [song name]` - shows the lyrics of a song
`@Hr Music 🎸 nowplaying` - shows the song that is currently playing
`@Hr Music 🎸 play <title|URL|subcommand>` - plays the provided song
`@Hr Music 🎸 playlists` - shows the available playlists
`@Hr Music 🎸 queue [pagenum]` - shows the current queue
`@Hr Music 🎸 remove <position|ALL>` - removes a song from the queue
`@Hr Music 🎸 search <query>` - searches Youtube for a provided query
`@Hr Music 🎸 scsearch <query>` - searches Soundcloud for a provided query
`@Hr Music 🎸 shuffle` - shuffles songs you have added
`@Hr Music 🎸 skip` - votes to skip the current song

  __DJ__:

`@Hr Music 🎸 forceremove <user>` - removes all entries by a user from the queue
`@Hr Music 🎸 forceskip` - skips the current song
`@Hr Music 🎸 movetrack <from> <to>` - move a track in the current queue to a different position
`@Hr Music 🎸 pause` - pauses the current song
`@Hr Music 🎸 playnext <title|URL>` - plays a single song next
`@Hr Music 🎸 repeat [off|all|single]` - re-adds music to the queue when finished
`@Hr Music 🎸 skipto <position>` - skips to the specified song
`@Hr Music 🎸 stop` - stops the current song and clears the queue
`@Hr Music 🎸 volume [0-150]` - sets or shows volume

  __Admin__:

`@Hr Music 🎸 prefix <prefix|NONE>` - sets a server-specific prefix
`@Hr Music 🎸 setdj <rolename|NONE>` - sets the DJ role for certain music commands
`@Hr Music 🎸 setskip <0 - 100>` - sets a server-specific skip percentage
`@Hr Music 🎸 settc <channel|NONE>` - sets the text channel for music commands
`@Hr Music 🎸 setvc <channel|NONE>` - sets the voice channel for playing music

  __Owner__:

`@Hr Music 🎸 autoplaylist <name|NONE>` - sets the default playlist for the server
`@Hr Music 🎸 debug` - shows debug info

```

----
## 👨🏻‍💻 Creator - 
**Github - [Harsh Raj 🏆](https://github.com/Harshraj9812)**

### 🌐 Credits - 
**Github - [jagrosh/MusicBot](https://github.com/jagrosh/MusicBot)**

----

