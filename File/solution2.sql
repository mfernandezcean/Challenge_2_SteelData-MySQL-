-- 1. What are the names of the players whose salary is greater than 100,000?

SELECT 
player_name,
salary
FROM players
WHERE salary > 100000
ORDER BY 2 DESC;

-- 2. What is the team name of the player with player_id = 3?

SELECT p.player_id,
p.team_id,
t.team_name
FROM teams t
LEFT JOIN players p
ON t.team_id = p.team_id
WHERE p.player_id = 3;

-- 3. What is the total number of players in each team?

SELECT 
team_id,
COUNT(*) AS Number_of_Players
FROM players
GROUP BY 1;

-- 4. What is the team name and captain name of the team with team_id = 2?

SELECT 
t.team_name,
t.captain_id,
p.player_id,
p.player_name as Captain_Name
FROM teams t
LEFT JOIN players p
ON t.team_id = p.team_id
WHERE p.team_id = 2 AND p.player_id = 2;

-- 5. What are the player names and their roles in the team with team_id = 1?

SELECT 
player_name,
role,
team_id
FROM players 
WHERE team_id = 1;

-- 6.What are the team names and the number of matches they have won?

SELECT 
t.team_name,
COUNT(m.match_id) AS Matches_won
FROM teams t
LEFT JOIN matches m
ON t.team_id = m.winner_id
GROUP BY 1
ORDER BY Matches_won DESC; 
 
-- 7. What is the average salary of players in the teams with country 'USA'?

SELECT 
t.team_name,
ROUND (AVG(p.salary), 0) AS Average_Salary

FROM teams t
LEFT JOIN players p
ON t.team_id = p.team_id
WHERE t.country = 'USA'
GROUP BY 1;

 -- 8. Which team won the most matches?

SELECT 
t.team_name,
COUNT(m.match_id) AS Matches_won
FROM teams t
LEFT JOIN matches m
ON t.team_id = m.winner_id
GROUP BY 1
ORDER BY Matches_won DESC
LIMIT 1;


-- 9. What are the team names and the number of players in each team whose salary is greater than 100,000?

SELECT
t.team_name, 
COUNT(p.player_name) AS 'Players_w_Salary>100k'

FROM players p
LEFT JOIN teams t
ON p.team_id = t.team_id
WHERE salary > 100000
GROUP BY 1
ORDER BY 2 DESC;

-- 10. What is the date and the score of the match with match_id = 3?

SELECT 
match_id,
match_date,
score_team1,
score_team2
FROM matches
WHERE match_id = 3;