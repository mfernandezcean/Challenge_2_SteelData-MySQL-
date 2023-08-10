# Challenge_2_SteelData-MySQL-
Challenge 2 - Esports Tournament


[Link to Steel Data Challenge](https://steeldata.org.uk/sql2.html)

**QUESTIONS:**

1. What are the names of the players whose salary is greater than 100,000?
2. What is the team name of the player with player_id = 3?
3. What is the total number of players in each team?
4. What is the team name and captain name of the team with team_id = 2?
5. What are the player names and their roles in the team with team_id = 1?
6. What are the team names and the number of matches they have won?
7. What is the average salary of players in the teams with country 'USA'?
8. Which team won the most matches?
9. What are the team names and the number of players in each team whose salary is greater than 100,000?
10. What is the date and the score of the match with match_id = 3?
---


![werwerwerwerwer](https://github.com/mfernandezcean/Challenge_2_SteelData-MySQL-/assets/105746149/36cf4176-ccd8-4ed1-bbca-0288133bb3e0)

**ANSWERS:**

1. What are the names of the players whose salary is greater than 100,000?


```
SELECT 
  player_name,
  salary

FROM players
WHERE salary > 100000
ORDER BY 2 DESC;
```
![fqwwqfqwf](https://github.com/mfernandezcean/Challenge_2_SteelData-MySQL-/assets/105746149/f061fff7-b82b-4e45-b234-6c46ffa3ac53)
--

2. What is the team name of the player with player_id = 3?

```
SELECT
  p.player_id,
  p.team_id,
  t.team_name

FROM teams t
LEFT JOIN players p
ON t.team_id = p.team_id
WHERE p.player_id = 3;
```

![wqdwdqwqdwqdqwd](https://github.com/mfernandezcean/Challenge_2_SteelData-MySQL-/assets/105746149/0a61a1eb-19ef-454d-99d3-029b45c349a6)
--

3. What is the total number of players in each team?
```
SELECT 
  team_id,
  COUNT(*) AS Number_of_Players

FROM players
GROUP BY 1;
```
![fef23](https://github.com/mfernandezcean/Challenge_2_SteelData-MySQL-/assets/105746149/6d4178d7-d294-4f12-a641-ad4e1686ea98)
--
4. What is the team name and captain name of the team with team_id = 2?
```
SELECT 
  t.team_name,
  t.captain_id,
  p.player_id,
  p.player_name as Captain_Name

FROM teams t
LEFT JOIN players p
ON t.team_id = p.team_id
WHERE p.team_id = 2 AND p.player_id = 2;
```

![wdqwqdqwd](https://github.com/mfernandezcean/Challenge_2_SteelData-MySQL-/assets/105746149/a5328826-5da0-42f9-b4e2-184b0ce053d5)
--

5. What are the player names and their roles in the team with team_id = 1?
```
SELECT 
  player_name,
  role,
  team_id
FROM players 
WHERE team_id = 1
```

![f32f32f32f](https://github.com/mfernandezcean/Challenge_2_SteelData-MySQL-/assets/105746149/60723de5-d48c-44a0-b721-9d1bc262223b)
