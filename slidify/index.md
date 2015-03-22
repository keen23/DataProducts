---
title       : Mortality rate in India
subtitle    : based on Data collected from WHO
author      : keen23
job         : Programming Assignment
framework   : revealjs        # {io2012, html5slides, shower, dzslides, ...}
revealjs    : {transition: cube}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<br>
<br>
<h3>Mortality statistics of India</h3>

<br>
<h5>based on Data collected from <b> WHO </b> </h5> <br><br>
keen23  <br>
Programming Assignment

--- .class #id 


## About Programming Assignment

<br>
1. This assignment has been created for the <span style="color:green; font-weight:bold">Developing Data Products</span> course, a part of <b>Data Science</b> Specialization by <b>Johns Hopkins Bloomberg School of Public Health</b>. 
<br><br>
2.The  Programming Assignment has been done in<span style="color:green; font-weight:bold"> shiny </span> and the this slidify presentation is regarding the same app.


--- .class #id 


## About The App 

<br>
1. Analysis has been done on data collected about <span style="color:green; font-weight:bold"> mortality rate and life expectancy in India </span> from <span style="color:green; font-weight:bold"> WHO </span> website.<br><br>
2. This application has some filters in the <b> side panel</b> and the results are displayed in the <b> Main Panel </b>.  <br><br>
3. The Main panel consists of 3 Tabs for  <b> Plot, Summary Statistics and the Table </b> for displying the data.



--- .class #id 


## About The App 

<br><br>
1. The data file for this app has also been uploaded as some cleaning has been done to generate the desired results. <br><br>
2. The data file should be in the same directory for application to correctly run.<br>



--- .class #id 

## Filtering Data
<br>
<p> Three filters have been provided for filtering the results</p><br>
1. The very first filter is about the type of data user wants to view. There are 3 options in this:
<br/>
    a. Probability of Dying <br/>
    b. Age specific death rate <br/>
    c. Expectation of life <br/><br>
2. The second option is to filter the data based on the gender.<br>
3. This data is available for year <b> 1990, 2000 and 2012.</b> So, the third option is to filter the data for a specific year.


--- .class #id 


## Function used
<br>
1. Reactive function has been written that uses widget input and generates the output.<br>
2. The reactive function will update  the result whenever the original widget changes i.e. whenever user changes the input/filter values the output will be updates accordingly.<br>
3. This application has some filters in the side panel and the results are displayed in the Main Panel.


--- .class #id 

## Output


<img src="assets/img/output.jpg" width="95%">


