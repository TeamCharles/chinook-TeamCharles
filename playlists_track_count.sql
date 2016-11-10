SELECT P.Name AS "Playlist", COUNT(T.TrackId) AS "Number of Tracks"
FROM Playlist AS P
JOIN PlaylistTrack AS PT
	ON PT.PlaylistId = P.PlaylistId
JOIN Track as T
	ON T.TrackId = PT.TrackId
GROUP BY P.PlaylistId