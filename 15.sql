/*Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.*/

SELECT COUNT(Track.TrackId), Playlist.Name From Track
JOIN PlaylistTrack ON Track.TrackId == PlaylistTrack.TrackId
JOIN Playlist ON PlaylistTrack.PlaylistId == Playlist.PlaylistId
GROUP BY PlaylistTrack.PlaylistId;
