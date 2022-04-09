# eICU-Patients-Mortality-Prediction

This repository is used for CBB 750 final project.

## Background

Electronic Intensive Care Unit (eICU) supports caregivers to provide diagnoses and treatment to hospital patients who need the most critical care by remote intensivists using technology like videoconferencing. By using eICU technology, clinical physicians could provide real-time audio and video monitoring of ICU patients, calculate APACHE score on every patient and allow continual quality improvement of patient monitoring, thus making a difference in the lives of their patients. 


## Methods

1) For data integration, we use database management system such as MySQL to create database and do queries, in order to have a general overview of potential relationships between different factors. 

2) For data cleaning, we use pandas and numpy if needed to drop the unwanted columns and rows and select needed information to generate a cleaned and structured dataset.

3) For mortality prediction of eICU patients, we use prediction methods such as native bayes and logistic regression with model enhancement.


## Data source

The data we will use is a demo version of the eICU Collaborative Research Database, including over 2500 unit stays selected from 20 of the larger hospitals. Dataset includes vital sign measurements, care plan documentation, severity of illness measures, diagnosis and treatment information.
Data could be accessed through [eICU Collaborative Research Database Demo](https://physionet.org/content/eicu-crd-demo/2.0.1/).


## Data License

Data license: [Open Data Commons Open Database License v1.0](https://physionet.org/content/eicu-crd-demo/view-license/2.0.1/)


## Maintainer

| Name         | Github Account  | Email                 | Organization                                                 |
| :----------: | ----------------|-----------------------| ------------------------------------------------------------ |
| Lejia Hu     | @lejiahu776     | lejia.hu@yale.edu     | Graduate student, Yale School of Public Health               |
| Yuechen Liu  | @YCKellyLiu     | yuechen.liu@yale.edu  | Graduate student, Yale School of Public Health               |
| Qingyang Yu  | @QingyangYu0529 | qingyang.yu@yale.edu  | Graduate student, Yale School of Public Health               |
| Kristal Zhou | @kristalz       | kristal.zhou@yale.edu | Graduate student, Yale School of Public Health               |
