#Determines the current directory/folder your current R Session is using
getwd()

#List all the objects in your local workspace, it dowa the Data and Variables
#Based on what I did previous, these files are the BitcoinData and the arithmetic variable
#"BitcoinData" "my_div"      "my_sqrt"     "x"           "y"           "z"       
ls()

#this will add a new variable, A, into the workspace
a<-9

#This will show what is in the folder directory, because I haven't change the directory just yet, it would show up as
#BitcoinDataR.R and HistoricalData.csv 
dir()

#?list.files help directory, args() to check what arguments a function will take
#args(list.files) whill check what arguments list.files() will take


#Assigns Current directory into old.dir, this can be seen on the work space to the right when using RStudio
old.dir <- getwd()

#This will create a directory called testdir into the current directory
#remember the quotes
dir.create("testdir")

#Sets the current directory into tesdir, don't forget the quotes!
setwd("testdir")

#creates an .R filed called mytest
file.create("mytest.R")

#check to see if "mytest.R" is in the directory
dir()

#used to see if a file exists.
file.exists("mytest.R")

#checks the file data information 
file.info("mytest.R")

#rename a file from A to B
file.rename("mytest.R", "mytest2.R")

#Copy a File to another name
file.copy("mytest2.R", "mytest3.R")

#relative path of mytest3.R
file.path("mytest3.R")

#create file paths indepedent of where our directory is.
file.path('folder1', 'folder2')

#Create a directory in the current working directory called "testdir2" and a subdirectory for it called "testdir3", all
#in one command by using dir.create() and file.path().
dir.create(file.path("testdir2", "testdir3"), recursive = TRUE)

#go back to old directory, we set the variable a long time ago
setwd(old.dir)