# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
seahawk.points <- c(36, 10, 12, 3)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
opponent.points <- c(6, 9, 10, 9)

# Combine your two vectors into a dataframe
game.points <- data.frame(seahawk.points, opponent.points)

# Create a new column "diff" that is the difference in points
game.points$diff <- c(abs(seahawk.points - opponent.points))

# Create a new column "won" which is TRUE if the Seahawks wom
game.points$won <- c(seahawk.points > opponent.points)

# Create a vector of the opponents
opponent.names <- c('Cardinal', 'Vikings', 'Dolphins', 'Rams')

# Assign your dataframe rownames of their opponents
rownames(game.points) <- opponent.names