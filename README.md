# eICU-Patients-Mortality-Prediction

This repository is used for CBB 750 final project.

## Background

Electronic Intensive Care Unit (eICU) supports caregivers to provide diagnoses and treatment to hospital patients who need the most critical care by remote intensivists using technology like videoconferencing. By using eICU technology, clinical physicians could provide real-time audio and video monitoring of ICU patients, calculate APACHE score on every patient and allow continual quality improvement of patient monitoring, thus making a difference in the lives of their patients. 


## Methods

1) For data integration, we used database management system MySQL to create database by joining four datasets: apachepredvar.csv, apacheapsvar.csv, lab1.csv and patient.csv.

2) For data cleaning:

a. First we removed redundant columns and rows by comparing missing values of each column manually and select which to drop, and removing the duplicated patient information (only kept the last record for each patient). 

b. Then we solved the problem of missing values by replacing with mean or median of the variable or dropping all missing values. 

c. We also encoded categorical data to numerical or dummy variables: encoded "Gender" and "ethnicity" into dummy variables, and adjusted "age" so that all patients who are more than 89 years old was assigned as 89 years old. 

d. We created several variables: "fio2/pao2", "bmi", "GCS" were calculated from other variables.

e. We used regular expression to generate the type of admission, which recorded the condition or reason that a patient got into the ICU. Type of admission was categorized into three groups: "Scheduled" (terms: "surgery", "placement", "-tomy", "replacement", "procedure", etc. ), "Unschedule" (terms: "trauma"), and "Others".

f. Finally we calculated the [SAPS score](https://www.mdcalc.com/simplified-acute-physiology-score-saps-ii).

3) We performed exploratory data analysis to visualize the difference between patients with different discharge status.

4) In the machine learning part:

a. First we did feature selection: Used chi-square test on categorical variables, and used mutual information on numerical variables.

b. We also test the assumptions of logistic regression.

c. We built model using logistic regression and random forest, respectively.

d. Eventually we used cross validation to evaluate the model performance. 

## Conclusion

1) Compared with other studies (Sheikhalishahi et al. and Ma et al.), our model reached a better performance only using a demo version data of eICU patients.

2) By comparing two machine learning methods, logistic regression model was more accurate to discriminate patients’ mortality status.

3) Among all the predictors we used in the model: Seven are numerical, and four are categorical. Ethnicity was the only demographic predictor, the other categorical predictors included whether the patients had lymphoma or hepatic failure, whether the patients was on ventilation. All the numerical predictors are associated with ICU status, including SAPS score, GCS, temperature, creatinine, meanbp, bicarbonate and fio2/pio2.

4) Since we have a relatively high mortality predict precision of 83%, this model might be useful for early and accurate detection of high risk patients.


## Data source

The data we will use is a demo version of the eICU Collaborative Research Database, including over 2500 unit stays selected from 20 of the larger hospitals. Dataset includes vital sign measurements, care plan documentation, severity of illness measures, diagnosis and treatment information.
Data could be accessed through [eICU Collaborative Research Database Demo](https://physionet.org/content/eicu-crd-demo/2.0.1/).


## Data License

Data license: [Open Data Commons Open Database License v1.0](https://physionet.org/content/eicu-crd-demo/view-license/2.0.1/)


## Group Members

| Name         | Github Account  | Email                 | Organization                                                 |
| :----------: | ----------------|-----------------------| ------------------------------------------------------------ |
| Lejia Hu     | @lejiahu776     | lejia.hu@yale.edu     | Graduate student, Yale School of Public Health               |
| Yuechen Liu  | @YCKellyLiu     | yuechen.liu@yale.edu  | Graduate student, Yale School of Public Health               |
| Qingyang Yu  | @QingyangYu0529 | qingyang.yu@yale.edu  | Graduate student, Yale School of Public Health               |
| Kristal Zhou | @kristalz       | kristal.zhou@yale.edu | Graduate student, Yale School of Public Health               |

## Maintainer

Qingyang Yu (qingyang.yu@yale.edu)
