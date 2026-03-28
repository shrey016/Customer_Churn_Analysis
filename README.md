# 📊 Customer Churn Analysis & Prediction

## 🚀 Project Overview

This project focuses on analyzing customer behavior and predicting churn using **SQL, Python (Machine Learning), and Tableau**. The goal is to identify key factors driving customer churn and provide actionable business insights to improve retention.

---

## 🎯 Objectives

* Analyze customer data to identify churn patterns
* Perform data cleaning and preprocessing
* Build and evaluate machine learning models for churn prediction
* Visualize insights using interactive dashboards
* Provide business recommendations to reduce churn

---

## 🗂️ Project Structure

```
├── data/                # Raw and processed datasets  
├── customer_churn.ipynb/          # Jupyter notebooks (EDA, preprocessing, modeling)  
├── sql_analysis_files/                # SQL scripts for data exploration and cleaning  
├── tableau_files/            # Tableau dashboards and visualizations  
└── README.md           # Project documentation 
 
```

---

## 🛠️ Tech Stack

* **Python**: Pandas, NumPy, Scikit-learn, XGBoost
* **SQL**: Data extraction, transformation, and analysis
* **Tableau**: Dashboarding and business visualization
* **Jupyter Notebook**: Exploratory Data Analysis & modeling

---

## 🔍 Key Analysis Performed

### 📌 Exploratory Data Analysis (EDA)

* Univariate and bivariate analysis
* Distribution analysis of numerical features (Tenure, MonthlyCharges, TotalCharges)
* Categorical feature analysis using count plots and churn distribution

### 📌 Data Preprocessing

* Handling missing values (median & domain-based imputation)
* Encoding categorical variables (One-Hot Encoding)
* Feature engineering and data cleaning

### 📌 Feature Insights

* Customers with **low tenure** have higher churn
* **Higher monthly charges** increase churn probability
* Lack of **TechSupport / OnlineSecurity** strongly correlates with churn
* **Month-to-month contracts** show the highest churn

---

## 🤖 Machine Learning Models

The following models were trained and evaluated:

* Logistic Regression
* Decision Tree
* Random Forest
* Bagging Classifier
* AdaBoost
* Gradient Boosting
* XGBoost (with hyperparameter tuning)

### 🔧 Model Tuning

* Performed using **RandomizedSearchCV**
* Optimized for **Recall** (important for churn detection)

---

## 📊 Evaluation Metrics

* Accuracy
* Precision
* Recall (Primary focus)
* F1-Score

---

## 📈 Tableau Dashboard

Interactive dashboards were created to visualize:

* Churn distribution across customer segments
* Impact of contract type, services, and payment methods
* Key churn-driving factors

---

## 🧠 Key Business Insights

* New customers are more likely to churn
* Customers with **high charges and low tenure** are high-risk
* Value-added services (TechSupport, Security) improve retention
* Long-term contracts significantly reduce churn

---

## 💡 Recommendations

* Improve onboarding experience for new customers
* Offer bundled services (TechSupport, Security)
* Provide incentives for long-term contracts
* Target high-risk customers with retention campaigns

---
