# Predicting SBA COVID-19 Loans Using Machine Learning
## Ryan Collins & Alex Clegg
###### PPol 670 Final Project May 2020

This project develops machine learning techniques to predict the size of Small Business Administration (SBA) disaster
loan needs at the coutny level related to the COVID-19 Paycheck Protection Program (PPP).

The model predicts SBA disaster loan amounts for a given county based upon historical disaster declaration loan data as well as 
county and zip code level census data. By combing census data such as employer payroll, employee number, sales and receipts, 
industry type, along with otherdemographic data (income levels, racial breakdown, education levels, number of businesses, 
etc.) we developed a multi-variate model that predicts the loan size administered by SBA during disaster scenarios. 
With this model, we then tested the model on future out-of-sample data as SBA released additional information on the program. 
We also began to articulate how this could be used to further calculate aggregate sums, which could prove
useful for policy makers as they estimate total cost of programs such as PPP, which as we’ve seen in recent
days, have had significantly more demand than thought.

## Model Summary

After testing both a linear and decision-tree regression model, it was clear that a CART-based approach was more predictive of average loan size. The model ultimately determined average county EIDL Loan as a function of: average county verified content loan, employees, annual payroll, total recepits, payroll in the first quarter, number of establishments in its jursdiction, cases of COVID-19, and deaths from COVID-19. In our evaluation of the data it merged that having an indicator variable for massive disasters (the "Michael Bay effect") improved the predictivity of the model, and this was included as well. 

## Results

Having a model like this available to policymakers as they craft policy with as much as uncertainty as PPP would enable better policy outcomes and proper funding of programs, eliminating situtations similar to the one faced at the outset of this program. Moreover, we believe the creation of the Michael Bay effect could help to engingeer a stronger prediction in future data, since we can in short tweak the variable to anticipate how much of an outlier the coronavirus pandemic has been. In short, we could try to predict what loan sizes would be had Harvey, Maria, or Sandy hit the entire country as opposed to specific states.


## Final Model
* [Model Webpage](https://collinsrd.github.io/final_project_repo/final.project1)
This page also includes a more thorough explanation of the model and the parameters chosen.

## PPP Resources
* [SBA PPP Homepage](https://www.sba.gov/funding-programs/loans/coronavirus-relief-options/paycheck-protection-program) 
* [US Treasury CARES Act Explainer](https://home.treasury.gov/policy-issues/cares/assistance-for-small-businesses)
* [US Senate Committee on Small Business and Entrepreneurship](https://www.sbc.senate.gov/public/index.cfm/paycheck-protection-program)
