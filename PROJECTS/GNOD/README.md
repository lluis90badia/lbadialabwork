# GNOD Project (web scraping)

By [Lluis Badia Planes](https://github.com/lluis90badia), 4/3/2022

## Purpose

The purpose of this project is to recommend songs from two playlists based on the name of the song introduced by the user.

## Steps ([notebook](https://github.com/lluis90badia/lbadialabwork/blob/main/PROJECTS/GNOD/GNOD_PROJECT.ipynb))

### The Hot 100 (Billboard)

- The first step has been doing web scrapping to get the data from the name of the track and its artist.
- That data was converted into a data frame.
- After that, we extracted the audio features of each song and scaled them to create clusters with the following purpose to recommend songs based on clusters that are equal with the user input song.

### Playlist from Spotify

A playlist from Spotify has been selected with more than 2,600 songs to have a wider range of tracks to make better recommendations. We followed the same steps from the Hot 100 list to get a data frame for those songs.

## Conclusion

Unfortunately, it could not be possible the idea of recommend songs based on clusters. Therefore, the program only recommends songs based on the track name introduced by the user.
