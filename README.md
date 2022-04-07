Analyis of CDC data on American Physical Activity.

## Summary:
https://chronicdata.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-American-C/8mrp-rmkw

https://chronicdata.cdc.gov/Nutrition-Physical-Activity-and-Obesity/Nutrition-Physical-Activity-and-Obesity-Behavioral/hn4x-zwk7

https://www.cdc.gov/nccdphp/dnpao/data-trends-maps/help/npao_dtm/limitations-risks.html
## Organization:

inputs/data contains the original datasets.

outputs/data contains the cleaned dataset

outputs/paper contains the paper and bibiliography.

scripts contains all the scripts relating to cleaning and organizing the dataset

### Step 1 ###
Simulated a dataset based on table 2.7.

Read PDF from DHS into R and converted table on page 32 of
the Jordan Population and Family Health Survey into a raw_data file.


### Step 2 ###
Cleaned raw data file.
Tested cleaned data using Pointblank package.

### Step 3 ###
Compose paper with analysis.

### Libraries used ###
1.[tidyverse](https://style.tidyverse.org/documentation.html)

2.[pointblank](https://rich-iannone.github.io/pointblank/)

3.[pdftools](https://cran.r-project.org/web/packages/pdftools/index.html)

4.[knitr](https://www.rdocumentation.org/packages/knitr/versions/1.30)

5.[haven](https://www.rdocumentation.org/packages/haven/versions/2.4.3)

6.[reshape2](https://www.rdocumentation.org/packages/reshape2/versions/1.4.4)

7.[kableExtra](https://www.rdocumentation.org/packages/kableExtra/versions/1.3.4)