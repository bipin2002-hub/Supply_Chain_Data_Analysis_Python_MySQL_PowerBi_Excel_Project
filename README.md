# 🚚 Supply Chain Performance Analysis

> **Strategic Insights for Business Growth** — A comprehensive data-driven analysis of 180,519 global orders using Python, MySQL, Power BI, and Excel.

---

## 📌 Project Overview

This project performs an end-to-end supply chain analysis on a real-world transactional dataset covering multiple markets, regions, and customer segments worldwide. The goal is to uncover hidden patterns, operational inefficiencies, and growth opportunities within the supply chain ecosystem.

**Author:** Bipin Chandra Arya

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **Python** | EDA, statistical testing, outlier detection, correlation analysis |
| **MySQL** | Data storage, querying, and aggregation |
| **Power BI** | Interactive dashboards and KPI visualization |
| **Excel** | Data cleaning and preliminary exploration |

---

## 📂 Dataset Summary

| Detail | Info |
|--------|------|
| Total Orders | 1,80,519 |
| Total Features | 47 columns |
| Data Type | Transactional Supply Chain |
| Scope | Global — Multi-Market, Multi-Region |

### Column Categories

- **Customer Information** (8 columns) — ID, name, city, country, state, street, zipcode
- **Order Details** (10 columns) — ID, date, status, city, country, region, type
- **Shipping & Delivery** (6 columns) — shipping date, mode, delay days, delivery status, late delivery risk
- **Financial Metrics** (8 columns) — sales, profit, discount rate, profit ratio, order total
- **Product Information** (5 columns) — product name, price, category, quantity
- **Category & Department** (4 columns) — category name, department name
- **Geographic & Market** (3 columns) — market, latitude, longitude

---

## 📊 Key KPIs

| KPI | Value |
|-----|-------|
| Total Revenue | $36.78 Million |
| Total Profit | $3.97 Million |
| Profit Margin | 10.78% |
| On-Time Delivery Rate | 40.88% |
| Late Delivery Rate | 54.83% |
| Average Shipping Delay | 0.57 days |
| Orders at a Loss | 18.71% |
| Average Order Value (AOV) | $559.45 |
| Order Fulfillment Rate | 43.82% |
| Average Discount Rate | 10.17% |

---

## 🔍 Analysis Performed

### 1. Exploratory Data Analysis (EDA)
- Descriptive statistics across all 47 features
- Distribution analysis using histograms and KDE plots
- Outlier detection using the IQR method — identified 35,701 shipping delay outliers (19.8% of all orders)

### 2. Delivery & Shipping Analysis
- Delivery status breakdown: 98,977 late, 41,592 advance, 32,196 on-time, 7,754 canceled
- Shipping mode performance: Standard Class had near-zero delay; Second Class averaged 1.99 days delay
- Monthly and yearly delivery trend analysis

### 3. Sales & Profit Analysis
- Top 5 most profitable categories: Fishing ($756K), Cleats ($494K), Camping & Hiking ($427K), Cardio Equipment ($383K), Women's Apparel ($350K)
- Customer segment revenue: Consumer ($19.1M), Corporate ($11.17M), Home Office ($6.52M)
- Top product by revenue: Field & Stream Sportsman 16 Gun Fire Safe ($6.93M)

### 4. Geographic Analysis
- Top markets by orders: LATAM (51,594), Europe (50,252), Pacific Asia (41,260)
- Top markets by revenue: Europe ($10.87M), LATAM ($10.28M)
- Top regions: Western Europe ($5.89M), Central America ($5.67M)

### 5. Time Trend Analysis
- Yearly, quarterly, monthly, and weekday sales trends
- Peak performance: January (monthly), Saturday (weekday), Q3/Q4 (quarterly), 2015 (yearly)

### 6. Correlation Analysis
- Shipping Delay ↔ Late Delivery Risk: **r = 0.78** (strong positive)
- Sales ↔ Sales per Customer: **r = 0.99**
- Real Shipping Days ↔ Shipping Delay: **Spearman ρ = 0.604**

---

## 🧪 Statistical Tests

| Test | Question | Result |
|------|----------|--------|
| One-Sample T-Test | Is average shipping delay ≠ 0? | ✅ Significant (p = 0.00) |
| Independent T-Test | Do late deliveries have higher delays? | ✅ Significant (p = 0.00) |
| One-Way ANOVA | Do delays differ across shipping modes? | ✅ Significant (F = 23,246, p = 0.00) |
| Chi-Square Test | Shipping mode vs. delivery status relationship? | ✅ Significant (p = 0.00) |
| Chi-Square Test | Customer segment vs. late delivery risk? | ❌ Not significant (p = 0.599) |
| Pearson Correlation | Discount rate vs. profit ratio? | ❌ Not significant (r = -0.003) |
| Spearman Correlation | Real shipping days vs. shipping delay? | ✅ Significant (ρ = 0.604, p = 0.00) |

---

## 📈 Power BI Dashboard

The interactive Power BI dashboard includes:
- Monthly revenue and profit trends
- Delivery status distribution (donut chart)
- Revenue by market and region
- Orders by shipping mode
- Category-wise profit breakdown
- Region-wise summary table with KPIs

Filters available: Order Country, Order Status, Year

---

## ⚠️ Key Business Problems Identified

- 🔴 **High Late Delivery Risk** — 54.83% of all orders at risk of late delivery
- 🔴 **Profitability Gaps** — 18.71% of orders generated financial losses
- 🔴 **Shipping Inefficiencies** — Real shipping days consistently exceed scheduled days
- 🔴 **Market Imbalance** — Revenue heavily concentrated in Europe and LATAM
- 🔴 **Uncontrolled Discounting** — Outlier discounts reaching up to $500 per order

---

## ✅ Recommendations

1. **Improve Logistics & Delivery Operations** — Focus on route optimization and warehouse coordination, especially for Second Class Shipping
2. **Optimize Shipping Mode Strategy** — Shift volume toward Standard Class and Same Day Shipping
3. **Reduce Loss-Making Orders** — Review pricing, discount policies, and low-margin products
4. **Control Discounting Practices** — Implement stricter discount approval workflows
5. **Focus on High-Performing Categories** — Increase inventory and marketing for Fishing, Cleats, and Camping & Hiking
6. **Improve Low-Performing Categories** — Evaluate CDs, Toys, Books, and Golf Bags & Carts for repositioning or discontinuation
7. **Strengthen Market Expansion** — Invest in Europe and LATAM; develop growth strategies for Africa and USCA
8. **Enhance Payment & Order Processing** — Reduce the high volume of Pending Payment orders
9. **Use Predictive Analytics** — Adopt ML models for demand forecasting and inventory optimization
10. **Build Real-Time Dashboards** — Expand Power BI dashboards for continuous KPI monitoring

---

## 📁 Project Structure

```
supply-chain-analysis/
│
├── data/
│   └── Untitled document.pdf
│
├── notebooks/
│   ├── Supply Chain Analysis1.0 (1).ipynb
│  
├── sql/
│   └── Supply_chain_Analysis_sql.sql
│
├── dashboard/
│   └──Supply chain Analysis Dashboard.pbix
├── reports/
│   └──Supply Chain analysis Report.pdf
│
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

```bash
pip install pandas numpy matplotlib seaborn scipy sqlalchemy
```

### Run the Analysis

```bash
git clone https://github.com/your-username/supply-chain-analysis.git
cd supply-chain-analysis
jupyter notebook notebooks/01_eda.ipynb
```

### MySQL Setup

Import the dataset into MySQL and run queries from `sql/supply_chain_queries.sql`.

### Power BI Dashboard

Open `dashboard/supply_chain_dashboard.pbix` in Power BI Desktop and connect to your data source.

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 🙏 Acknowledgements

Dataset and analysis by **Bipin Chandra Arya**. Built as a portfolio project demonstrating end-to-end data analytics using Python, MySQL, Power BI, and Excel.

---

*If you found this project helpful, please ⭐ the repository!*
