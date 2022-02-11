# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Cast.destroy_all

# Generate models and tables, according to the domain model
# rails generate model movie
# rails generate model cast
# rails db:migrate

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
movie1 = Movie.new
movie1.title = "Batman Begins"
movie1.year = "2005"
movie1.rating = "PG-13"
movie1.director = "Christopher Nolan"
movie1.save

movie2 = Movie.new
movie2.title = "The Dark Knight"
movie2.year = "2008"
movie2.rating = "PG-13"
movie2.director = "Christopher Nolan"
movie2.save

movie3 = Movie.new
movie3.title = "The Dark Knight Rises"
movie3.year = "2012"
movie3.rating = "PG-13"
movie3.director = "Christopher Nolan"
movie3.save

cast1 = Cast.new
cast1.title = "Batman Begins"
cast1.actor = "Christan Bale"
cast1.character = "Bruce Wayne"
cast1.save

cast2 = Cast.new
cast2.title = "Batman Begins"
cast2.actor = "Michael Caine"
cast2.character = "Alfred"
cast2.save

cast3 = Cast.new
cast3.title = "Batman Begins"
cast3.actor = "Liam Neeson"
cast3.character = "Ra's Al Ghul"
cast3.save

cast4 = Cast.new
cast4.title = "Batman Begins"
cast4.actor = "Katie Holmes"
cast4.character = "Rachel Dawes"
cast4.save

cast5 = Cast.new
cast5.title = "Batman Begins"
cast5.actor = "Gary Oldman"
cast5.character = "Commissioner Gordon"
cast5.save

cast6 = Cast.new
cast6.title = "The Dark Knight"
cast6.actor = "Christian Bale"
cast6.character = "Bruce Wayne"
cast6.save

cast7 = Cast.new
cast7.title = "The Dark Knight"
cast7.actor = "Heath Ledger"
cast7.character = "Joker"
cast7.save

cast8 = Cast.new
cast8.title = "The Dark Knight"
cast8.actor = "Aaron Eckhart"
cast8.character = "Harvey Dent"
cast8.save

cast9 = Cast.new
cast9.title = "The Dark Knight"
cast9.actor = "Michael Caine"
cast9.character = "Alfred"
cast9.save

cast10 = Cast.new
cast10.title = "The Dark Knight"
cast10.actor = "Maggie Gyllenhaal"
cast10.character = "Rachel Dawes"
cast10.save

cast11 = Cast.new
cast11.title = "The Dark Knight Rises"
cast11.actor = "Christian Bale"
cast11.character = "Bruce Wayne"
cast11.save

cast12 = Cast.new
cast12.title = "The Dark Knight Rises"
cast12.actor = "Gary Oldman"
cast12.character = "Commissioner Gordon"
cast12.save

cast13 = Cast.new
cast13.title = "The Dark Knight Rises"
cast13.actor = "Tom Hardy"
cast13.character = "Bane"
cast13.save

cast14 = Cast.new
cast14.title = "The Dark Knight Rises"
cast14.actor = "Joseph Gordon-Levitt"
cast14.character = "John Blake"
cast14.save

cast15 = Cast.new
cast15.title = "The Dark Knight Rises"
cast15.actor = "Anne Hathaway"
cast15.character = "Selina Kyle"
cast15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
#y = Movie.all.count
#x = 0

#for x in Movie
    #puts "#{Movie.title} #{Movie.year}"
#end

puts Movie.all

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
puts Cast.all
