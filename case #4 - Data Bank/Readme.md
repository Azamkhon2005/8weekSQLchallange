# [8-Week SQL Challenge](https://8weeksqlchallenge.com/) 
![Star Badge](https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99)
[![View Main Folder](https://img.shields.io/badge/View-Main_Folder-971901?)](https://github.com/Azamkhon2005/8weekSQLchallange)
[![View Repositories](https://img.shields.io/badge/View-My_Repositories-blue?logo=GitHub)](https://github.com/Azamkhon2005?tab=repositories)
[![View My Profile](https://img.shields.io/badge/View-My_Profile-green?logo=GitHub)](https://github.com/Azamkhon2005)
# 💸 Case Study #4 - Data Bank
<p align="center">
<img src="https://8weeksqlchallenge.com/images/case-study-designs/4.png" width=40% height=40%>



## 🛠️ Problem Statement
> Danny thought that there should be some sort of intersection between these new age banks, cryptocurrency and the data world…so he decides to launch a new initiative - **Data Bank**!
> 
> The management team at Data Bank want to increase their total customer base - but also need some help tracking just how much data storage their customers will need.
> 
>This case study is all about calculating metrics, growth and helping the business analyse their data in a smart way to better forecast and plan for their future developments!

## 📂 Dataset
Danny has shared with you 2 key datasets for this case study:
### **```region```**

<details>
<summary>
View table
</summary>

This ```regions``` table contains the ```region_id``` and their respective ```region_name``` values

| "region_id" | "region_name" |
|-------------|---------------|
| 1           | "Australia"   |
| 2           | "America"     |
| 3           | "Africa"      |
| 4           | "Asia"        |
| 5           | "Europe"      |
</details>

### **```Customer Nodes```**

<details>
<summary>
View table
</summary>

Customers are randomly distributed across the nodes according to their region - this also specifies exactly which node contains both their cash and data.
This random distribution changes frequently to reduce the risk of hackers getting into Data Bank’s system and stealing customer’s money and data!
Below is a sample of the top 10 rows of the ```data_bank.customer_nodes```

| "customer_id" | "region_id" | "node_id" | "start_date" | "end_date"   |
|---------------|-------------|-----------|--------------|--------------|
| 1             | 3           | 4         | "2020-01-02" | "2020-01-03" |
| 2             | 3           | 5         | "2020-01-03" | "2020-01-17" |
| 3             | 5           | 4         | "2020-01-27" | "2020-02-18" |
| 4             | 5           | 4         | "2020-01-07" | "2020-01-19" |
| 5             | 3           | 3         | "2020-01-15" | "2020-01-23" |
| 6             | 1           | 1         | "2020-01-11" | "2020-02-06" |
| 7             | 2           | 5         | "2020-01-20" | "2020-02-04" |
| 8             | 1           | 2         | "2020-01-15" | "2020-01-28" |
| 9             | 4           | 5         | "2020-01-21" | "2020-01-25" |
| 10            | 3           | 4         | "2020-01-13" | "2020-01-14" |
</details>

### **```Customer Transactions```**

<details>
<summary>
View table
</summary>

This table stores all customer deposits, withdrawals and purchases made using their Data Bank debit card.

| "customer_id" | "txn_date"   | "txn_type" | "txn_amount" |
|---------------|--------------|------------|--------------|
| 429           | "2020-01-21" | "deposit"  | 82           |
| 155           | "2020-01-10" | "deposit"  | 712          |
| 398           | "2020-01-01" | "deposit"  | 196          |
| 255           | "2020-01-14" | "deposit"  | 563          |
| 185           | "2020-01-29" | "deposit"  | 626          |
| 309           | "2020-01-13" | "deposit"  | 995          |
| 312           | "2020-01-20" | "deposit"  | 485          |
| 376           | "2020-01-03" | "deposit"  | 706          |
| 188           | "2020-01-13" | "deposit"  | 601          |
| 138           | "2020-01-11" | "deposit"  | 520          |
</details>
