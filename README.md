# Nova Retail Group — Data Analytics Projects

## Overview

This repository contains a collection of Business Intelligence and Data Analytics projects completed using the Nova Retail Group dataset.

The projects demonstrate the process of taking raw retail data, analysing it using SQL, transforming it into a structured data model, and presenting business insights through Power BI.

The repository contains two connected projects:

1. **SQL Project** — Database analysis and business intelligence using SQL
2. **Power BI Project** — Data modelling, DAX, dashboard development and business storytelling

Both projects use the same Nova Retail Group dataset, allowing SQL analysis to be carried through into an interactive Power BI dashboard.

---

## Business Context

Nova Retail Group is a growing retail company operating across multiple regions in South Africa.

The company sells consumer products through:

- Physical stores
- Online channels

The objective of these projects is to analyse sales, customers, products and customer feedback in order to provide useful business insights for management.

---

# Projects

## 1. SQL Project

### Nova Retail Group Database Analysis

The SQL project focuses on analysing the Nova Retail database and answering business questions using SQL.

### Key SQL skills demonstrated

- `SELECT`
- `WHERE`
- `ORDER BY`
- Aggregate functions
- `GROUP BY`
- `HAVING`
- `JOINs`
- Subqueries
- Common Table Expressions (CTEs)
- Window functions
- `RANK()`
- `ROW_NUMBER()`
- Date functions
- Business intelligence analysis

### SQL Analysis

The project covers:

#### Part 1 — Basic SQL

- Product catalogue analysis
- Customer counts by region
- Recent orders
- Affordable products
- Customer satisfaction summaries

#### Part 2 — Intermediate SQL

- Sales by category
- Top customers
- Monthly sales trends
- Online vs Store performance
- Product performance and customer ratings

#### Part 3 — Advanced SQL

- Best-selling product by category
- Customer Lifetime Value
- Product profit margins
- Year-over-Year sales growth
- Regional performance ranking

#### Part 4 — Business Intelligence

- Customer satisfaction vs repeat purchases
- Discount effectiveness
- Product portfolio analysis

#### Part 5 — Management Report

The final analysis brings the SQL results together into an executive management report containing:

- Overall business performance
- Key business insights
- Supporting SQL queries
- Data-driven recommendations

---

## 2. Power BI Project

### Nova Retail Group Sales Dashboard

The Power BI project takes the same retail dataset and transforms it into an interactive executive dashboard.

### Key Power BI skills demonstrated

- Power Query
- Data cleaning
- Data modelling
- Star schema design
- Relationships
- Date tables
- DAX
- Time intelligence
- Ranking
- Data visualisation
- Dashboard design
- Business storytelling

### Power BI Development

#### Part 1 — Data Modelling & Power Query

- Import the source CSV files
- Set appropriate data types
- Create a Date table
- Build relationships
- Create calculated columns
- Tidy and organise the model

#### Part 2 — Core DAX Measures

The dashboard includes measures for:

- Total Revenue
- Total Profit
- Total Orders
- Total Customers
- Average Order Value
- Profit Margin %

#### Part 3 — Analytical DAX & Time Intelligence

Analysis includes:

- Revenue by product category
- Monthly sales trends
- Year-over-Year growth
- Top 5 customers
- Regional performance ranking

#### Part 4 — Dashboard

The final dashboard includes:

- KPI cards
- Revenue trend
- Revenue by category
- Revenue by region
- Online vs Store performance
- Customer satisfaction
- Year slicer
- Region slicer
- Channel slicer

#### Part 5 — Insights & Storytelling

The dashboard presents:

- Data-driven business insights
- Key performance observations
- Actionable recommendations

---

# Dataset

The projects use four source tables:

| Table | Description | Records |
|---|---|---:|
| Products | Product catalogue and pricing information | 30 |
| Customers | Customer information | 500 |
| Sales | Retail transaction data | 2,500 |
| CustomerFeedback | Customer satisfaction survey data | 1,000 |

The main sales table contains information including:

- Order ID
- Order date
- Customer
- Product
- Quantity
- Sales
- Profit

The customer table includes:

- Customer ID
- Name
- Region
- Channel
- Join date

Customer feedback contains:

- Rating
- Satisfaction
- Recommend likelihood

---

# Data Model

The Power BI project uses a star-schema approach.

```text
                    Date
                      │
                      │
Products ──────── Sales ──────── Customers
                      │
                      │
              CustomerFeedback
---

## Tools Used

### SQL
- SQL
- Relational database concepts
- CTEs
- Window functions
- JOINs
- Aggregate functions

### Power BI
- Power BI Desktop
- Power Query
- DAX
- Data modelling
- Data visualisation
---
## Repository Structure

```text
Nova-Retail-Analytics/
│
├── README.md
│
├── SQL Project/
│   ├── Part 1/
│   ├── Part 2/
│   ├── Part 3/
│   ├── Part 4/
│   └── Part 5/
│
├── Power BI Project/
│   ├── Dashboard.pbix
│   ├── Screenshots/
│   └── Documentation/
│
└── data/
    ├── Customers.csv
    ├── Products.csv
    ├── Sales.csv
    └── CustomerFeedback.csv
