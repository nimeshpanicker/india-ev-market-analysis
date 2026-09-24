# 🚗 India Electric Vehicle Market Analysis

![Python](https://img.shields.io/badge/Python-Data%20Analysis-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-purple)
![SQL](https://img.shields.io/badge/SQL-Analysis-orange)
![Data Analytics](https://img.shields.io/badge/Data%20Analytics-Portfolio-green)
![Status](https://img.shields.io/badge/Project-Completed-success)

> A Python and SQL-based data analytics project analysing 25,533 electric vehicle records across manufacturers, models, states, cities, EV types, CAFV eligibility, electric range, pricing, and model-year trends.

---

# 📊 Key Performance Indicators

| KPI | Result |
|---|---:|
| Total EV Records | **25,533** |
| Manufacturers | **8** |
| Models | **8** |
| States | **15** |
| Cities | **35** |
| Model Years | **2018–2024** |
| Average Electric Range | **298.30 km** |
| Median Electric Range | **298 km** |
| Average Base MSRP | **₹2,704,518.99** |
| Median Base MSRP | **₹2,716,403** |
| BEV Vehicles | **21,684 (84.93%)** |
| PHEV Vehicles | **3,849 (15.07%)** |
| CAFV Eligible Vehicles | **20,346 (79.69%)** |

---

# 📈 Key Findings

## 🚘 EV Type Analysis

| EV Type | Vehicles | % of Total |
|---|---:|---:|
| Battery Electric Vehicle (BEV) | **21,684** | **84.93%** |
| Plug-in Hybrid Electric Vehicle (PHEV) | **3,849** | **15.07%** |

Battery Electric Vehicles represent the dominant vehicle type in the dataset, accounting for **84.93%** of all records.

---

## 🏭 Manufacturer Analysis

| Manufacturer | EV Records | Avg. Range (km) | Avg. Price (₹) | Market Share |
|---|---:|---:|---:|---:|
| Tata Motors | **3,250** | 298.34 | ₹2,694,154.76 | **12.73%** |
| BYD India | **3,246** | 298.19 | ₹2,690,243.39 | **12.71%** |
| TVS Motor | **3,236** | 297.78 | ₹2,713,438.11 | **12.67%** |
| Mahindra Electric | **3,209** | 298.83 | ₹2,705,382.12 | **12.57%** |
| Ather Energy | **3,197** | 300.62 | ₹2,725,111.15 | **12.52%** |
| MG Motor India | **3,155** | 297.63 | ₹2,700,683.51 | **12.36%** |
| Ola Electric | **3,140** | 298.96 | ₹2,703,514.47 | **12.30%** |
| Hyundai EV | **3,100** | 296.01 | ₹2,703,813.31 | **12.14%** |

Tata Motors has the largest number of records with **3,250 vehicles**, while Hyundai EV has the lowest with **3,100**.

The manufacturer distribution is unusually even, with market share ranging only from **12.14% to 12.73%**.

---

## 🗺️ State-Level Analysis

| State | EV Records | Avg. Range (km) | Avg. Price (₹) | Market Share |
|---|---:|---:|---:|---:|
| Tamil Nadu | **2,287** | 294.03 | ₹2,705,079.75 | **8.96%** |
| Maharashtra | **2,262** | 296.45 | ₹2,718,148.42 | **8.86%** |
| Rajasthan | **2,195** | 298.35 | ₹2,704,548.09 | **8.60%** |
| Uttar Pradesh | **2,187** | 300.27 | ₹2,722,003.85 | **8.57%** |
| Gujarat | **2,177** | 296.40 | ₹2,709,415.05 | **8.53%** |
| Karnataka | **2,172** | 306.84 | ₹2,703,077.14 | **8.51%** |
| Telangana | **1,495** | 297.68 | ₹2,658,106.63 | **5.86%** |
| Odisha | **1,474** | 296.20 | ₹2,714,841.68 | **5.77%** |
| Bihar | **1,463** | 292.81 | ₹2,727,678.43 | **5.73%** |
| West Bengal | **1,456** | 295.75 | ₹2,744,588.62 | **5.70%** |
| Andhra Pradesh | **1,443** | 296.71 | ₹2,712,567.65 | **5.65%** |
| Haryana | **1,431** | 292.86 | ₹2,692,861.44 | **5.60%** |
| Punjab | **1,402** | 303.37 | ₹2,694,345.12 | **5.49%** |
| Kerala | **1,389** | 303.19 | ₹2,653,175.28 | **5.44%** |
| Delhi | **700** | 308.51 | ₹2,668,308.53 | **2.74%** |

The six leading states — **Tamil Nadu, Maharashtra, Rajasthan, Uttar Pradesh, Gujarat and Karnataka** — together account for **52.03%** of all EV records.

Tamil Nadu has the highest number of EV records with **2,287 vehicles**.

---

## 🏙️ Top Cities by EV Records

| City | State | EV Records | Avg. Range (km) | Avg. Price (₹) |
|---|---|---:|---:|---:|
| Chennai | Tamil Nadu | **795** | 293.49 | ₹2,682,623.70 |
| Cuttack | Odisha | **788** | 288.41 | ₹2,676,640.99 |
| Kanpur | Uttar Pradesh | **785** | 313.69 | ₹2,747,278.74 |
| Coimbatore | Tamil Nadu | **784** | 300.49 | ₹2,680,660.14 |
| Udaipur | Rajasthan | **783** | 298.05 | ₹2,705,515.37 |
| Mumbai | Maharashtra | **776** | 292.64 | ₹2,709,674.78 |
| Kolkata | West Bengal | **763** | 296.28 | ₹2,772,130.05 |
| Hyderabad | Telangana | **761** | 295.01 | ₹2,678,448.97 |
| Patna | Bihar | **761** | 293.14 | ₹2,717,390.94 |
| Nagpur | Maharashtra | **757** | 298.70 | ₹2,763,634.21 |

**Chennai** has the highest city-level EV record count with **795 records**.

---

## 📅 Model-Year Analysis

| Model Year | EV Records | Avg. Range (km) | Avg. Price (₹) | YoY Growth |
|---|---:|---:|---:|---:|
| 2018 | **3,704** | 298.17 | ₹2,697,344.69 | — |
| 2019 | **3,662** | 301.02 | ₹2,707,759.10 | -1.13% |
| 2020 | **3,478** | 295.18 | ₹2,688,916.01 | -5.02% |
| 2021 | **3,666** | 297.84 | ₹2,708,551.00 | +5.41% |
| 2022 | **3,648** | 298.17 | ₹2,701,658.17 | -0.49% |
| 2023 | **3,756** | 297.69 | ₹2,713,221.93 | +2.96% |
| 2024 | **3,619** | 299.93 | ₹2,713,345.25 | -3.65% |

The highest number of records occurs in **2023 with 3,756 vehicles**, while 2020 has the lowest with **3,478 vehicles**.

The year-level volumes remain within a relatively narrow range, with no sustained upward or downward trend.

---

## ⚡ CAFV Eligibility Analysis

| CAFV Eligibility | Vehicles | % of Total |
|---|---:|---:|
| Eligible | **20,346** | **79.69%** |
| Not Eligible | **5,187** | **20.31%** |

Approximately **four out of every five vehicles** in the dataset are classified as CAFV eligible.

---

## 🔋 Electric Range Analysis

| Metric | Result |
|---|---:|
| Average Electric Range | **298.30 km** |
| Median Electric Range | **298 km** |
| Minimum Range | **80 km** |
| Maximum Range | **519 km** |

### Average Range by Manufacturer

| Manufacturer | Average Range |
|---|---:|
| Ather Energy | **300.62 km** |
| Ola Electric | **298.96 km** |
| Mahindra Electric | **298.83 km** |
| Tata Motors | **298.34 km** |
| BYD India | **298.19 km** |
| TVS Motor | **297.78 km** |
| MG Motor India | **297.63 km** |
| Hyundai EV | **296.01 km** |

Ather Energy records the highest manufacturer-level average range at approximately **300.62 km**.

---

## 💰 Base MSRP Analysis

| Metric | Result |
|---|---:|
| Average Base MSRP | **₹2,704,518.99** |
| Median Base MSRP | **₹2,716,403** |
| Minimum MSRP | **₹900,422** |
| Maximum MSRP | **₹4,499,944** |

### Average Price by Manufacturer

| Manufacturer | Average Base MSRP |
|---|---:|
| Ather Energy | **₹2,725,111.15** |
| TVS Motor | **₹2,713,438.11** |
| Mahindra Electric | **₹2,705,382.12** |
| Hyundai EV | **₹2,703,813.31** |
| Ola Electric | **₹2,703,514.47** |
| MG Motor India | **₹2,700,683.51** |
| Tata Motors | **₹2,694,154.76** |
| BYD India | **₹2,690,243.39** |

Ather Energy has the highest average Base MSRP in the dataset at approximately **₹2.725 million**.

---

## 📊 Range–Price Relationship

| Analysis | Result |
|---|---:|
| Range–Price Correlation | **-0.002** |
| Relationship | **Essentially zero correlation** |

The analysis found almost no statistical relationship between electric range and Base MSRP.

This means that within this dataset, higher-priced vehicles do not systematically correspond to higher electric range.

---

## 💡 Range-to-Price Value Analysis

| Manufacturer | Model | Avg. Range | Avg. Price | Range per ₹1L |
|---|---|---:|---:|---:|
| Mahindra Electric | Kona EV | 306.11 km | ₹2,580,033 | **14.57** |
| BYD India | Nexon EV | 302.17 km | ₹2,628,661 | **14.28** |
| MG Motor India | iQube | 306.94 km | ₹2,689,054 | **14.24** |
| Mahindra Electric | Nexon EV | 306.38 km | ₹2,653,191 | **14.19** |
| Ather Energy | Kona EV | 311.43 km | ₹2,673,457 | **14.16** |

Mahindra Electric's Kona EV pairing produces the highest calculated range-per-₹1 lakh metric in the dataset at **14.57 km per ₹1 lakh**.

> **Important:** Because the report identifies the dataset as synthetically generated, these range-to-price results should be treated as analytical demonstrations rather than real-world vehicle recommendations.

---

# 🔎 Data Quality Analysis

| Quality Check | Result |
|---|---:|
| Total Records | **25,533** |
| Missing Values | **0** |
| Duplicate Rows | **0** |
| Duplicate Vehicle IDs | **0** |
| Invalid Model Years | **0** |
| Invalid Electric Range Values | **0** |
| Invalid / Zero MSRP Values | **0** |
| Statistical Range Outliers | **0** |
| Statistical MSRP Outliers | **0** |

The dataset is structurally clean, with no missing values, duplicate rows, duplicate vehicle IDs, or invalid values detected.

However, an important data-quality issue was identified: **Make and Model combinations do not represent realistic manufacturer catalogues**. All eight model names appear across all eight manufacturers, creating 64 Make × Model combinations.

The report also identifies near-zero correlations and an unusually uniform distribution of numeric fields. These patterns indicate that the dataset was **synthetically generated rather than representing organically observed real-world EV registration data**.

---

# 💡 Business Insights

### 1. BEVs Dominate the Dataset

Battery Electric Vehicles account for **84.93%** of the records, compared with **15.07%** for Plug-in Hybrid Electric Vehicles.

This makes BEV-focused analysis particularly important for understanding the vehicle mix represented in the dataset.

### 2. EV Registrations Are Concentrated Across Six Leading States

Tamil Nadu, Maharashtra, Rajasthan, Uttar Pradesh, Gujarat and Karnataka collectively represent **52.03%** of all records.

These states therefore represent the largest geographic clusters within the dataset.

### 3. Manufacturer Shares Are Remarkably Even

Tata Motors leads with **12.73%**, while Hyundai EV has **12.14%**.

The difference between the highest and lowest manufacturer share is only **0.59 percentage points**.

### 4. Chennai Has the Highest City-Level Volume

Chennai records **795 EVs**, followed by Cuttack with **788** and Kanpur with **785**.

The leading cities have relatively similar volumes rather than one city dominating the dataset.

### 5. EV Registration Volumes Remain Relatively Stable Across Model Years

Annual records range from **3,478 in 2020** to **3,756 in 2023**.

The dataset does not show a sustained multi-year growth trend.

### 6. CAFV Eligibility Is High

**20,346 vehicles**, or **79.69%**, are classified as CAFV eligible.

This indicates that clean-fuel eligibility is common throughout the dataset.

### 7. Average Electric Range Is Around 298 km

The average range is **298.30 km**, with a median of **298 km**.

The close relationship between the mean and median indicates a highly symmetric distribution.

### 8. Ather Energy Has the Highest Average Range

Ather Energy records the highest manufacturer-level average range at **300.62 km**, although the differences between manufacturers are relatively small.

### 9. Range and Price Have Almost No Correlation

The calculated correlation between Electric Range and Base MSRP is approximately **-0.002**.

This suggests essentially no linear relationship between these two variables within the dataset.

### 10. The Dataset Shows Strong Synthetic-Data Signals

The analysis identified:

- Identical model names appearing across all manufacturers
- Near-zero correlations between key numeric fields
- Extremely uniform numeric distributions
- Zero statistical outliers
- No missing values
- No duplicates

Together, these characteristics indicate that the dataset is likely **synthetically generated**.

> **Important:** This data-quality finding is central to interpreting the project. The categorical and descriptive analysis remains useful as an analytical exercise, but pricing, range, manufacturer positioning, and product-level conclusions should not be treated as real-world market intelligence.

---

# 💡 Business Recommendations

## ⚡ Charging & Infrastructure Planning

Use the geographic distribution of EV records to examine:

- State-level EV concentration
- City-level demand
- BEV penetration
- Electric utility coverage
- Potential charging infrastructure requirements

The six leading states account for **52.03%** of the records and can therefore be used as priority regions for further analysis.

---

## 🗺️ Regional Market Monitoring

Monitor:

- Tamil Nadu
- Maharashtra
- Rajasthan
- Uttar Pradesh
- Gujarat
- Karnataka

Track changes in registration volume over time to identify whether the current geographic distribution changes in future datasets.

---

## 🔋 BEV-Oriented Infrastructure

The dataset contains an **84.93% BEV share**.

Further infrastructure analysis can therefore examine:

- Fast-charging demand
- Charging-station coverage
- Utility capacity
- Urban charging requirements
- State-level charging infrastructure

---

## 🏭 Manufacturer Monitoring

Manufacturer shares are highly concentrated around the 12–13% range.

Future datasets should be used to monitor:

- Manufacturer market share
- Year-over-year changes
- State-level manufacturer penetration
- Model-level demand
- BEV/PHEV mix

---

## 💰 Pricing & Range Analysis

Continue tracking:

- Average MSRP
- Median MSRP
- Electric range
- Range-to-price ratio
- Price segmentation
- High-range vehicle segments

However, these metrics should only be used for real-world business decisions after validating the underlying dataset with reliable real registration and pricing sources.

---

## 📊 Data Quality & Validation

Future analysis should prioritize:

- Verified manufacturer-model mappings
- Real registration records
- Reliable vehicle pricing
- Consistent model names
- Real-world range specifications
- Verified state and city information
- Source documentation

The current dataset should primarily be treated as an **EDA and data-quality auditing portfolio project** because of the synthetic-data characteristics identified during analysis.

---

# 🛠️ Tools & Technologies

- **Python**
- **Pandas**
- **NumPy**
- **Matplotlib**
- **Seaborn**
- **SQL**
- **Jupyter Notebook**
- **CSV**
- **Git & GitHub**

---

# 🔄 Analysis Workflow

```text
Raw EV Dataset
      ↓
Data Loading
      ↓
Data Profiling
      ↓
Data Quality Checks
      ↓
Duplicate & Missing-Value Analysis
      ↓
Descriptive Statistics
      ↓
Categorical Analysis
      ↓
State & City Analysis
      ↓
Manufacturer & Model Analysis
      ↓
BEV vs PHEV Analysis
      ↓
CAFV Eligibility Analysis
      ↓
Range & Price Analysis
      ↓
Correlation Analysis
      ↓
SQL Business Queries
      ↓
Visualizations
      ↓
Business Insights
      ↓
Recommendations
```

---

# 📁 Project Structure

```text
india-ev-market-analysis/
│
├── README.md
│
├── data/
│   └── India_EV_Dataset.csv
│
├── python/
│   └── India_EV_Market_Analysis.ipynb
│
├── sql/
│   └── EV_PROJECT.sql
│
├── report/
│   └── India_EV_Market_Analysis_Report.pdf

```

---

# 🧮 SQL Analysis

The SQL analysis contains **30 analytical queries** covering:

- Total EV records
- EV records by state
- Top cities
- Top manufacturers
- Top EV models
- EV type distribution
- CAFV eligibility
- Average electric range
- Long-range EVs
- Average MSRP
- Most expensive EVs
- MSRP by EV type
- Model-year trends
- State/model-year trends
- Manufacturer range analysis
- Affordable EVs
- High-range and lower-MSRP EVs
- Top manufacturer by state
- Top model by manufacturer
- Average range by state
- Average MSRP by state
- Electric utility coverage
- Postal-code analysis
- Duplicate vehicle IDs
- Missing-value profiling
- Invalid MSRP checks
- Suspicious range checks
- Manufacturer/model diversity
- State-level EV market profiles

---

# 📊 Project Outputs

The project produced:

- **15 visualizations**
- **22 summary tables**
- State-level analysis
- City-level analysis
- Manufacturer analysis
- Model analysis
- EV type analysis
- CAFV eligibility analysis
- Range analysis
- Price analysis
- Correlation analysis
- Data-quality analysis
- SQL business analysis

---

# 🎯 Skills Demonstrated

### Data Analytics

- Exploratory Data Analysis
- Data Profiling
- Data Quality Validation
- Descriptive Statistics
- Categorical Analysis
- Segmentation
- Trend Analysis
- Correlation Analysis
- Outlier Detection
- Business Insight Generation

### Python

- Pandas
- NumPy
- Matplotlib
- Seaborn
- DataFrame manipulation
- GroupBy aggregation
- Cross-tabulation
- Statistical analysis
- Data visualization

### SQL

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregations
- CASE expressions
- Window Functions
- CTEs
- Ranking
- Cross-tab analysis
- Data-quality queries

### Business Analytics

- KPI development
- Market-share analysis
- Geographic analysis
- Manufacturer analysis
- Product analysis
- Range-price analysis
- Business recommendations
- Data storytelling

---

# 🚀 Future Improvements

- Replace the synthetic dataset with verified real-world EV registration data.
- Add a larger historical dataset covering more years.
- Add state-level time-series analysis.
- Add charging-station infrastructure data.
- Analyse EV registrations against population and income.
- Add electricity consumption and utility capacity data.
- Build a Power BI dashboard using a validated dataset.
- Add interactive filters for state, city, manufacturer, model and EV type.
- Perform real-world manufacturer and model benchmarking.
- Build a predictive model using validated historical registration data.
- Automate the Python analysis pipeline.
- Connect SQL outputs directly to a BI dashboard.

---

# 📄 Project Report

A detailed project report is included in the repository:

```text
report/
└── India_EV_Market_Analysis_Report.pdf
```

The report documents the complete analytical process, including data quality, KPIs, model-year trends, state and city analysis, manufacturer analysis, EV type, CAFV eligibility, range, pricing, correlation analysis, business insights and recommendations.

---

# 👨‍💻 Author

**Panicker Nimesh Mahendran**

**Data Analyst | Python | SQL | Data Analytics**

---

# ⭐ Project Summary

The **India Electric Vehicle Market Analysis** project demonstrates an end-to-end data analytics workflow using Python and SQL.

The analysis covers **25,533 EV records**, **8 manufacturers**, **8 models**, **15 states**, and **35 cities** across model years **2018–2024**.

The dataset is dominated by **BEVs (84.93%)**, while **79.69%** of vehicles are classified as CAFV eligible. The six leading states account for **52.03%** of all records, while manufacturer shares remain closely distributed between **12.14% and 12.73%**.

A key part of the project is not only analysing the data but also validating its quality. The analysis identified strong signals that the dataset is **synthetically generated**, including unrealistic Make–Model combinations, near-zero correlations between numeric fields, highly uniform distributions, and zero statistical outliers.

This makes the project a strong demonstration of both **data analysis and data-quality auditing**, showing the importance of validating a dataset before using its results for business decisions.
