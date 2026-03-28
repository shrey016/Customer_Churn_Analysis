CREATE TABLE churn_analysis.customer_churn (
    gender VARCHAR(10),
    SeniorCitizen VARCHAR(10),
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure DOUBLE,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(50),
    MonthlyCharges VARCHAR(20),
    TotalCharges VARCHAR(20),
    Churn VARCHAR(10)
);




LOAD DATA LOCAL INFILE '/Users/shrey/Great_learning/Capstone_project/Customer_Churn/customer_churn.csv'
INTO TABLE churn_analysis.customer_churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

use churn_analysis;
set safe_sql_updates=0;
update customer_churn set SeniorCitizen=(
CASE when SeniorCitizen='1' then 'Yes'
when SeniorCitizen='0' then 'No'
END);

update customer_churn set PaymentMethod=(
case when PaymentMethod='electronic check' then 'Electronic check'
when PaymentMethod='ELECTRONIC CHECK' then 'Electronic check'
when PaymentMethod='Electronic Check' then 'Electronic check'
when PaymentMethod='  Electronic check  ' then 'Electronic check'
when PaymentMethod='  Credit card (automatic)  ' then 'Credit card (automatic)'
when PaymentMethod='Credit Card (Automatic)' then 'Credit card (automatic)'
when PaymentMethod='CREDIT CARD (AUTOMATIC)' then 'Credit card (automatic)'
when PaymentMethod='credit card (automatic)' then 'Credit card (automatic)'
when PaymentMethod='  Mailed check  ' then 'Mailed check'
when PaymentMethod='mailed check' then 'Mailed check'
when PaymentMethod='Mailed Check' then 'Mailed check'
when PaymentMethod='MAILED CHECK' then 'Mailed check'
when PaymentMethod='BANK TRANSFER (AUTOMATIC)' then 'Bank transfer (automatic)'
when PaymentMethod='bank transfer (automatic)' then 'Bank transfer (automatic)'
when PaymentMethod='  Bank transfer (automatic)  ' then 'Bank transfer (automatic)'
when PaymentMethod='Bank Transfer (Automatic)' then 'Bank transfer (automatic)'
else PaymentMethod
end);

update customer_churn set Churn=(
case when Churn='NO' then 'No'
when Churn='  No  ' then 'No'
when Churn='no' then 'No'
when Churn='yes' then 'Yes'
when Churn='YES' then 'Yes'
when Churn='  Yes  ' then 'Yes'
else Churn
end);

UPDATE customer_churn SET MonthlyCharges= REPLACE(MonthlyCharges,'$','');
UPDATE customer_churn SET MonthlyCharges= REPLACE(MonthlyCharges,'£','');
UPDATE customer_churn SET MonthlyCharges=null WHERE LOWER(TRIM(MonthlyCharges))='nan';


UPDATE customer_churn SET TotalCharges= REPLACE(TotalCharges,'$','');
UPDATE customer_churn SET TotalCharges= REPLACE(TotalCharges,'£','');
UPDATE customer_churn SET TotalCharges= REPLACE(TotalCharges,'-','');
UPDATE customer_churn SET TotalCharges=null WHERE LOWER(TRIM(TotalCharges))='nan';

UPDATE customer_churn SET TENURE=ABS(TENURE) WHERE TENURE<0;

ALTER TABLE customer_churn
MODIFY MonthlyCharges DOUBLE;


ALTER TABLE customer_churn
MODIFY TotalCharges DOUBLE;