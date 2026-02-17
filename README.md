# Musify

[![Author - Rehan Khan](https://img.shields.io/badge/Author-Rehan%20Khan-blue)](https://rehankhan.netlify.app/) [![Author - Hatim Anandwala](https://img.shields.io/badge/Author-Hatim%20Anandwala-blue)](https://github.com/Hatim2904) [![Author - Anas Baig](https://img.shields.io/badge/Author-Anas%20Baig-blue)](https://github.com/anasbaig10) [![Author - Khan Tausif](https://img.shields.io/badge/Author-Khan%20Tausif-blue)]()

A Spotify-inspired music streaming web application built with PHP, MySQL, and jQuery. Features user authentication, music playback, search, playlist management, and a responsive UI.

## Features

- User registration and login with session-based authentication
- Browse albums and artists
- Search across songs, artists, and albums
- Music player with play, pause, next, previous, shuffle, and repeat controls
- Volume control and progress bar with seeking
- Create, manage, and delete custom playlists
- Add/remove songs from playlists
- Track play count tracking
- User profile management (update email/password)
- AJAX-powered dynamic content loading

## Tech Stack

- **Backend:** PHP 7.3+
- **Database:** MySQL/MariaDB
- **Frontend:** HTML5, CSS3, JavaScript (jQuery 3.4.1)
- **Audio:** HTML5 Audio API
- **Server:** Apache (XAMPP)

## Project Structure

```
Musify/
├── index.php                  # Entry point (redirects to browse)
├── register.php               # Login & registration page
├── browse.php                 # Browse albums
├── search.php                 # Search songs, artists, albums
├── album.php                  # Album details & tracks
├── artist.php                 # Artist details & top songs
├── playlist.php               # Playlist details & management
├── yourMusic.php              # User's saved music
├── settings.php               # User settings
├── spotify.sql                # Database schema & sample data
├── assets/
│   ├── css/                   # Stylesheets
│   ├── js/
│   │   ├── script.js          # Main app logic & player controls
│   │   └── register.js        # Auth form handling
│   ├── music/                 # MP3 audio files
│   └── images/                # Album artwork, icons, profile pics
└── includes/
    ├── config.php             # Database connection & session config
    ├── header.php             # HTML header
    ├── navBarContainer.php    # Sidebar navigation
    ├── nowPlayingBar.php      # Music player UI
    ├── classes/               # OOP models
    │   ├── User.php
    │   ├── Song.php
    │   ├── Album.php
    │   ├── Artist.php
    │   ├── Playlist.php
    │   └── Account.php
    └── handlers/
        ├── login-handler.php
        ├── register-handler.php
        └── ajax/              # AJAX endpoints for player & playlist ops
```

## Installation & Setup

### Prerequisites

- [XAMPP](https://www.apachefriends.org/) (Apache + MySQL + PHP)

### Steps

1. Clone the repository into your XAMPP `htdocs` folder

   ```sh
   cd /path/to/xampp/htdocs
   git clone https://github.com/khan-rehan/Musify.git
   ```

2. Start Apache and MySQL from the XAMPP control panel

3. Import the database

   - Open `http://localhost/phpmyadmin/` in your browser
   - Click **Import** and upload the `spotify.sql` file from the project root
   - Click **Go** to create the database with sample data

4. Open the app

   Navigate to `http://localhost/Musify/` in your browser. Register a new account or log in with the sample credentials.

## Screenshots

**Login**

<img width="1390" alt="Login" src="https://user-images.githubusercontent.com/42263217/79463306-4ac0b300-8016-11ea-830b-f631df6844a3.png">

**Main Page**

<img width="1393" alt="Main Page" src="https://user-images.githubusercontent.com/42263217/79463314-501dfd80-8016-11ea-9805-25ffadbb7df1.png">

**Search**

<img width="1322" alt="Search" src="https://user-images.githubusercontent.com/42263217/79463326-544a1b00-8016-11ea-846b-daed79ad0ff4.png">

**Album**

<img width="1319" alt="Album" src="https://user-images.githubusercontent.com/42263217/79463335-57dda200-8016-11ea-919a-31c1382e0f41.png">

**Playlist**

<img width="1313" alt="Playlist" src="https://user-images.githubusercontent.com/42263217/79463344-5ad89280-8016-11ea-8221-1e091092ebc0.png">

**Settings**

<img width="1307" alt="Settings" src="https://user-images.githubusercontent.com/42263217/79463349-5ca25600-8016-11ea-975c-6f2ea2deba2b.png">

## Demo

![Spotify Clone Demo](spotify_clone.gif)
