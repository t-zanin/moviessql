SELECT DISTINCT p.name
FROM movies m
JOIN stars s1 ON m.id = s1.movie_id
JOIN stars s2 ON m.id = s2.movie_id
JOIN people p ON s1.person_id = p.id
JOIN people kb ON s2.person_id = kb.id
WHERE kb.name = 'Kevin Bacon' AND p.name != 'Kevin Bacon'
AND kb.birth = 1958;
