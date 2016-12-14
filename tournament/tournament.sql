-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

--To store the players.
create table players(
    name TEXT,
    id SERIAL PRIMARY KEY
);

--To store the outcome of the matches played.
create table matches(
    winner INTEGER references players(id),
    loser INTEGER references players(id),
    id SERIAL PRIMARY KEY
);

--Selects the players, ordered by the number of matches they have won (also includes total matches played).
create view standings AS
        SELECT players.id AS id, players.name AS name, count(matches.winner) AS wins,
        --creates a column called 'total', scanning both the 'winner' and 'loser' column of matches (with an OR)
        (SELECT count(*) AS total FROM matches WHERE loser = players.id OR winner = players.id)
        --Selects ALL rows from players (left) PLUS any rows from matches (right) where the id = the player id
        FROM players LEFT JOIN matches
        on matches.winner = players.id
        GROUP BY players.id
        ORDER BY wins DESC;