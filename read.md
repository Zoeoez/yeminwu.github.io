### Children die of abuse from 2011-2015 in US

### Yemin Wu
       
       
In 2016, ProPublica and The Boston Globe asked states for records of every child who died from child abuse between 2011 and 2015.

In each record, CAPTA asked states to list the age and gender of the child, and information about a household’s prior contact with welfare services. The information is supposed to help government agencies prevent child abuse, neglect and death.

I have already done some data cleaning to the original data.I use Excel's filter function to unify the data which has similar meaning such as 'AZ_‘ and AZ, 'F' and ‘female'. I also change '-' to not sure.

Here is the data downloaded from ProPublica Data Store. Services_provided refers to whether services previously have been provided or not.

![image](https://github.com/Zoeoez/yeminwu.github.io/blob/master/屏幕快照%202020-05-04%20上午8.14.53.png)

Since the type of most of the data here is categorical, instead of finding relstionships between variables,  I am curious about how the data is distributed. In other word, I am interested in questions such as which state has most deaths? Or does service provided infect the death? Therefore, I  select all categorical variables of data and name it CAPTA_categorical.

![image](https://github.com/Zoeoez/yeminwu.github.io/blob/master/屏幕快照%202020-05-04%20上午8.15.00.png)

### Contextual viz 1

I am not sure about choosing which column to discuss, so I first use ipywidgets to create an interactive bar chart which enables me to select the column and see each of them looks like and then dicide which one to go deeper.

From the bar chart below, Texas had most children die from maltreatment and abuse recorded from 2011-2015.Then was Florida and Georgia. Moreover, the number of deaths experienced a sharp decline in 2016.And age of 0 accounted for the most. From the plot, males are more than females.However, the difference is slight and normal.

![image](https://github.com/Zoeoez/yeminwu.github.io/blob/master/屏幕快照%202020-05-04%20上午7.33.27.png)
![image](https://github.com/Zoeoez/yeminwu.github.io/blob/master/屏幕快照%202020-05-04%20上午8.38.44.png)


### Contextual viz 2

What I am interested in is the service_provided column. Services previously have been provided(Y) were more than serivices not provided before.I use group by to count how many death cases once have been provided services.2170 have been provided services before and 118 have not. Is this happened because there existed a outlier in a certain year？

![image](https://github.com/Zoeoez/yeminwu.github.io/blob/master/屏幕快照%202020-05-04%20上午8.38.44.png)

### Central viz 

Then I go deeper in each year's data.I first use group by to get every year's details about the provided service. And then I create a bar chart of death cases between 2011-2015. 


Each bar has two groups: one is service-provided and the other is service-not-provided before.The purple one stands for service_provided_before while pink one stands for service_not_provided_before. Surprisely, from 2011-2015, among every year' s reported death cases, cases have been provided service are far more than cases that have not been provided service. 


This makes me start to think about the reason behind it.My guess is that if the cases have been provided service before, it means the abuse may repeat again and again.The current intervention of facility is not enough to stop the abusement. In order to prevent child abuse, neglect and death, further efforts should be taken by government. 

![image](https://github.com/Zoeoez/yeminwu.github.io/blob/master/屏幕快照%202020-05-04%20上午8.38.44.png)



###Summary and conclusion:



###Source of data:

The data is from https://projects.propublica.org/graphics/child-abuse. Sources: Arizona, Freedom of Information Act requests; Arkansas, Florida, Indiana, New Jersey, North Dakota, Washington and Wisconsin child welfare agencies.

