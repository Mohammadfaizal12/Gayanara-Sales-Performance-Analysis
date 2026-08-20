# Gayanara Sales Performance & Business Analysis
### End-to-End Sales Analysis using SQL & Microsoft Excel

Gayanara Sales Performance & Business Analysis is an end-to-end data analytics project using SQL and Microsoft Excel to analyze sales performance, customer transactions, product performance, geographic contribution, order outcomes, and promotional effectiveness.

The project combines data preparation, SQL analysis, Excel PivotTables, PivotCharts, and dashboard development to answer practical business questions and generate actionable insights.

---

## Project Overview

Gayanara is an online fashion store with transactional data covering customers, orders, products, shipping locations, promotional campaigns, and order statuses.

This project analyzes Gayanara's sales performance from multiple business perspectives, including:

- Sales performance and revenue trends
- Product, brand, and category performance
- Geographic revenue contribution
- Cancellation and return performance
- Promotional performance
- AOV comparison between promotional and non-promotional orders

The project uses **SQL for data preparation and analytical queries**, while **Microsoft Excel** is used for exploratory analysis, PivotTables, PivotCharts, and interactive dashboard development.

---

## Project Objectives

The main objectives of this project are to:

- Analyze overall sales performance and revenue trends.
- Identify high-performing products, brands, categories, and cities.
- Evaluate cancellation and return performance.
- Analyze promotional performance based on AOV and discount rate.
- Compare promotional and non-promotional transactions.
- Identify business opportunities and provide data-driven recommendations.

---

# Business Questions

## 1. Sales Performance

- What is the total revenue from delivered orders?
- How many delivered orders are there?
- What is the Average Order Value (AOV)?
- How does monthly revenue change over time?
- Are there seasonal or promotional patterns in sales?

## 2. Order Performance

- What is the cancellation rate?
- What is the return rate?
- How are orders distributed across different order statuses?

## 3. Product & Brand Performance

- Which products have the highest sales quantity?
- Which products generate the highest revenue?
- Which brands contribute the most revenue?
- Which product categories generate the highest revenue?

## 4. Geographic Performance

- Which cities generate the highest revenue?
- How is revenue distributed across locations?

## 5. Promotional Performance

### Business Case #6 — Promo: Ngangkat Penjualan atau Bakar Duit?

The marketing team regularly provides promotional codes but has not evaluated whether promotional orders actually generate higher-value transactions.

The analysis focuses on:

- Comparing AOV between **With Promo** and **No Promo** orders.
- Handling missing promotional and discount values.
- Measuring the total discount given to customers.
- Comparing AOV and discount rate across promotional campaigns.
- Identifying promotions that demonstrate stronger transaction value relative to discount cost.
- Evaluating whether promotional campaigns should be continued, optimized, or reviewed.

---

# Dataset

The Gayanara dataset consists of several related tables:

- Customers
- Orders
- Order Items
- Products
- Reviews

The main sales analysis uses data from the:

- `orders`
- `order_items`
- `products`

<a href="https://github.com/Mohammadfaizal12/Gayanara-Sales-Performance-Analysis/tree/main/raw%20data">Dataset</a>.

---

# Tools Used

### SQL

- PostgreSQL
- CTE (`WITH`)
- `CASE WHEN`
- `CAST`
- `REPLACE`
- `TRIM`
- `COUNT`
- `SUM`
- `ROUND`
- `GROUP BY`

### Microsoft Excel

- PivotTable
- PivotChart
- Excel formulas
- Data Cleaning
- Data Preparation
- Dashboard Design

---

# Data Preparation

The data preparation process included:

- Reviewing data structure and data quality.
- Validating data types.
- Handling missing and blank values.
- Converting text-based numeric fields into numeric values.
- Preparing data relationships.
- Combining order, product, and order item information.
- Creating analytical datasets for business questions.

### Promotional Data Preparation

For the promotional analysis:

- Blank `discount_amount_idr` values were treated as `0`.
- Promotional orders were segmented into:
  - `With Promo`
  - `No Promo`
- Only `delivered` orders were included in the AOV and promotional performance analysis.

---

# Analytical Approach

## 1. Sales Performance Analysis

PivotTables and SQL queries were used to calculate:

- Total Revenue
- Total Orders
- AOV
- Monthly Revenue
- Cancellation Rate
- Return Rate
- Revenue by Product
- Revenue by Brand
- Revenue by Category
- Revenue by City

## 2. Promotional Performance Analysis

Promotional orders were analyzed using:

### AOV

Average Order Value was calculated as:

`Total Revenue / Total Orders`

### AOV Difference

The overall AOV difference was calculated by comparing promotional and non-promotional orders:

`AOV Difference = AOV With Promo - AOV No Promo`

### Discount Rate

Discount Rate was calculated as:

`Discount Rate = Total Discount / Total Revenue`

This metric shows the proportion of revenue represented by discounts.

---

# Promotional Analysis — Business Case #6

## AOV Comparison

| Metric | No Promo | With Promo | Difference |
|---|---:|---:|---:|
| Total Orders | 1,059 | 717 | -342 |
| Total Revenue | Rp540,219,000 | Rp337,533,049 | - |
| Total Discount | Rp0 | Rp22,184,951 | - |
| AOV | Rp510,122 | Rp470,757 | **-Rp39,364** |
| AOV Difference | - | - | **-7.72%** |

### Key Finding

Orders using promotional codes generated an average order value of approximately **Rp470,757**, compared with **Rp510,122** for orders without promotions.

This means promotional orders had an AOV approximately **7.7% lower** than non-promotional orders.

Therefore, based on the available transaction data, promotional orders did **not demonstrate a higher average transaction value overall**.

---

## Promotional Campaign Performance

| Promo Code | Orders | Revenue | Discount | AOV | Discount Rate |
|---|---:|---:|---:|---:|---:|
| SALE2024 | 91 | Rp49,301,571 | Rp2,801,429 | **Rp541,776** | **5.68%** |
| HARI BELANJA | 89 | Rp45,026,734 | Rp2,825,266 | Rp505,918 | 6.27% |
| HARBOLNAS22 | 80 | Rp39,514,624 | Rp2,590,376 | Rp493,933 | 6.56% |
| RAMADAN23 | 86 | Rp42,063,909 | Rp2,768,091 | Rp489,115 | 6.58% |
| NEWUSER | 103 | Rp46,449,171 | Rp3,257,829 | Rp450,963 | 7.01% |
| MEMBER10 | 99 | Rp44,005,447 | Rp2,965,553 | Rp444,499 | 6.74% |
| FLASHSALE | 83 | Rp35,821,689 | Rp2,518,311 | Rp431,587 | 7.03% |
| WEEKEND25 | 86 | Rp35,349,904 | Rp2,458,096 | Rp411,045 | 6.95% |

### Key Promotional Insight

**SALE2024** showed the strongest performance among the analyzed promotional campaigns.

It generated:

- AOV of **Rp541,776**
- Discount Rate of **5.68%**
- AOV higher than the No Promo baseline of **Rp510,122**

This combination makes SALE2024 a strong candidate for further evaluation.

Meanwhile, promotions such as **FLASHSALE** and **WEEKEND25** had relatively lower AOV while maintaining relatively high discount rates.

---

# Key Findings

### 1. Promotional orders have lower AOV than non-promotional orders

With Promo orders generated an AOV of approximately **Rp470,757**, which is **7.7% lower** than the No Promo AOV of approximately **Rp510,122**.

This indicates that promotional transactions did not generate higher average transaction values overall.

### 2. Gayanara provided Rp22.18 million in discounts

Across **717 promotional orders**, Gayanara provided approximately **Rp22.18 million** in total discounts.

This represents a significant promotional cost that should be evaluated against the value generated by each campaign.

### 3. SALE2024 is the strongest promotional candidate

SALE2024 generated the highest AOV among the promotional campaigns at approximately **Rp541,776**, while also having the lowest discount rate among the analyzed promotional campaigns at **5.68%**.

This combination suggests that SALE2024 may be more efficient than other campaigns based on transaction value and discount cost.

### 4. Some promotions require further evaluation

FLASHSALE and WEEKEND25 showed relatively low AOV compared with No Promo while maintaining discount rates close to 7%.

These campaigns should be reviewed to determine whether the discounts are generating sufficient business value.

---

# Key Recommendations

### 1. Continue promotional campaigns selectively

Promotions should not be evaluated only based on the number of orders generated.

Gayanara should consider both:

- AOV
- Discount Rate

Promotions with higher AOV and relatively lower discount rates should receive greater attention.

### 2. Evaluate SALE2024 for future campaigns

SALE2024 can be used as a benchmark for future promotional campaigns because it generated a higher AOV than No Promo while requiring a relatively lower discount rate.

Further analysis should investigate what customer, product, or campaign characteristics contributed to its performance.

### 3. Review low-AOV promotional campaigns

Promotions such as FLASHSALE and WEEKEND25 should be evaluated further.

Possible areas for optimization include:

- Discount value
- Minimum purchase requirements
- Target customer segments
- Campaign timing
- Product eligibility

### 4. Use A/B Testing to measure incremental revenue

The current dataset can compare promotional and non-promotional transactions, but it cannot prove that promotional discounts directly caused additional revenue.

There is no controlled counterfactual showing what customers would have purchased without the promotion.

Therefore, future promotional campaigns should use **A/B testing or a control group** to measure true incremental revenue and determine whether the additional sales justify the discount cost.

---

# Dashboard

The interactive dashboard includes:

### KPI Cards

- Total Revenue
- Total Orders
- AOV
- Cancellation Rate
- Return Rate

### Visualizations

- Monthly Revenue Trend
- AOV by Seasonal & Promotional Event
- Top 10 Products by Quantity
- Top 10 Products by Revenue
- Revenue by Category
- Revenue by Brand
- Top 10 Cities by Revenue
- Interactive Slicers

<p align="center">
  <img 
    src="https://github.com/user-attachments/assets/9b16bfc7-114d-451c-acda-2934fe4b54a7" 
    alt="Gayanara Sales Performance Dashboard"
    width="100%"
  />
</p>

---

# Project Deliverables

- Interactive Excel Dashboard
- Excel PivotTable Analysis
- PivotChart Visualizations
- Promotional Performance Analysis
- Executive Summary
- Business Insights
- Business Recommendations

---

# Executive Summary

## Key Insights

### Sales & Operational Performance
1. **Overall Revenue Growth:** Revenue shows an overall upward trend despite monthly fluctuations, reaching peak monthly revenue of ~Rp45 million in early 2025.
2. **Revenue Concentration:** Sales are heavily concentrated in specific core products, top-performing brands, key categories, and major cities.
3. **Operational Leakage:** A cancellation rate of **10.9%** and a return rate of **5.0%** indicate potential revenue leakage caused by fulfillment or inventory issues.

### Promotional Effectiveness (Business Case #6)
4. **Promo AOV Deficit:** Promotional orders generated an AOV **7.7% lower** (Rp470,757) than non-promotional orders (Rp510,122), showing that promos did not inherently increase transaction size.
5. **Campaign Disparity:** **SALE2024** performed best with the highest AOV (Rp541,776) and lowest discount rate (5.68%), whereas **FLASHSALE** and **WEEKEND25** showed high discount costs (~7%) with subpar AOV.

---

## Key Recommendations

### Sales Strategy & Operations
1. **Focus on High-Value Segments:** Prioritize inventory allocation, stock visibility, and marketing push for top-performing product categories, brands, and high-contributing geographic locations.
2. **Mitigate Revenue Leakage:** Investigate root causes behind the 10.9% cancellation and 5.0% return rates (e.g., stock availability accuracy, delivery speed, or product quality control) to prevent unrealized revenue.

### Promotional Optimization
3. **Scale Successful Frameworks:** Replicate the **SALE2024** strategy as a benchmark for future campaigns due to its superior AOV and cost efficiency.
4. **Re-evaluate / Restructure Inefficient Promos:** Review or discontinue low-AOV campaigns (such as FLASHSALE) by adjusting minimum purchase requirements or discount thresholds.
5. **Implement A/B Testing:** Utilize control groups in future promotional rollouts to measure true incremental revenue and ensure discount costs deliver net-positive business value.---

# Limitations

The promotional analysis is based on observational transaction data.

Although the analysis compares promotional and non-promotional orders, it cannot determine whether promotions directly caused additional revenue.

A customer who purchased using a promotion may have made the purchase even without the discount.

Therefore, the analysis should be interpreted as a **performance comparison**, not a causal measurement of promotional effectiveness.

---

# Conclusion

The Gayanara analysis demonstrates how transactional data can be transformed into actionable business insights using SQL and Microsoft Excel.

The promotional analysis shows that promotional orders did not generate higher AOV overall compared with non-promotional orders. However, certain campaigns, particularly SALE2024, demonstrated a more attractive combination of transaction value and discount rate.

Rather than eliminating promotions entirely, Gayanara should optimize promotional campaigns selectively and use controlled experiments in future campaigns to measure true incremental revenue.

This project demonstrates an end-to-end analytical workflow:

**Business Question → Data Preparation → SQL Analysis → Excel Analysis → KPI & Visualization → Business Insight → Recommendation**
