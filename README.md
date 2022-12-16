# Home-Remodeling-Capstone
Capstone Project completed in Fall 2022 as part of Masters in Data Science program at Northwestern University


##Business Problem

For the purposes of this project, Remodelers R Us was established as a fictitious home remodeling company in the greater Boston area struggling to effectively generate leads or help potential clients decide if remodeling is right for them in the context of their return on investment. Our team, T51, acted as an analytics consulting firm hired by Remodelers R Us to take a data-driven approach and provide analytic solutions.

Project Objectives

T51’s objectives were to:
•	Identify viable target opportunities for near-term home remodeling in the greater Boston area
•	Answer key questions potential customers have about their remodeling decisions
•	Segment prospective customers with similar characteristics for target marketing opportunities 
•	Create software solutions powered by data analytics to visually depict opportunities

Data Sources

T51 identified publicly available property and demographic datasets to use for analysis and modeling. Data was sourced from the City of Boston’s Open Data Hub, Mass.gov, and Census.gov. Data consisted of property and building characteristics, location data, and census tract level tables of age, sex, income, and education. The data was filtered on owner-occupied single-family homes to focus efforts on homeowners rather than landlords. The final aggregated and cleaned dataset contained ~20,000 properties.

Modeling

Classification was used to predict properties likely to undergo a home remodel within the next 12-24 months. The methods employed included: Logistic Regression, Lasso Regression, Decision Trees, Random Forest, Gradient Boost, and Neural Networks. All methods leveraged a “class weight” parameter as a result of the dataset being severely unbalanced; the target class represented only 2.7% of all observations. Categorical features in the dataset were one hot encoded and four new features were created based on year properties were built, year properties were sold, year of last remodel, if properties have ever been remodeled, and distance in miles from the center of Boston. Imputation, transformations, and dropping unnecessary columns were also performed. The dataset was split 80/20 into training and test sets. In the graph below are 10 features preferred by the models and chosen for model development. Logistic Regression was chosen as the most reliable model. Age of Sale, Distance, and Total Rooms were the most important features. Interpreting these results, homes that sold more recently or are located closer to downtown Boston or had more rooms were more likely to remodel within the next 12-24 months.


<img width="468" alt="image" src="https://user-images.githubusercontent.com/109634860/208024006-3301bd22-d0dd-4876-afa4-6a54d28b0b7f.png">








