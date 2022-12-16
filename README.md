# Home-Remodeling-Capstone
Capstone Project completed in Fall 2022 as part of Masters in Data Science program at Northwestern University




Business Problem

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


The AUC statistic was used as the primary determinant in assessing the best model. This statistic was used to measure how well the model can distinguish the true positive cases from the true negative; the higher the better. The best model was determined to be the Logistic Regression model with an AUC of 0.71 on the Test set. Across all measures this model is stable when comparing the Training results to Test and is not a complicated model; again, it only leverages 10 variables.


<img width="421" alt="image" src="https://user-images.githubusercontent.com/109634860/208024986-d3b49c9b-054a-4049-a26b-4b610c242c56.png">


Regression was used to predict the market value of a home and determine ROI based on different remodeling scenarios. Building value, which represents property value, was selected as the target variable. There were notable outliers which had to be considered for model accuracy purposes. Based on the distribution of building values, the data used for modeling was limited to properties with a building value of $3 million and less, which removed 124 properties. Through exploratory data analysis, the variables in the table below were identified as the best features for modeling.


RES_FLOOR	LAND_SF	GROSS_AREA	LIVING_AREA	LAND_VALUE
YR_BUILT	BED_RMS	FULL_BTH	HLF_BTH	KITCHEN
TT_RMS	FIRE_PLACE	NUM_PARKING	remodelcount	remodeled


Null values for the features chosen were imputed with the mode value of each. Categorical features were prepared for modeling using one hot encoder. Then, all features were scaled using standard scalar to improve training time. Lastly, an 80%/20% train/test split was used. The goal was to build and compare many different models to determine which model worked best. The Lazy Predict package from Python was used to run ten different models. The modeling results are presented below. LGBMRegressor had the best performance on the metrics of Adjusted R-squared, R-squared and RMSE while taking only incrementally longer to run than other models.


<img width="451" alt="image" src="https://user-images.githubusercontent.com/109634860/208028095-28618003-eff1-4413-b536-c86dd6b97291.png">


K-means clustering with principal component analysis (PCA) for dimensionality reduction was used to identify similarities in prospective customer data. Clustering was done on the two themes of Properties and Demographics. A unique approach was applied to leverage clusters across the two distinct themes, each containing k = 4 well-defined clusters. Sixteen “cross-clusters” (4 x 4) were created capturing all combinations between property and demographic features. Customer profiles were created for the top 4 cross-clusters. Each of these clusters is predicted to remodel over 45% of the time (the cutoff for properties expected to remodel within 12-24 months). Remodelers R Us can develop marketing strategies to target each of these clusters.


<img width="468" alt="image" src="https://user-images.githubusercontent.com/109634860/208028239-a46a641a-896b-4229-b6b4-71647ae6c498.png">

https://public.tableau.com/app/profile/natalia.barczyszyn/viz/RemodelersRUsCrossClusters/CrossClusterMap 




Deliverables

As part of the total solution, T51 developed a web-based sales performance dashboard and mobile app with ROI calculator. 

Dashboard:
The web-based dashboard uses the classification results of properties likely to remodel and was designed for future state once targeted ads have been distributed and leads start converting. Management and other sales employees can use the dashboard to track sales goals, KPIs, revenue, types of remodels completed, and neighborhoods with high potential for remodeling. The dashboard is fully interactive and allows for filtering. Mock sales data was used in the initial version of the dashboard and would be replaced with real data once sales data is collected. T51 also built a mobile version of the dashboard that can be accessed via Tableau Mobile app.

Link to dashboard:
https://public.tableau.com/views/RemodelersRUsDashboard/SalesDashboard?:language=en-US&:display_count=n&:origin=viz_share_link 


Mobile App with ROI Calculator:
The ROI app, integrated with the regression model, allows the user at Remodelers R Us to input a property address, specify the expected condition of the home after a remodel, enter a renovation cost estimate, and press “Predict Price” to determine the anticipated market value of the property after the remodel and the expected ROI for the client. The ROI app assists employees with answering key questions from clients about their remodeling decisions.


<img width="468" alt="image" src="https://user-images.githubusercontent.com/109634860/208028375-418f2fcc-58d7-4e9b-b94e-dd0ef2f18f63.png">


Conclusion

T51 was able to:
•	identify ~5,700 Boston properties as likely to remodel in the next 12-24 months
•	use the results from the classification model to identify four cross-clusters of prospects that Remodelers R Us can target through personalized marketing
•	design an interactive web-based dashboard for sales employees to track key sales performance metrics and monitor progress
•	design a mobile app that predicts market value based on changes made to a property and calculate the expected ROI of a remodel
•	-develop data-driven solutions to increase revenue and competitive advantage for Remodelers R Us


Recommendations

T51 makes the following recommendations to Remodelers R Us as next steps:
•	-Formulate marketing strategies based on the demographic and property types identified to be strong prospects for remodeling using either the top 4 cross-clusters or all 16 cross-clusters
•	-Leverage additional data sources: 1) Google Maps images to analyze image data and find visual similarities among properties and 2) Open Building Permits data to identify renovations already underway and remove properties from being targeted.
•	-Use a cloud database such as AWS to store large volumes of customer data which can refresh in real-time to provide up-to-date insights via dashboard and mobile app
•	-Train Remodelers R Us employees on dashboard and mobile app use
•	For Classification and Clustering, using remodeling likelihood scores rather than a binary “will remodel” and “will not remodel”

