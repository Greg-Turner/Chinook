-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
SELECT (Playlist.Name) AS "Playlist Name", COUNT(PlaylistTrack.PlaylistId) AS "Number of Tracks"
FROM Playlist, PlaylistTrack
WHERE Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY (PlaylistTrack.PlaylistId);