# netflix-show-scores-project
Netflix Titles Analysis Project
Project Overview
This project analyzes Netflix's catalog of TV shows and movies using SQL queries to gain insights into various aspects of the dataset. The data includes information about each title, such as genre, release year, IMDb scores, duration, director, and more. Additionally, a user ratings table is included to understand viewer feedback.

Key Objectives:
Identify popular content trends based on IMDb scores, genres, and viewer ratings.
Find top-rated shows or movies by decade, genre, or director.
Examine which types of content generate the most engagement.
Use SQL concepts such as joins, aggregation, filtering, and grouping to extract meaningful insights.
Table of Contents
Project Overview
Data Structure
Queries Included
Setup Instructions
Usage
License
Data Structure
The project contains two main tables:

Netflix_TV_Shows_and_Movies: Stores data about Netflix titles, including the title, release year, IMDb score, director, genre, and duration.
ratings: Contains user-generated ratings for each show or movie, allowing us to analyze popularity and viewer engagement.
Schema
Netflix_TV_Shows_and_Movies

show_id: Unique identifier for each title.
title: Title of the show or movie.
director: Director of the show or movie.
cast: Cast members.
country: Country of origin.
date_added: Date the title was added to Netflix.
release_year: Year the title was released.
rating: Content rating (e.g., PG, R).
duration: Duration in minutes for movies or number of seasons for shows.
listed_in: Genres of the title.
description: Brief description of the title.
imdb_score: IMDb rating score.
imdb_votes: Number of IMDb votes.
ratings

rating_id: Unique identifier for each rating.
show_id: Foreign key referencing Netflix_TV_Shows_and_Movies.
user_id: Unique identifier for the user who rated the title.
rating: User rating from 1 to 5.
Queries Included
This project includes various SQL queries for analysis, including:

Top Rated Titles: Finds the show or movie with the most IMDb votes.
Best Kids' Movie: Identifies the highest-rated kids’ movie by IMDb score.
Longest Older Movie: Retrieves the longest movie released between 1970 and 1990.
Most Popular Genre: Determines the genre with the highest number of titles.
Average IMDb Score by Decade: Calculates average IMDb scores for movies grouped by decade.
Highest-Rated Movie by Each Director: Uses a join to identify each director's top-rated movie.
Setup Instructions
Clone the repository:



Import the Netflix titles dataset and ratings data into a SQLite database named netflix_data.db.
Use CREATE TABLE statements in the project files to set up the schema for Netflix_TV_Shows_and_Movies and ratings tables.
Database Connection:

Use an SQL client (e.g., DBeaver, SQLite Browser) or command-line SQLite to connect to netflix_data.db.
Run the queries in the project file to analyze the data.
Usage
SQL Clients: Load netflix_data.db in your preferred SQL client to run the queries.
Running Queries: Copy and paste individual SQL queries from the project to execute and view results.
Customization: Modify queries to explore additional trends or test different conditions, such as finding top genres by release year or identifying trends based on viewer ratings.
License
This project is open-source and available under the MIT License.
