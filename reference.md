
### base::cbind()

cbind(...) combines matrix-like\(^*\) objects by columns
\(^*\)vector, matrix or data.frame

```
N <- nrow(iris) ; y <- sample(1:2, N, replace=TRUE)
cbind(iris, y) [, 4:6]
    Petal.Width    Species y
1           0.2     setosa 2
2           0.2     setosa 2
```


# stats::D()


D(~expr, "x") computes the derivative of a function

```
f_dash <- deriv(~ x^3 + 2 * x, "x")  ; x <- 3
eval(f_dash)

[1] 33
attr(,"gradient")
      x
[1,] 29
```

# base::readLines()
	
readLines(con, n,...) reads n or all lines from 'con' often a file

```
readLines(paste(path, "/my_txt.txt", sep = ""))

"You know I am hungry" "Okay?" "Yes I'am"
```

Code
solve()
base
Solve linear equations systems
5x + y = 15
10x + 3y = 9
X <- matrix(c(5, 10, 1, 3), ncol = 2)
Y <- matrix(c(15, 9), ncol=1)
solve(X,Y)

[1,]   7.2
[2,] -21.0
	
Code
solve(X)
base
Invert X
X <- matrix(runif(9), ncol=3)
solve(X)

       [,1]   [,2]   [,3]
[1,] -10.64  42.67 -40.91
[2,]  -0.24  11.28 -14.40
[3,]   8.43 -36.01  36.74


Find the location of a "pkg" on the system
system.file(package="pkg")
system.file(="elisr")
[1] "/Library/Frameworks/R.framework/Versions/4.1/Resources/library/elisr"


t(X)
base
Calculate the transpose of X
X <- matrix(1:4, ncol=2) ; t(X)

     [,1] [,2]
[1,]    1    2
[2,]    3    4


Code
search()
base
Show me all my attached packages
search
[1] ".GlobalEnv"        "package:stats"   
[4] "package:grDevices" "package:utils"    
[7] "package:methods"   "Autoloads"         
Code
searchpaths()
base
Show me the locations of all my attached packages
searchpaths()
[2] "/Library/Frameworks/R.framework/Versions/4.1/Resources/library/stats"    
[3] "/Library/Frameworks/R.framework/Versions/4.1/Resources/library/graphics" 


Sys.Date()
Sow me the current system date
Sys.Date()
[1] "2022-03-16"
	
Code
Sys.chmod("file", mode)
base
Manipulate the permission set of a file
Sys.chmod("path", mode=0777)
	
Code
Sys.getenv()
base
Show me all my environment variables
Sys.getenv()
R_HISTFILE              /Users/steven/.R/Rhistory
R_HOME                  /Library/Frameworks/R.framework/Resources
Code
Sys.getlocale()
base
Show me my system locale
Sys.getlocale()
[1] "en_US.UTF-8"
	
Code
Sys.getpid()
base
Show me the PID of the RSession
Sys.getpid()
[1] 40413
	
Code
Sys.info()
base
Show me system, user & maschine info
Sys.info()
sysname "Darwin"
release "21.3.0"
nodename taure.local
machine "x86_64"
Code
Sys.localeconv()
base
Show me info about my numerical and monetary representation in the current locale

  currency_symbol    decimal_point
              "$"              "."
	
Code
Sys.setenv(ENV = "value")
base
Set my environment variable 'ENV' to a 'value'
Sys.setenv(R_TEST = "testit", "A+C" = 123)
Sys.getenv("R_TEST")

[1] "testit"
	
Code
Sys.setlocale()
base
Set my system locale
# Linux, macOS, other Unix-alikes
Sys.setlocale("LC_TIME", "de_DE.UTF-8")
Code
Sys.time()
base
Return the current system date and time
Sys.time()
[1] "2022-03-16 12:17:55 CET"
	
Code
Sys.unsetenv("ENV")
base
Unset the environment variable ENV
Sys.unsetenv("R_TEST")


.libPaths()
base
Get/set the path of the R-package library
op <- .libPaths() ; .libPaths("~/Desktop")
.libPaths(op) ; .libPaths()
[1] "/Library/Frameworks/R.framework/Versions/4.1/Resources/library"





Code
(x - min(X)) / (max(x) - min(x))
base snippet
Normalize x
\(X \rightarrow [0;1]\)
x <- rnorm(100)
X <- (x - min(x)) / (max(x) - min(x))
Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
0.00    0.25    0.50    0.50    0.75    1.00
Code
	
	
Code
HPDI(as.vector(samples), prob=mass)
rethinking
Highest posterior denisty interval
mass <- 0.9
HPDI(as.vector(samples), prob=mass)
     |0.9      0.9|
0.6055330 0.7390721
Code
I(x)
base
Ensure operators are interpreted as arithmetical operators
lm(col1 ~ I(col2 - 1), data=d)
	
Code
IQR(x)
stats
Compute the interquartile range of x
\(x_{0.75} - x_{0.25}\)
 x <- rnorm(100, 0, 10) ; IQR(x)

[1] 14.17469
	
Code
ISOdatetime(year, month, day, hour = 12, min = 0, sec = 0,…)
base
Create date-times from numeric representations
ISOdate(year = 2025, month = 10, day = 25)

[1] "2025-10-25 12:00:00 GMT"
Code
PI(samples, prob=mass)
rethinking
Percentile interval
mass <- .9
rethinking::PI(samples, prob=mass)
       5%       95%
0.6017652 0.7373659
	
Code
R.Version()
base
Show me my current R Version
R.Version()$version.string
[1] "R version 4.1.2 (2021-11-01)"
	
Code
Reduce(f, ls)
base
Apply binary f pairwise\(^*\) to the elements in ls
\(^*\) (x1,x2) = x' ; (x', y)=... 
df_list <- list(df1, df2, df3, df4)
merge_2df <- function(d1,d2) {
merge(d1, d2, by="ID", all.x=TRUE, all.y=FALSE)
}
Reduce(merge_2df, df_list)
Code


	
Code
View(X)
utils
View X in a spreadsheet-style
View(iris)
Code
\\
metachar
backslash character

	
Code
\n
metachar
newline character

	
Code
\t
metachar
tab character

Code
abbreviate(strings, minlength)
base
Abbreviate strings to minlength

	
Code
abline()
graphics
Add straight lines to a plot
abline(h=c(1,3))
	
Code
abs(x)
base
absolute value(s) of x

Code
acos(x) 
base
Arc-cosine of x
test
	
Code
addNA(x)
base
Turn NA into a factor level
...so that NA values are counted in tables

	
Code
addmargins(table, FUN)
base
Put a margin\(^*\) on a table or array
\(^*\)e.g., mean column
addmargins(table(sex), FUN=mean)
sex
diverse  female    male     sum 
     33      32      35     33.3 
Code
aggregate(df, by=list(factor(s)), FUN)
stats
Compute summary statistics for sub data sets\(^*\)
\(^*\)split by a list of factors
aggregate(iris[,-5], by=list(iris$Species), FUN=mean)

     Group.1 Sepal.Length Sepal.Width 
1     setosa        5.006       3.428        
2 versicolor        5.936       2.770        
3  virginica        6.588       2.974        
	
Code
agrep(pattern, x)
base
Fuzzy match pattern within each element of string x
+ return position(s)

	
Code
agrepl(pattern, x)
base
Fuzzy match pattern within each element of string x
+ return a logical

Code
alist(...)
base
Create an unevaluated list\(^*\)
\(^*\)e.g. turn a argument list into a function
my_alist <- alist(x=1, y=5, x^2 + y)
my_fun <- as.function(my_alist)
my_fun()

[1] 6
	
Code
all(...)
base
Are all values in ... TRUE?
x <- c(TRUE, FALSE) ; all(x)
[1] FALSE
	
Code
all.equal(x,y)
base
Test if x and y are (nearly) equal\(^*\)
\(^*\)i.e., within a given tollerance
x <- 1:10,  y <- x+rnorm(10)
all.equal(x,y)
all.equal(x,y, tollerance=.3)

[1] "Mean relative difference: 0.2367709"
[1] TRUE
Code
all.names(expr)
base
Get all names occuring in an expression or call
[1] "sin" "+" "x" "y"
	
Code
all.vars(expr)
base
Get all variables occuring in an expression or call 
[1] "x" "y"
	
Code
any(...)
base
Are any values in ... TRUE?
x <- c(TRUE, FALSE) ; any(x)
[1] TRUE
Code
anyDuplicated(x)
base
Return the position of the 1st duplicated entry  -- 0 otherwise

	
Code
anyNA(x)
base
Are some values in x NA?
x <- c(TRUE, FALSE, NA) ; anyNA(x)
[1] TRUE
	
Code
aperm(A, perm)
base
Transpose an array by permuting its dimensions

Code
append(x, values, after)
base
Add [values] to a vector [x] [after] ...

	
Code
apply(X, MARGIN, FUN)
base
Apply FUN to X's MARGINs\(^*\)
\(^*\)rows/columns/layers
X <- matrix(1:16, ncol=4) ; apply(X,2,FUN=median)
[1]  2.5  6.5 10.5 14.5
	
Code
approx(x)
stats
Linearly interpolate the values in x
x <- c(1,3,8,7)
x_approx <- approx(x)
plot(x_approx)
Code
approxfun(x,y)
stats
Get a function performing interpolation\(^*\) of x and y
\(^*\)linear, constant
x <- 1:5 ; y <- c(100,10,90,10,80)
my_approxfun <- approxfun(x,y)
plot(x,y) ; curve(my_approxfun, add=TRUE)
	
Code
apropos("<pattern>")
utils
Get a x_char with all objects including <pattern>
Unlike ls() it includes names with a '.'
apropos("max")
 [1] "cummax"       "max"          "max.col"
 [6] "pmax"         "pmax.int"     "promax"
	
Code
args(fun)
base
Display the arguments and defaults of a function

Code
array(data, dim, dimnames)
base
Create an array

	
Code
as.Date("x_char")
base
Turn x_char into a date-object
as.Date("2018-12-22")
[1] "2018-12-22"
	
Code
as.hexmode(x)
base
Display numbers in hexadecimal

Code
asin(x)
Arc-sine of x

	
Code
asplit(X, MARGIN)
base
Partition array/matrix in its margins

	
Code
assign(name, value, pos = -1)
base
Assign a value to a name in an environment

Code
atan(x)
base
arc-tangent of x

	
Code
attach(<db>)
base
Attach a <db> to the R search path
global scope
attach(iris)
cor(Sepal.Length, Sepal.Width)
detach(iris)

[1] -0.1175698
	
Code
attr(x, which)
base
Get/set the attribute <which> in <x>
attr(iris, "names")[1:2]
[1] "Sepal.Length" "Sepal.Width"
Code
attributes(x)
base
Get/set all of x's attributes
attributes(iris)
$names
[1] "Sepal.Length" "Sepal.Width" 
[3] "Petal.Length" "Petal.Width"  "Species"     

$class
[1] "data.frame"
	
Code
axis()
graphics
Add an axis to the current plot
\(^*\)specify  the side, position, labels, and other options.
plot(1:100, pch=20, yaxt="n")
axis(side=2, at=c(1,10,100), labels=c(1,10,100))

	
Code
barplot(heights)
graphics
Draw a barplot with particular <heights>
heights <- seq(10,50, by=10) ; barplot(heights)
Code
basename(path)
base
Extract the filename from a path
basename("/home/steven/foo")
[1] "foo"

	
Code
beta(a,b)
base
Beta distribution

	
Code
body(<fun>)
base
Get/set the body of a <fun>
my_fun <- function(x) x+2 ; body(my_fun)

x + 2
Code
box()
graphics
Draw a box around a plot\(^*\)
\(^*\)around the graphic or the whole figure
plot(rnorm(100)) ; box(lwd=5, col="yellow")
box(lwd=10, col="red", which="figure")

	
Code
break
base
Breaks out of  a 'for', 'while' or 'repeat' loop;
x <- 1
repeat({print(x <- x+1) ; if(x==3) break)
[1] 2
[1] 3
	
Code
browser()
base
Interrupt expression & inspect enviornent\(^*\)
\(^*\)at point -- quit with "c" and "enter" 
my_fun <- function(x) {
y <- x+3 ; browser()
z <- x*3 
}
my_fun(x=3)
Browse[1]> y
[1] 6
Code
browser(text = "")
base
Interrupt an expression and inspect the env where it was call
..debugging

	
Code
bs()
splines
Generate the B-spline basis matrix\(^*\) for a polynomial spline
\(^* \mathbf{B}\)
bs(dcc$year, knots = knots[-c(1,N_knots)], degree = 3, intercept = TRUE)
        1    2    3    4    5    
[1,] 1.00 0.00 0.00 0.00 0.00
[2,] 0.96 0.04 0.00 0.00 0.00
[3,] 0.77 0.22 0.01 0.00 0.00
	
Code
by(data, INDICES, FUN)
base
Apply a function to a df split by factors

Code
c(...)
base
Combine all arguments/values into a vector or list

	
Code
call("fun", args)
base
Get an unevaluated function call from prespecified 'args'
x <- c(1:5, NA)
my_call <- call("sum", x, na.rm=TRUE)
eval(my_call)
[1] 15
	
Code
casefold(cv, upper=FALSE)
base
Translate cv from upper/lower to lower/upper case
\(^*\)wrapper for toupper() tolower()
casefold("TEST") ; tolower("TEST")
[1] "test"
[1] "test"
Code
cat(...)
base
Print the objects in a readable format\(^*\)
\(^*\) use, e.g., "\n", or omit "[1]" from print()
cat("My", "name is\n", "Steven\n") 
My name is
 Steven
	
Code
ceiling(x)
base
Round x elements up to the next integer value
x <- rnorm(10) ; ceiling(x)

 [1] -1  2  1  0 -1  0  0  2  0  0
	
Code
chainmode(samples)
rethinking
Posterior mode
chainmode(samples, adj=0.01)
[1] 0.6706945
Code
chol(X)
base
Cholesky decompose X\(^*\)
\(^*\)real, symmetric, positive-definite
X <- matrix(c(1,2,1,2), ncol=2)

     [,1] [,2]
[1,]    1    1
[2,]    0    1
	
Code
clip(x1, x2, y1, y2)
graphics
Set clipping region in user coordinates
e.g. color overlay
x <- rnorm(1e3) ; y <- x + rnorm(x)
plot(x,y, pch=20) ; usr <- par("usr") 
clip(usr[1], 0, usr[3], usr[4])
points(x, y, col="red")
do.call("clip", as.list(usr))  # reset

	
Code
colMeans(X)
base
Caclulate the colum means of a matrix-like\(^*\) X
\(^*\)matrix, array, table,  data.frame
X <- matrix(c(2,4,2,4), ncol=2)
colMeans(X)

[1] 3 3
Code
colSums(X)
base
Caclulate the colum sums of a matrix-like\(^*\) X
\(^*\)matrix, array, table,  data.frame
 X <- matrix(rep(1:2, 2), ncol=2)
colSums(X)

[1] 3 3
	
Code
colnames(x)
base
Get/set the colum names of x
colnames(iris) <- letters[1:6]
colnames(iris)
[1] "a" "b" "c" "d" "e"
	
Code
comment(x)
base
Get/set the comment attribute in x
..useful for 'data.frame's or model fits.
x <- iris 
msg <- c("Data: experiment #1563", "Jun 5, 1998")
comment(x) <- msg ; comment (x)

[1] "Data: experiment #1563" "Jun 5, 1998" 
Code
complete.cases(...)
stats
Which cases in ... are complete\(^*\)?
\(^*\)i.e., have no missing values.
cc <- complete.cases(iris$Sepal.Length, iris$Petal.Width)
iris_cc <- iris[cc,2:4 ] ; head(iris_cc)
  Sepal.Width Petal.Length Petal.Width
1         3.5          1.4         0.2
2         3.0          1.4         0.2
	
Code
cos(x)
base
Cosine of x

	
Code
cospi(x)
base
Shortcut for cos(pi*x)

Code
cov( as.matrix(stan.fit) )
Posterior Covariance Matrix\(^*\)
\(^*\)from a Stan fit
cov(as.matrix(fit)[,-3])
              mu       sigma
mu     0.1783865 -0.00176150
sigma -0.0017615  0.08882881
	
Code
cov2cor(V)
stats
Transform V\(^*\) into a correlation matrix (R)
\(^*\)covaraince matrix
 X <- replicate(10, rnorm(100)) ; V <- cov(X)
R <- cov2cor(V)

      [,1]  [,2]  [,3] [,4]
[1,]  1.00 -0.14 -0.02 0.02
[2,] -0.14  1.00 -0.23 0.06
[3,] -0.02 -0.23  1.00 0.06
[4,]  0.02  0.06  0.06 1.00
	
Code
curve( dnorm(x, mean, sd), from, to)
base snippet
Visual Prior implication\(^*\)
\(^*\)Gaussian
curve(dnorm(x,178,20), from=100, to=250)
Code
curve( dunif(x, min, max), from, to )
base snippet
Visual prior implications\(^*\)
\(^*\)Uniform
curve( dnunif(x,0,50) ) 
	
Code
cut(x, breaks)
base
Divide the range of x into (factor) intervals
and codes the values  in 'x' according to which interval they fall.
age <- 1:100
breaks <- seq(0,100, length.out=10)
(age_10 <- cut(age, breaks))

[1] (0,11.1]    (0,11.1]    (0,11.1]
...
	
Code
dagitty( 'dag{ ... }' ) 
dagitty
Draw a DAG
dag_5.1 <- dagitty::dagitty('dag {
A [pos="0,0"]
M [pos="1,0"]
D [pos="0.5,1"]
D <- A -> M
}')
plot(dag_5.1)

Code
date()
base
Return the system date and time\(^*\)
\(^*\)as character vector
date()
"Wed Feb 16 13:57:40 2022"
	
Code
dbinom(possible, trials, prob=success)
base snippet
Binomial Likelihood
N_tosses <- 2 ; success <- .7
dbinom(0:2, N_tosses, prob=success)
[1] 0.09 0.42 0.49 
# 9% chane: w=0 | N=2
	
Code
density(x)
stats
Compute the kernel density estimates of x
x <- rnorm(100), x_dens <- density(x)
plot(x_dens)
Code
deparse(expr)
base
Turn an unevaluated 'expr' into a character string
f <- function(x) deparse(match.call()) ; f(3)
[1] "f(x = 3)"
	
Code
det(X)
base
Calculate the determinant of X
X <- matrix(1:4, ncol = 2) ; det(X)

[1] -2
	
Code
detach(<db>)
base
Detach <db> from the search path
global scope
attach(iris)
cor(Sepal.Length, Sepal.Width)
detach(iris)

[1] -0.1175698
Code
dev.print(device, filename, height, width)
grDevices
Print the active figure window
plot(rnorm(100))
dev.print(device=png, filename="~/Desktop/1.png",
width=200, height=200)
	
Code
diag(X)
base
Get/set the diagonal of X
\(^*\)or compute a diagonal matrix from the values of X
diag(1:3)
     [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    2    0
[3,]    0    0    3
	
Code
diff(x)
base
Compute the (lagged, iterated) difference within x
x <- 1:4 ; diff(x)

[1] 1 1 1
Code
difftime(t1, t2, units)
base
Compute the time difference between t1 and t2
t1 <- "2022-02-28 10:00:00" ; t2 <- "2022-03-22 10:00:00"
difftime(t2, t1)
Time difference of 528 hours
	
Code
dim(X)
base
Get/set the dimension of X
X <- matrix(1:16, ncol=4) ; dim(X)

[1] 4 4
	
Code
dimnames(X)
base
Get/set the dimnames of X
dimnames(X) <- list(paste0("r",1:4), paste0("c",1:4))
   c1 c2 c3 c4
r1  1  5  9 13
r2  2  6 10 14
r3  3  7 11 15
r4  4  8 12 16
Code
do.call("fun", list(args))
base
Execute a function call from its name & argument list
Good to pass a multiple args (args) to a user function!
argls <- list( c(1,NA,2:5), na.rm=TRUE )
do.call("mean", list(x))

[1] 3
	
Code
download.file(url, destfile)
utils
Download a file from <url>\(^*\)
\(^*\)using read.csv(url) you can directly read the data
url <- "https://www.stats.govt.nz/provisional-csv.csv"
download.file(url, destfile="~/Downloads/data.csv")

===============================================
downloaded 3.5 MB
	
Code
droplevels(x_factor)
base
Drop unused levels from a x_factor
droplevels(iris$Species[2:6])

[1] setosa setosa setosa setosa setosa
Levels: setosa
Code
ds <- density(samples)     
ds$x[which.max(ds$y)]
base snippet
Maximum a posteriori estimate
dsamples <- density(samples)     
dsamples$x[which.max(dsamples$y)]
[1] 0.6706945
	
Code
dublicated(x)
base
Does x include any duplicates?
x <- sample(1:4, 6, replace=TRUE) ; duplicated(x)
[1] FALSE FALSE FALSE  TRUE  TRUE  TRUE
	
Code
ecdf(x)
stats
Compute the empirical cumulative distribution function\(^*\)
x <- rnorm(100)
plot(ecdf(x))
Code
equivalentDags(dag)
dagitty
Find Markov equivalent DAGs
MElist <- dagitty::equivalentDAGs(dag1)
lapply(MElist, plot)
	
Code
eval(expr)
base
Evaluate an unevaluated expression
expr <- expression(4*2) ; eval(expr)
[1] 8
	
Code
eval(parse(text=x_char))
base
Turn a x_char into an expression
str2expression(char)
cx <- "2+2" ; eval(parse(text=char))
[1] 4
Code
exists("x_char")
base
Does x_char exist?
x <- 1:3 ; exists("x")
[1] TRUE
	
Code
exp(X)
base
Compute the exponential of x
exp(4)

[1] 54.59815
	
Code
expand.grid(...)
base
Get all combinations of ...
x <- 1:3 ; y <- 4:6 ; z <-7:9
expand.grid(x,y,z)

  Var1 Var2 Var3
1    1    4    7
2    2    4    7
3    3    4    7
...
Code
factor(x, ordered=TRUE)
base
Make x an ordered factor
ordered(x, ...)
s <- sample(1:10, 10, replace=FALSE)
factor(letters[s], ordered=TRUE)
 [1] h b i d e j a g f c
Levels: a < b < c < d < e < f < g < h < i < j
	
Code
file.choose()
base
Choose a file interactively

	
Code
file.copy(old_path, new_path)
base
Copy files to a different directory
old_path <- "~/Downloads/data.csv"
new_path <- "~/projects/data.csv"
file.copy(from=old_path, to=new_path)
[1] TRUE
Code
find("<object>")
utils
Find the location\(^*\) of <object>
e.g. package location, environment
v <- c(1,2)
find("v", "max")
[1] ".GlobalEnv"
[1] "package:base"
	
Code
fivenum(x)
stats
Get Tuckey's five number summary\(^*\) of x
\(^*\)Minimum, lower-hinge, median, upper-hinge, maximum
fivenum(iris$Sepal.Length)
[1] 4.3 5.1 5.8 6.4 7.9
	
Code
floor(x)
base
Round the elements in x down to the next integer
floor(rnorm(5, 0, 5))

[1] -3 -7 -5  0 -3
Code
format(x)
base
Format x for pretty printing
format(iris$Species, justify="centre")

  [1] "  setosa  " "  setosa  " "  setosa  "
	
Code
gc(reset=TRUE)
Clean up the R memory
after a rm(list = ls())
rm(list=ls()) ; gc(reset=TRUE)
         used (Mb) gc trigger (Mb) limit (Mb) max
Ncells 368748 19.7     677320 36.2         NA   
Vcells 743519  5.7    8388608 64.0      16384
	
Code
get("x")
base
Get the value of a single object from its name
x <- c(1:3) ; get("x")
[1] 1 2 3
Code
get0("x", ifnotfound)
base
Get the value of x from its name – if not found return something
x <- 1:3 ; get0("y", ifnotfound=NA)
[1] NA
	
Code
getwd()
bade
Show me the path of the current working directory
getwd()
[1] "/Users/steven/rarp"
	
Code
gl(n, k, labels)
base
Generate a factor by specifying the patterns of their levels
lvls <- 2 ; mf_reps <- 10 ; lbls <- c("m", "f") 
gl(n=lvls, k=mf_reps, labels=lbls)

 [1] m m m m m m m m m m f f f f f f f f f f
Levels: m f
Code
grep("<pattern>", x_char)
base
Within x_char, show me the position(s) of those element that include the <pattern>
double_letters <- paste0(letters[1:26], letters[26:1])
x <- sample(double_letters, 100, replace=TRUE)
grep("a|e", x)

 [1]   6  27  36  44  47  48  54  84  90  92  99 100
	
Code
grepl("<pattern>", x_char)
base
Within x_char, are you an element that includes the <pattern>?
double_letters <- paste0(letters[1:26], letters[26:1])
x <- sample(double_letters, 100, replace=TRUE)
grepl("a|e", x)
  [1] FALSE FALSE FALSE  TRUE FALSE FALSE....
	
Code
grid(nx, ny, col, lty, lwd)
graphics
Add a nx*ny grid to a plot 
plot(1:10) ; grid(4,4, lwd=2)
Code
gsub("old", "new", x_char)
base
Within x_char, substitute all matches of "new" with "old"
char <- "aaaaeeeeddjdaklsjkdlw"
gsub("a", "A",  char)
[1] "AAAAeeeeddjdAklsjkdlw"
	
Code
hasName(x, "name")
utils
Is there an object in x that has the <name>?
x <- list(abc = 1, def = 2) ; hasName(x, "abc")

[1] TRUE
	
Code
head(x)
utils
Return the first (6) elements of x
head(iris)
  Sepal.Length Sepal.Width Petal.Length
1          5.1         3.5          1.4
2          4.9         3.0          1.4
3          4.7         3.2          1.3
4          4.6         3.1          1.5
5          5.0         3.6          1.4
6          5.4         3.9          1.7
Code
heatmap(x)
stats
Draw a heatmap\(^*\) of x
\(^*\)image() plus a dendrogram()
R <- cor(iris[,1:4])  ; heatmap(R)

	
Code
hist(x)
graphics
Draw a histrogram of x
x <- rnorm(100) ; hist(x)
	
Code
identical(x,y)
base
Are x and y identical\(^*\)?
\(^*\)mode, elements
x <- c(1,2,3) ; y <- 1:3
identical(x,y)
[1] FALSE
Code
identitiy(x)
base
Simple return the functions argument -- x
x <- 1:10 : curve(identitiy(x))
	
Code
ifelse(cond, do, else)
base
Vectorized if cond... then do... else...
x <- rnorm(100) ; y <- rnorm(100)
plot(x,y, pch=20, col=ifelse(x>1, "red", "black"))

	
Code
impliedConditionalIndependencies(dag)
dagitty
Get a models testable implications\(^*\)
\(^*\)its implied conditional independencies!
dag <- dagitty('dag{ D <- A -> M }')
impliedConditionalIndependencies(dag)
D _||_ M | A

Code
integrate(f, lower, upper)
stats
Integrate f from lower to upper
f <- function(x) 2 * x + x^2 + 5 * x^3
integrate(f, lower = 0, upper = 10)

12933.33 with absolute error < 1.4e-10
	
Code
intersect(x.y)
base
Get the intersection of x and y
y <- sample(0:10, 100, replace=TRUE)
y <- sample(5:15, 100, replace=TRUE)
intersect(x,y)

[1]  8  6  7 10  5  9
	
Code
invisible(x)
base
Return a invisible copy of x
f <- function(x) invisible(x^2 + x)
f(3) + 4
[1] 16
Code
is.unsorted(x)
base
Are you "increasingly unsorted", x ?
x <- c(1,2,3) ; is.unsorted(x)

[1] FALSE
	
Code
jitter(x)
base
Add a small amount of noise to x
x <- rep(50, 1:2)  y<- 1:100
plot(jitter(x),y, pch=20)

	
Code
julian(t_1, t_2)
base
Compute the time difference -- in days -- between t_1 and t_2
t_1 <- as.POSIXlt("1993-03-22") ; t_2 <- as.POSIXlt("2022-02-25") 
julian(t_2, t_1)
Time difference of 10567 days
Code
lapply(X, FUN, ...)
base
Apply a FUN to each element in X and return it a list
lapply(iris[,1:3], summary)
$Sepal.Length
[1] 0.6856935

$Sepal.Width
[1] 0.1899794

$Petal.Length
[1] 3.116278
	
Code
layout(X)
graphics
Arrange a grid of plots according to the plot matrix X
X <- matrix(c(0,1,2,0), 2, 2) ; layout(X)
plot(rnorm(100)) ;  plot(rpois(100,2))
	
Code
length(x)
base
Get/set the length of x
length(1:10)
[1] 10
Code
list.dirs(path)
base
Show me a list of all dirs in <path>\(^*\)
\(^*\)if no <path> is specified the WD is used!
list.dirs("~/Desktop")
[1] "/Users/steven/Desktop"         "/Users/steven/Desktop/beisitz"
[3] "/Users/steven/Desktop/BF3"    
	
Code
list.files(<path>)
base
List all files in <path>\(^*\)
\(^*\)if no <path> is specified the WD is used!

[1] "~$wi_gesucht.docx" "1.png"             "beisitz"          
[4] "BF3"  
	
Code
load(.Rdata)
base
Reload a .Rdata workspace image\(^*\)
\(^*\)i.e.: Multiple objects
load("~/subiris.RData")
Code
log(x)
base
Compute the natural logarithm of x
log(3)
[1] 1.098612
	
Code
lower.tri(X)
base
Are you in the lower triagular matrix of X?
X <- matrix(1:6, ncol=2) ; lower.tri(X)
      [,1]  [,2]
[1,] FALSE FALSE
[2,]  TRUE FALSE
[3,]  TRUE  TRUE
	
Code
ls()
base
Show me all objects in my current environment\(^*\)
\(^*\)default: .GlobalEnv
ls()
[1] "t1" "t2" "x"  "X" 
Code
mad(x)
stats
Compute the median absolute deviation of x
x <- rnorm(100) ; mad(x)
0.9766922
	
Code
make.names(x)
base
Make synthactically valid names from x
x <- rep(1:3, 2)
make.names(x, unique=TRUE)

[1] "X1"   "X2"   "X3"   "X1.1" "X2.1" "X3.1"
	
Code
mapply(FUN, ..., simplify=TRUE)
base
Apply FUN to multiple ... -- simplifying the result
Note: Use .mapply() in other functions
mapply(rep, 1:3, 3:1) ; Map(rep, 1:3, 3:1)

[[1]]
[1] 1

[[2]]
[1] 2 2

[[3]]
[1] 3 3 3
Code
match.call()
base
Return the function call
f <- function(x) deparse(match.call()) ; f(3)
[1] "f(x = 3)"
	
Code
mean(samples)
base
Posterior mean
mean(samples)
[1] 0.6711597
	
Code
median(samples)
base
Posterior median
median(samples)
[1] 0.6720644
Code
merge(d1, d2, by="ID")
base
Merge d1 and d2 by ID\(^*\)
\(^*\)keep data of unmatched rows with all.x/y
d1 <- data.frame(ID=1:100, X1=rnorm(100))
d2 <- data.frame(ID=1:100, X2=rpois(100))
head(merge(d1,d2,by="ID"))

     ID          X1  X2
1     1 -0.57403335 104
2     2  0.22599114 100
3     3  0.26382524 104
4     4  2.50556216 100
	
Code
message("msg")
base
Get a diagnostic "msg"
message("This is a message")

This is a message
	
Code
mget(x_char, infnotfound)
base
Get the value of multiple objects from their names in x_char
...if not found send a message
x <- y <- z <- rbinom(5,2,.5) 
mget(c("x", "y", "z"))

$x
[1] 2 2 2 1 0
$y
[1] 2 2 2 1 0
$z
[1] 2 2 2 1 0
Code
min(x)
base
Calculate the minimum of X
min(iris$Sepal.Length)

[1] 4.3
	
Code
missing(x)
base
Are you missing as an argument in a function, x?
f <- function(x, y) if(missing(x))  print("x is missing")
f(y=3)
[1] "x is missing"
	
Code
mtext("text", side)
graphics
Write "text" to the margin of a graphic 
plot(rnorm(10), rnorm(10)) ; mtext("Some text")
Code
na.omit(X)
stats
Remove NA from X
X <- c(NA, 1:4) ; na.omit(X)
[1] 1 2 3 4
attr(,"na.action")
[1] 1
attr(,"class")
[1] "omit"
	
Code
name <<- value
base
Super assign a value 
..to a name in a parent environment

	
Code
names(x)
base
Get/set the names of x
names(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"
Code
nchar(x_char)
base
Count the n° characters in x_char
nchar("abcdefg")
[1] 7
	
Code
ncol(X)
base
Count the n° columns in a matrix-like X
ncol(iris)
[1] 5
	
Code
next
base
Jump to the next iteration in a loop
for (i in 1:5) {if(i==4) next ; print(i)} 

[1] 1
[1] 2
[1] 3
[1] 5
Code
nrow(X)
base
Count the n° rows in a matrix-like X
nrow(iris)
[1] 150
	
Code
object.size(x)
utils
Estimate the object size of x
sapply(ls(), object.size)

  x   y 
112 112
	
Code
optim(par, fn, ...)
stats
Do general purpose optimization\(^*\)
\(^*\)e.g.: OLS, ML

df <- data.frame(x,y)
SR <- function(data, par) {
    with(data, sum((par[1] + par[2] * x - y)^2))
}
optim(par=c(0,1), fn=SR, data=df)$par


$par
[1] -0.10269127 -0.05243646
Code
order(...)
base
Get ...'s ordered positions
Note: good as indexing function!
x <- c(1,4,2,6,3) ; x[order(x)] ; sort(x)

[1] 1 2 3 4 6
[1] 1 2 3 4 6
	
Code
packageVersion("pkg")
utils
Show me the package version of 'pkg'
packageVersion("elisr")

[1] '0.1.1'
	
Code
pairs(X)
graphics
Produce a scatter plot matrix\(^*\) from a matrix-like X
\(^*\)I.e.: a pairs plot
pairs(iris)
Code
par(...,no.readonly=FALSE)
graphics
Set/change graphical parameters
par(no.readonly=TRUE)
$xlog
[1] FALSE

$ylog
[1] FALSE
	
Code
paste(...)
base
Concetenate ... to a string
paste0("Hello", "my", "friend")
[1] "Hellomyfriend"
	
Code
plot( denisty(samples) )
base snippet
Plot the Posterior
dsamples <- density(samples)
plot(dsamples)
Code
plot( density( rnorm(N, sample_mu, sample_sigma) ) )
base snippet
Visual Joint Prior Predictive Simulation\(^*\)
\(^*\)Gaussian
sample_mu <- rnorm(1e4, 177, 20)
sample_sigma <- runif(1e4, 0, 50)
prior_h <- rnorm(1e4, sample_mu, sample_sigma)
dens(prior_h)
	
Code
plot( density(samples$p) )
base snippet
Plot the marginal\(^*\) posterior (density) for <p>
\(^*\)averaged over the other parameters
samples_mu <- samples$mu
samples_sigma <- samples$sigma
dens(samples_mu) ; dens(samples_sigma)
	
Code
plot(X)
graphics
Draw a plot from X\(^*\)
\(^*\)..depending upon what X is
plot(rnorm(199))
Code
pnorm(c(-1.96, 1.96))
base snippet
Interval of defined parameter boundaries -- from a gaussian
boundaries <- c(-1.96, 1.96)
pnorm(boundaries)
[1] 0.0249979 0.9750021
	
Code
polygon(x_cord, y_cord)
graphics
Draw a polygon to a plot
x_cord <-  c(0.7, 1.3, 1.2, 0.8) 
y_cord <- c(0.6, 0.8, 1.4, 1)
plot(1,1,type="n")
polygon(x_cord, y_cord, col="steelblue")    

	
Code
precis(fit.stan)
rethinking
Marginal distribution\(^*\)
\(^*\)MCMC approximations for each \(p\)'s marginal distribution
fit <- rstan::stan(...) ; precis(fit)
mean   sd 5.5% 94.5% n_eff Rhat4
p  0.7 0.04 0.63  0.77  1494     1
Code
print(fit.stan)
rstan
Marginal distributions\(^*\)
\(^*\)MCMC approximations for each \(p\)'s marginal distribution
fit <- rstan::stan(...)
print(fit)
mean se_mean   sd   2.5%    25%    50%...
p      0.70    0.00 0.04   0.62   0.68...
	
Code
prop.table(tbl, margin)
base
Return a proportion table\(^*\)
\(^*\)given the margin
iris_tbl <- table(iris$Species)
prop.table(iris_tbl)
    setosa versicolor  virginica 
 0.3333333  0.3333333  0.3333333 
	
Code
qnorm(c(0.25, 0.75))
base
Interval of defined probability mass\(^*\) -- from a gaussian
\(^*\)CI
mass <- c(0.025, 0.975))
qnorm(c(mass[1], mass[2])
[1] -1.959964  1.959964 
Code
quantile(samples)
stats
Compute the sample's quantiles
samples <- cmdstanr::draws(format="data.frame")
quantiles(sample)
   0%   25%   50%   75%  100%
-0.03  0.07  0.09  0.12  0.21
	
Code
quantile(samples, c(mass[1],mass[2]))
base
Interval of (two) defined mass\(^*\) -- from samples
\(^*\)Combatibility Interval
mass <- c(0.7, 0.8)
quantile( samples, c(mass[1], mass[2]))
0.6935015 0.7051581
	
Code
quantile(samples, mass)
base
Interval of (one) defined mass\(^*\) -- from samples
\(^*\)Compatibility interval
mass <- 0.5
quantile(samples, mass)
0.6720644
Code
quantile(time, probs=seq(0,1, length.out=N_knots))
base snippet
Evenly spaced quantile knots
N_knots <- 15
probs <- seq(0,1, length.out=N_knots)
quantile(d$years, probs=probs)
       0% 7.142857% 14.28571%      
812      1036      1174
	
Code
quit()
base
Quit an R Session
q(save="no")

steven@taure ~ %
	
Code
range(x)
base
Show me the range\(^*\) of x
\(^*\) min and max
range(iris$Sepal.Length)
[1] 4.3 7.9
Code
rbind(...)
base
Combine matrix-like\(^*\) ...'s by rows
\(^*\)vector, matrix, or data.frame
rbind(0:5, 5:10)
  [,1] [,2] [,3] [,4] [,5] [,6]
x    0    1    2    3    4    5
y    5    6    7    8    9   10
	
Code
rbinom(N, trials, prob=samples)
base snippet
Posterior predictive distribution\(^*\)
\(^*\)Binomial
rbinom(1e5, size=9, prob=samples)
[1] 6 6 5 6 8 4...
	
Code
rbinom(N, trials, prob=success)
base snippet
Binomial sampling distribution\(^*\)
\(^*\)(~density)
N <- 1e5, tosses <- 2
table(rbinom(1e5, 2, prob=.7)) / N 
      0       1       2
 0.08964 0.42222 0.48814
Code
readRDS(.Rdata)
base
Reload a single R-Objekt from an .RData file
 readRDS("~/iris_modidief.Rdata")
  Sepal.Length Sepal.Width
1          5.1         3.5
2          4.9         3.0
3          4.7         3.2
	
Code
readline(prompt="msg")
base
Read a line from the terminal given a prompt 'msg'
fun <- function() {
answer <- readline("Are you a satisfied R user? ")
   if (substr(answer, 1, 1) == "n")
         cat("This is impossible.  YOU LIED!\n")
   }
if(interactive()) fun()

Are you a satisfied R user? no
This is impossible.  YOU LIED!
	
Code
replicate(n, expr)
base
Repeat 'expr' 'n' times
replicate(3, rnorm(2))
           [,1]      [,2]       [,3]
[1,] -1.7857703 -1.003175 -2.0033941
[2,]  0.2152693 -2.030703 -0.9572856 
Code
rm(x,y,z)
base
Remove x, y, and z
a<-x <- y <- z <- rnorm(100)
rm(x,y,z) ; ls()
[1] "a"
	
Code
round(x, digits=<n>)
base
Round x to <n> digits
x <- runif(1) ; round(x, digits=4)
[1] 0.2134
	
Code
rowMeans(X)
base
Caclulate the row means of a matrix-like\(^*\) X
\(^*\)matrix, array, table,  data.frame
 X <- matrix(c(2,4,2,4), ncol=2)
rowMeans(X)

[1] 2 4
Code
rowSums(X)
base
Caclulate the row sums of a matrix-like\(^*\) X
\(^*\)matrix, array, table,  data.frame
 X <- matrix(rep(1:2, 2), nrow=2)
rowSums(X)

[1] 2 4
	
Code
rownames(X)
base
Get/set the rownames of a matrix-like\(^*\) X
\(^*\)matrix or data.frame
rownames(subiris) <- letters[1:3]

  Sepal.Length Sepal.Width
a          5.1         3.5
b          4.9         3.0
c          4.7         3.2
	
Code
sample(x, size, replace=FALSE, prob=NULL)
base
Draw a sample of <size> from x\(^*\)
\(^*\)without replacement and equal probability
sample(1:10, 5, replace=TRUE, prob=runif(10))

[1] 6 2 5 8 4
Code
sapply(X, FUN, ...)
base
Apply a FUN to each element in X and simplify the result
sapply(iris[,1:3], var)

Sepal.Length  Sepal.Width Petal.Length 
   0.6856935    0.1899794    3.1162779 
	
Code
save(.Rdata)
base
Save a .Rdata workspace image\(^*\)
\(^*\)i.e.: Multiple objects
save("~/subiris.RData")
	
Code
saveRDS(.Rdata)
base
Save a single R-Objekt from an .RData file
saveRDS(subiris, "~/projects")
Code
scale(x, center=TRUE, scale=TRUE)
base
Standardize\(^*\) x
\(^*\)center & scale
x <- rnorm(100, 10,30)
summary(scale(x), digits=1)
       V1       
 Min.   :-2.29  
 1st Qu.:-0.69  
 Median : 0.02  
 Mean   : 0.00  
 3rd Qu.: 0.65  
 Max.   : 2.90  
	
Code
scan(file="path", what=double(), ...)
base
Readin a file from "path"
data2 <- scan("data.txt", what = character(),
skip=1, row.names=FALSE)

	
	
Code
seq(...)
base
Calculate a sequence of numbers
seq(1,5,length.out=11)
1.0 1.4 1.8 2.2 2.6 3.0 3.4 3.8 4.2 4.6 5.0
	
Code
sessionInfo()
utils
Show me all info\(^*\)  about my R Session
\(^*\) R version, Platform, OS, locale, attached packages

R version 4.1.2 (2021-11-01)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Big Sur 10.16
BLAS:   /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRblas.0.dylib
Code
set.seed(...)
base
Set the RNG state
set.seed(123) ; rnorm(2) ; set.seed(123) ; rnorm(2)

[1] -0.5604756 -0.2301775
[1] -0.5604756 -0.2301775
	
Code
setdiff(x,y)
base
Get the set difference of x & y
Differenzmenge
x <- 1:10 ; y <- 5:15
setdiff(x,y) ; setdiff(y,x)
[1] 1 2 3 4
[1] 11 12 13 14 15
	
Code
setwd(dir)
base
Set the working directory to 'dir'
setwd("~/Desktop") ; getwd()
[1] "/Users/steven/Desktop"
Code
sign(x)
base
Get the sign of each element in x
sign(rnorm(10))
 [1]  1  1  1  1  1 -1 -1 -1  1  1
	
Code
sin(x)
base
Sine of x

	
Code
sink()
base
Write R output to a connection (file)
sink("example.txt")
sample(c("m","f"), 10, replace=TRUE)
sink()
Code
sinpi(x)
base
Shortcut for sin(pi*x)

	
Code
split(x, f)
base
Divide x into a group defined by f
x <- 1:5 ; f <- c("A", "B", "A", "A", "B")
split(x, f)
$A
[1] 1 3 4
$B
[1] 2 5
	
Code
sprintf(fmt, ...)
base
Get a character in a formated version of  the input values
x <- 123.456 ;  sprintf("%.1f", x)
[1] "123.5"
	
Code
sqrt(x)
base
(Principal) square root(s) of x

Code
stan()
rstan
Fit a model with Stan

	
Code
stop(..., call. = TRUE)
base
Stop the execution of an expression\(^*\)
\(^*\)e.g., with an error message
for (i in seq(10)) ifelse(i<3, print(i), stop("No!", call.=FALSE))

[1] 1
[1] 2
Error: No!
	
Code
stopifnot(...)
base
Stop if not all expression in '...' are TRUE
\(^*\)Good for error checks in functional programming!
stopifnot("a" == "A")
Error: "a" == "A" is not TRUE
Code
str(x)
utils
Show me the internal structure of x
str(iris)
'data.frame': 150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 ...
	
Code
strsplit(x_char, split)
base
Split 'x_char' into substrings according to 'split'
x_char <- c("Das ist", "ein Test")
strsplit(x_char, split=" ")
strsplit("Das ist ein Test", split=" 

[[1]]
[1] "Das" "ist"
[[2]]
[1] "ein"  "Test"
	
Code
structure(x, attributes)
base
Structure x with multiple-attributes
structure(x, class="character", comment="Haha")
[1]  1  2  3  4  5  6  7  8  9 10
attr(,"class")
[1] "character"
Code
sub("new", "old",  x_char)
base
Within x_char, substitute the first match of "new" with "old"
char <- "aashdshjdkaöhsdjpas" 
sub("a", "A", char)

[1] "Aashdshjdkaöhsdjpas"
	
Code
sum(samples < boundary[1] & samples > boundary[2]) / N_samples
base snippet
Interval of (two) defined boundaries -- from samples
bound <- c(0.71, 0.73)
sum(samples > bound[1] & samples < bound[2])/N
[1] 0.09575
	
Code
sum(samples > boundary) / N_samples
base snippet
Interval of (one) defined boundary -- from samples
N_samples <- length(samples)
boundary <- 0.722
sum(samples > boundary] )/N_samples
Code
summary(x)
base
Summarize x
summary(iris)
 summary(iris[1:2])
  Sepal.Length    Sepal.Width   
 Min.   :4.300   Min.   :2.000  
 1st Qu.:5.100   1st Qu.:2.800  
 Median :5.800   Median :3.000  
 Mean   :5.843   Mean   :3.057  
 3rd Qu.:6.400   3rd Qu.:3.300  
 Max.   :7.900   Max.   :4.400  
	
Code
switch(EXPR, ...)
base
Shortcut for nested If-then-else statements
centre <- function(x, type) {
switch(type, mean=mean(x), median=median(x),
trimmed= mean(x, trim=.1))}
x <- rcauchy(10) ; centre(x, "trimmed")
[1] -2.970552
	
	
Code
tail(x)
utils
Return the last (6) elements of x
tails(iris$Sepal.Length)
[1] 6.7 6.7 6.3 6.5 6.2 5.9
	
Code
tan(x)
base
tangent of x

Code
tanpi(x)
base
Shortcut for tan(pi*x)

	
Code
tapply(tbl, INDEX, FUN)
base
Apply FUN to each cell in tbl, grouped by INDEX
tapply(iris$Petal.Width, INDEX=iris$Sepal.Length, sum)

4.3 4.4 4.6 4.7 4.8 4.9   5 5.1 5.4 5.7 5.8 
1.1 1.4 2.9 1.3 3.0 2.9 2.9 1.4 3.2 1.5 1.2 
	
Code
text(x, y, labels)
graphics
Draw the string 'labels' to the coordinates
plot(rnorm(100)) ; text(0.5,0.5, "test")
Code
traceplot(stanfit)
rstan
Markov chain traceplots\(^*\)
\(^*\)A visual way to assess mixing across chains and convergence

	
Code
transform(df, col)
base
Transform the 'col' a 'df'
Good to recode variables in a data frame
transform(iris[1:3,1:2], Sepal.Length=7-Sepal.Length)

  Sepal.Length Sepal.Width
1          1.9         3.5
2          2.1         3.0
3          2.3         3.2
	
Code
trimws(x_char)
base
Remove leading and trailing white spaces from x_char
x_char <- "     .  abcd e   f   "
trimws(x_char)

[1] ".  abcd e   f"
Code
trunc(x)
base
Cut off the decimal places of x
x <- 1.468063 ; trunc(x)
[1] 1
	
Code
union(x,y)
base
Get the union set of x & y
x <- 1:5 ; y <- 3:8

[1] 1 2 3 4 5 6 7 8
	
Code
unique(x)
base
Get a list uniqe elements in x
x <- rep(1, 100)  ; unique(x)
[1] 1
Code
uniqueN(x)
base
Get the number of unique elements in x

	
Code
unlist(x)
base
Convert a list to a single vector
x_char <- c("Das ist ein Test", "Das auch!")
unlist(strsplit(x_char, split=" "))

[1] "Das"   "ist"   "ein"   "Test"  "Das"   "auch!"
	
Code
unsplit(x_split, f)
base
Reverse the effect of split on x_split
x <- 1:5 ; f <- c("A", "B", "A", "A", "B")
x_split <- split(x, f)
unsplit(x, f)
[1] 1 2 1 1 2 
Code
url.show(url)
utils
Display text from url\(^*\) on a remote server
\(^*\)I.e.: text files from a remote server
url.show("https://www.stats.ox.ac.uk/pub/datasets/csb/ch3a.txt") 
CASE STUDIES IN BIOMETRY: Chapter 3.
	
Code
vapply(X, FUN, FUN.VALUE)
base
Apply FUN to X and return output as FUN VALUE
vapply(iris[,-5], mean, double(1)) 
Sepal.Length  Sepal.Width Petal.Length  Petal.Width
    5.843333     3.057333     3.758000     1.199333
	
Code
which(...)
base
Which ... of you are TRUE?
[1]  1  2  3  4  5  6  7  8  9 10
which(iris$Species=="setosa")
[1]  1  2  3  4  5  6  7  8
Code
which.max(...)
base
Which of you ... is the first maximum?
which.max(iris$Sepal.Length) 
[1] 132
	
Code
which.min(...)
base
Which of you ... is the first minimum?
which.min(iris$Sepal.Width)
[1] 61
	
Code
with(data, expr)
base
With 'data' do 'expr'
\(^*\)create local scope!
with(iris, Sepal.Length + Sepal.Width)
  [1]  8.6  7.9  7.9  7.7  8.6  9.3
Code
within(data, expr)
base
Within 'data' do 'expr'
# Brackets are not requires but good practice
within(iris[1:5,1:2], {Sepal.Length <- -10*Sepal.Length}) 
  Sepal.Length Sepal.Width
1          -51         3.5
2          -49         3.0
	
Code
write(X, file)
base
Write 'X' to a (text) 'file'
X <- matrix(1:16, ncol=4)
file <- ("~/test.txt")
write( t(X), file)
	
Code
x %% y
base
x modulo y

Code
x %/% y
base
"Integer divide" x by y elementwise

	
Code
x %in% y
base
Do the elements in x match the elements in y?
'"%in%" <- function(x, table) match(x, table, nomatch = 0) > 0'

1:3 %in% 2:4
c("a", "b", "c") %in% c("b", "c", "d")
[1] FALSE  TRUE  TRUE
[1] FALSE  TRUE  TRUE
	
Code
x <- scan()
base
Read input from the console into x\(^*\)
\(^*\)abbort with enter
x <- scan("")
1: 23
2: 32

Read 2 items
Code
x ^ y
base
Potentiate x by y elementwise 

	
Code
x11()
grDevices
Draw a plot on a separate device (window)
x11(width=5, height=5)
plot(1:10)
















