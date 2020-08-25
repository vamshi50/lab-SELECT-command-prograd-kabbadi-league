## Progression


-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
    SELECT *FROM   TEAM ORDER  BY  NAME;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
   SELECT *FROM PLAYER WHERE name LIKE 's%' AND country!='southafrica' ORDER BY NAME DESC;
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
   SELECT event_no,clock_in_seconds FROM EVENT  ORDER BY event_no ASC; 
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
   SELECT event_no,raid_points,defending_points FROM EVENT WHERE (raid_points+defending_points) > = 3   ORDER BY event_no ASC;                                                                                                                               
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
     SELECT name,country FROM PLAYER WHERE country='india' OR country ='iran' ORDER BY name ASC;                                                                                              
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
     SELECT name,country FROM PLAYER WHERE country!='india' AND country! ='iran' ORDER BY name ASC;                                                                                              
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
     SELECT name FROM SKILL WHERE name LIKE 'Defend%' ORDER BY name ASC;                                                                                                                                                    
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
CREATE TABLE STADIUM
(
id INT,
stadiumnames VARCHAR(50)
);
insert into Stadium values(1,'ComplexStadium2');
insert into Stadium values(2,'StadiumComplex5');
     SELECT stadiumnames,id FROM STADIUM WHERE stadiumnames LIKE 'Complex%' ORDER BY stadiumnames ASC; 
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT winner_team_id,score from OUTCOME WHERE score<35 ORDER BY id ASC;                                                                                                                           
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
  SELECT *FROM GAME WHERE game_date BETWEEN to_date ( '2015-01-14', ' yyyy-mm-dd') AND to_date ( '2015-03-17', ' yyyy-mm-dd') ORDER BY id DESC;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT name FROM PLAYER WHERE ID IN(SELECT raider_id FROM EVENT) ORDER BY name ASC;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
SELECT event_no,raid_points,defending_points FROM EVENT WHERE ID IN(SELECT first_innings_id FROM GAME WHERE game_date='26/01/2020') ORDER BY  event_no ASC;                                                                                                                                                           
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT name FROM TEAM WHERE ID IN (SELECT winner_team_id FROM OUTCOME  WHERE ID IN(SELECT id FROM GAME WHERE game_date='09/03/2020'))ORDER BY name ASC;
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT name FROM PLAYER WHERE ID IN(SELECT player_of_match FROM OUTCOME WHERE ID IN(SELECT id FROM GAME WHERE game_date='09/03/2020'))ORDER BY ID DESC;
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT name FROM PLAYER WHERE  ID IN(SELECT name FROM SKILL WHERE name='ALL rounders')ORDER BY name ASC;
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
SELECT  stadium_name FROM VENUE WHERE  VENUEDATE=TO_DATE ('2020-03-09', 'YYYY-mm-dd');  
-- 17. **Write a query to display the Coach's name of the team `Iran`**
SELECT  *FROM TEAM where coach = 'Iran';
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
SELECT event_no,defending_points FROM EVENT WHERE name='Fazel Atrachali' ORDER BY event_no ASC;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
SELECT * FROM SKILL WHERE ID IN(SELECT winner_team_id FROM OUTCOME WHERE ID IN(SELECT ID FROM GAME WHERE game_date='17/03/2020'))ORDER BY NAME ASC;
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT name FROM GAME,OUTCOME,PLAYER WHERE game_date BETWEEN to_date('01-03-2020','dd-mm-YYYY') AND '31-03-2020' ORDER BY  NAME ASC;