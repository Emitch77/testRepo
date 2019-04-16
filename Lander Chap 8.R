say.hello <- function()
{
  print("Hello, world!")
}
say.hello()
#
# one substitution
sprintf("Hello %s", "Jared")
#
# two substitutions
sprintf("Hello %s, today is %s", "Jared", "Sunday")
#
# build a string to print based on a function's argument
hello.person <- function(name)
{
  print(sprintf("Hello %s", name))
}
hello.person("Jared")
hello.person("Bob")
hello.person("Sarah")
# 
# adding a second argument (by position or name)
hello.person <- function(first, last)
{
  print(sprintf("Hello %s %s", first, last))
}
# by position
hello.person("Jared", "Lander")
#
# by name
hello.person(first = "Jared", last = "Lander")
#
# the other order
hello.person(last = "Lander", first = "Jared")
#
# just specify one name
hello.person("Jared", last = "Lander")
#
# or specify the other
hello.person(first = "Jared", "Lander")
#
# now specify the second argument first and provide the first argument with no name
hello.person(last = "Lander", "Jared")
#
# let's rewrite hello.person to provide "Doe" as the default last name
hello.person <- function(first, last = "Doe")
{
  print(sprintf("Hello %s %s", first, last))
}
# Call without specifying the last name
hello.person("Jared")
# 
# or call with a different last name
hello.person("Jared", "Lander")
#
#
# Returning Values
#
# first, build a function without an explicit return command
double.num <- function(x)
{
  x*2
}
double.num(5)
#
# now, build the same function with an explicit return command
double.num <- function(x)
{
  return(x*2)
}
double.num(5)
#
# any arguments after the return command will not be executed
double.num <- function(x)
{
  return(x*2)
  #
  # these commands will not be executed because the function already exited
  print("Hello")
  return(17)
}
double.num(5)
#
#
double.num <- function(x)
{
  return(x*2)
}
double.num(5)
#
# any arguments after the return command will not be executed
double.num <- function(x)
{
  (x*2)
  #
  # if the return command is removed form (x*2), the return(17) will overwrite the function result
  print("Hello")
  return(17)
}
double.num(5)
#
#
# do.call will specify the name of a function either as a character or as an object
run.this <- function(x, func = mean)
{
  do.call(func, args = list(x))
}
#
# find the mean by default
run.this(1:10)
#
# specify you want to calculate the mean
run.this(1:10, mean)
#
# calculate the sum
run.this(1:10, sum)
#
# calculate the standard deviation
run.this(1:10, sd)
