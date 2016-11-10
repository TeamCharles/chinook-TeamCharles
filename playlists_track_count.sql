SELECT P.Name AS "Playlist Name",
COUNT(PT.PlaylistId) AS "Total Tracks"
FROM Playlist AS P
JOIN PlaylistTrack AS PT
ON P.PlaylistId = PT.PlayListId
GROUP BY P.PlaylistId