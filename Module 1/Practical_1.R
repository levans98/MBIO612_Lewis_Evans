### Question 1

*  Draw a concepts diagram that uses all the following R and programming terminology 
* Include any missing keywords that will simplify the concepts diagrams 


`Code`, `Variable`, `Data`, `Function`, `Call`, `Invoke`, `Type`, `Expression`, `Assign`, `Return value`, `Character`, `Numeric`, `Integer`, `Logical`, `Data structure`, `Arguments`, `Parameters`, `Default values`, `Vector`, `Data Type`, `Statement`, `Comment`

For a brief description of concepts diagrams, see the following [page](https://www.lucidchart.com/pages/concept-map). A phone picture of simple doodle on paper with a pen will do, there is no need for a specific tool. 



We can discuss your solution next week. However, you are welcome to attach an image here if you wish. The following syntax can be used to include an image in a Jupyter or notebook:
  
  ```markdown
![](image_URL)
```

R users can, if they wish, include the URL where their image can be found.

https://drive.google.com/drive/folders/1mqz8oo9d3nHV-y72h4RmoLeMR18J-K0J?usp=drive_link

### Question 2

* Rename this notebook to `Practical_1`

* Make sure the notebook is set to use the `R` Kernel (instead of python by default)
* This is called the `runtime`

* Test the runtime to make sure everything works, use the cell below to instantiate a vector `x` with any 5 values and computing its mean.
* The mean function can be invoked using `mean` and passing it `x`
* Assign the returned value to a variable called `y`

* Create a cell above the current one and describe the computation that you just did
* A title that reads: "This is a markdown test"
* Text that reads: "the variable y contains the mean of 5 values."
* Try to format (emphasize) the name `x` so it stands out.


```{r}
#This is a markdown test. 
#The variable **y** contains the mean of 5 values
x <- c(10,20,30,40,50)
y <- mean(X)
print(y)
```

### Question 3

In cell below:
  * Create a statement that assigns to a variable `sec_per_min` the number of seconds in each minute
* Use the variable `sec_per_min` to compute a new variable called `sec_per_hour` representing the number of seconds per hour
* `sec_per_hour` is simply the number of `sec_per_min` multilied by 60.
* Use the variable `sec_per_hour` to compute a variable called `sec_per_day` representing the number of seconds per day
* `sec_per_day` is simply the numebr of `sec_per_hour` multilied by 24.

* Use an expression to show the calculated value; i.e., the number of seconds in a single day.

```{r}
sec_per_min <- 60
sec_per_hour <- sec_per_min* 60
sec_per_day <- sec_per_hour*24
sec_per_day <- 86400
```
### Question 4

* Recall that `c` creates atomic vectors

* What does the following create? 
  * Specifically, what is the of the data it contains?
   
  class(c(1, 2, 3, "Hi"))

type of data = character

* Would the following be valid?
  
  class(c(1, 2, 3, "Hi") + 1)
non-numeric argument to binary operator

* How about 

class(c(1, 2, 3, FALSE) + 1)
Numeric - i think because False is binary = 0

* Hint: recall that know that the function `class()` returns the atomic data type stored in a vector

### Question 5: 

* We will be reproducing the following plot

![](https://www.dropbox.com/s/c4nf3n96np3i7nm/simple_qplot_example.png?dl=1)



### Create `x-axis` values

* Create a variable called `x_axis` that is a `vector` of numerical values between 0 and 10 with a step of 0.5. 
* i.e., `x_axis` will contain the values 0, 0.5, 1, 1.5, 2 .... 10
* Hint: you need a function that returns a sequence of values as a vector

```{r}
x_axis <- seq(from=0, to=10, by= 0.5)
```

### Create `y-axis` values

* Create a variable called `y_axis` that is a list of $x^2 + 2x + 3 $. 
* I.e., each position in `y_axis` is computed as $x^2 + 2x + 3 $, x is the value at the same position in `x_axis`
* For example: 
  * The value at the first position of `y_axis` is 0^2 + 2*0 + 3 = 3
* The value at the second position of `y_axis` is 0.5^2 + 2*0.5 + 3 = 4.25
* etc...
* Hint: remember that arithmetic operations on a vector are evaluated element-wise

```{r}
y_axis <- x_axis^2 + 2*x_axis + 3

```

### Generate the plot of `x_axis` versus `y_axis`

* Plot the values of `x_axis` and `y_axis`
* Use the `qplot` function, which is part of `ggplot` library to plot the `x_axis` and `y_axis`.
* You can consult `qplot`s documentation to see what arguments it takes as input
 
* Change the behavior of your plot so that it has:
  * A label for the `x-axis`. Mine says "My  x_axis"
  * A label for the `y-axis`. Mine says "My  x_axis"
  * A title. Mine says "My amazing plot of x_axis versus y_axis"  
  * Dots that are bigger than those produced by default.
 
* Hint: We know that we can change the default behavior of a function by changing the default parameters.
  * Which default parameter (param) controls the `x-axis`, `y-axis`, and plot labels?
  * Which default parameter controls the size of the symbol (dot here)?

```{r}
install.packages('ggplot2')
library(ggplot2)
qplot(x_axis, y_axis, main = 'My amazing plot of x_axis versus y_axis') +
  geom_point(size=7) +
  xlab('My x') +
  ylab('My y')
   

