# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

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
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

new_studio1 = Studio.new
new_studio1["name"] = "Warner Bros."
new_studio1.save

new_movie1 = Movie.new
new_movie1["title"] = "Batman Begins"
new_movie1["year_released"] = "2005"
new_movie1["rated"] = "PG-13"
new_movie1["studio"] = new_studio1.name
new_movie1.save

new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight"
new_movie2["year_released"] = "2008"
new_movie2["rated"] = "PG-13"
new_movie2["studio"] = new_studio1.name
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises"
new_movie3["year_released"] = "2012"
new_movie3["rated"] = "PG-13"
new_movie3["studio"] = new_studio1.name
new_movie3.save

new_actor1 = Actor.new
new_actor1["name"] = "Christian Bale"
new_actor1.save

new_actor2 = Actor.new
new_actor2["name"] = "Michael Caine"
new_actor2.save

new_actor3 = Actor.new
new_actor3["name"] = "Liam Neeson"
new_actor3.save

new_actor4 = Actor.new
new_actor4["name"] = "Katie Holmes"
new_actor4.save

new_actor5 = Actor.new
new_actor5["name"] = "Gary Oldman"
new_actor5.save

new_actor6 = Actor.new
new_actor6["name"] = "Heath Ledger"
new_actor6.save

new_actor7 = Actor.new
new_actor7["name"] = "Aaron Eckhart"
new_actor7.save

new_actor8 = Actor.new
new_actor8["name"] = "Maggie Gyllenhaal"
new_actor8.save

new_actor9 = Actor.new
new_actor9["name"] = "Tom Hardy"
new_actor9.save

new_actor10 = Actor.new
new_actor10["name"] = "Joseph Gordon-Levitt"
new_actor10.save

new_actor11 = Actor.new
new_actor11["name"] = "Anne Hathaway"
new_actor11.save

new_role11 = Role.new
new_role11["movie"] = new_movie1.title
new_role11["actor"] = new_actor1.name
new_role11["character_name"] = "Bruce Wayne"
new_role11.save

new_role12 = Role.new
new_role12["movie"] = new_movie1.title
new_role12["actor"] = new_actor2.name
new_role12["character_name"] = "Alfred"
new_role12.save

new_role13 = Role.new
new_role13["movie"] = new_movie1.title
new_role13["actor"] = new_actor3.name
new_role13["character_name"] = "Ra's Al Ghul"
new_role13.save

new_role14 = Role.new
new_role14["movie"] = new_movie1.title
new_role14["actor"] = new_actor4.name
new_role14["character_name"] = "Rachel Dawes"
new_role14.save

new_role15 = Role.new
new_role15["movie"] = new_movie1.title
new_role15["actor"] = new_actor5.name
new_role15["character_name"] = "Commissioner Gordon"
new_role15.save

new_role21 = Role.new
new_role21["movie"] = new_movie2.title
new_role21["actor"] = new_actor1.name
new_role21["character_name"] = "Bruce Wayne"
new_role21.save

new_role22 = Role.new
new_role22["movie"] = new_movie2.title
new_role22["actor"] = new_actor6.name
new_role22["character_name"] = "Joker"
new_role22.save

new_role23 = Role.new
new_role23["movie"] = new_movie2.title
new_role23["actor"] = new_actor7.name
new_role23["character_name"] = "Harvey Dent"
new_role23.save

new_role24 = Role.new
new_role24["movie"] = new_movie2.title
new_role24["actor"] = new_actor2.name
new_role24["character_name"] = "Alfred"
new_role24.save

new_role25 = Role.new
new_role25["movie"] = new_movie2.title
new_role25["actor"] = new_actor8.name
new_role25["character_name"] = "Rachel Dawes"
new_role25.save

new_role31 = Role.new
new_role31["movie"] = new_movie3.title
new_role31["actor"] = new_actor1.name
new_role31["character_name"] = "Bruce Wayne"
new_role31.save

new_role32 = Role.new
new_role32["movie"] = new_movie3.title
new_role32["actor"] = new_actor5.name
new_role32["character_name"] = "Commissioner Gordon"
new_role32.save

new_role33 = Role.new
new_role33["movie"] = new_movie3.title
new_role33["actor"] = new_actor9.name
new_role33["character_name"] = "Bane"
new_role33.save

new_role34 = Role.new
new_role34["movie"] = new_movie3.title
new_role34["actor"] = new_actor10.name
new_role34["character_name"] = "John Blake"
new_role34.save

new_role35 = Role.new
new_role35["movie"] = new_movie3.title
new_role35["actor"] = new_actor11.name
new_role35["character_name"] = "Selina Kyle"
new_role35.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

for movie in Movie.all
    puts "#{movie.title} #{movie.year_released} #{movie.rated} #{movie.studio}"
end

#puts Studio.find{1}.name

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

for role in Role.all
    puts "#{role.movie} #{role.actor} #{role.character_name}"
end
