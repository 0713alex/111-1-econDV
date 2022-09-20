
#################### 1_basics_2 ####################

########## 4 Data Structure ##########

##### list #####

team_name <- "Chicago Bulls"

season <- "1995-1996"

wins_losses <- c(72, 10)

starting_lineup <- c("Ron Harper", "Michael Jordan", "Scottie Pippen", "Dennis Rodman", "Luc Longley")

is_champion <- TRUE

chicago_bulls <- c(team_name, season, wins_losses, starting_lineup, is_champion)

class(chicago_bulls)

###

chicago_bulls <- list(team_name, season, wins_losses, starting_lineup, is_champion)

class(chicago_bulls)

class(chicago_bulls[[1]])

class(chicago_bulls[[2]])

class(chicago_bulls[[3]])

class(chicago_bulls[[4]])

class(chicago_bulls[[5]])

###

chicago_bulls <- list(
  
  teamName = team_name,
  
  season = season,
  
  winLosses = wins_losses,
  
  startingLineup = starting_lineup,
  
  isChampion = is_champion
  
  )

chicago_bulls[[4]]

chicago_bulls[["startingLineup"]]

chicago_bulls$startingLineup

##### data.frame #####

team_name <- c("Chicago Bulls", "Golden State Warriors")

wins <- c(72, 73)

losses <- c(10, 9)

is_champion <- c(TRUE, FALSE)

season <- c("1995-96", "2015-16")

great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)

View(great_nba_teams)

str(great_nba_teams)


###

great_nba_teams[1, 1]

great_nba_teams[1, ]

great_nba_teams[, 1]

great_nba_teams[, "team_name"]

great_nba_teams$team_name

###

won_champion <- great_nba_teams$is_champion

great_nba_teams[won_champion,]

##### matrix #####

a <- matrix(1:6, nrow = 2)

a <- matrix(1:6, nrow = 2, byrow = TRUE)

a <- matrix(c(1, 3, 5, 2, 4, 6), nrow = 3)

dim(a)

# + - * / %*% t() solve() #

###

a[1, 1]

a[1, ]

a[, 1]

a[a > 1 & a < 6]

##### array #####

a <- array(1:24, dim = c(2, 3, 4))

dim(a)

###

a[, , 3]

a[1, , 3]

a[, 2, 3]

a[1, 2, 3]

##### factor #####

category <- c("teacher", "others", "student")

category_factor <- factor(category)

as.numeric(category_factor)

category <- c("graduate", "senior", "college")

category_factor <- factor(category, ordered = TRUE, levels = c("senior", "college", "graduate"))

as.numeric(category_factor)

##### data.frame (2) #####

a <- 101:1

b <- -50:50

c <- data.frame(a, b)

colnames(c) <- c("First", "Second")

c <- data.frame(First = a, Second = b)

names(c)

head(c, n=10)

tail(c, n=10)

##### list (2) #####

d <- list(c, 50:-50)

names(d) <- c("Dataframe", "Vector")

d <- list(Dataframe = c, Vector = 50:-50)

names(d)

########## 5 String Manipulation ##########

##### nchar #####

nchar("James")

##### toupper #####

toupper("James")

##### toupper #####

tolower("James")

##### trimws #####

trimws(" James", which = "left")

##### paste #####

paste("Let's meet online", "at 9 am,", "James.")

paste("Let's meet online", c("at 9 am,", "at 10 am,"), c("James.", "Jamie."))

##### sprintf #####

sprintf("Let's meet online at %.0f am, %s.", c(9, 10), c("James", "Jamie"))

##### substr #####

week <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")

substr(week, start = 1, stop = 3)

##### strsplit #####

path <- "C:/Users/James/Desktop"

strsplit(path, split = "/")

words <- "Learn R the easy way"

strsplit(words, split = " ")

##### grep #####

words <- c("Michael Jackson", "Michael Jordan", "Phil Jackson", "Larry Jordan")

grep(words, pattern = "Michael")

##### gsub #####

words <- "Let's meet online at 9 am, James."

gsub(words, pattern = "James", replacement = "Jamie")

gsub(words, pattern = ", James", replacement = "")

##### outer #####

patients <- paste("P", 1:4, sep = "")

treatments <- paste("T", 1:4, sep = "")

outer(patients, treatments, FUN = paste, sep = "-")

m <- outer(treatments, treatments, FUN = paste, sep = "-")

m[lower.tri(m, diag = TRUE)]

m[upper.tri(m, diag = TRUE)]
