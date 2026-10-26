# Crowdfunding Kickstarter Analysis (Excel, Power BI, Tableau)


An end-to-end analysis of Kickstarter projects that explains **what separates successful crowdfunding projects from failed ones**. The project combines Excel (data cleaning and charts), Tableau (yearly trends), and Power BI (interactive dashboard) to help creators set realistic goals and plan better campaigns.

---

## Business Problem

Crowdfunding is competitive, and most projects do not reach their funding goal. This analysis answers:

- How many projects succeed, fail, or get cancelled?
- How do funding and backer numbers differ between successful and failed projects?
- Does the funding goal amount affect the chance of success?
- How have project creation and success rates changed over the years?
- Which countries and projects dominate the platform?

---

## About Crowdfunding and Kickstarter

Crowdfunding raises small amounts of money from a large number of people, usually online. Kickstarter works on an **all-or-nothing** model: if a project reaches its funding goal by the deadline, backers are charged. If it falls short, no one is charged.

---

## Dataset

| Item | Detail |
|------|--------|
| Source | Kickstarter projects dataset [add link if downloaded from Kaggle or another site] |
| Granularity | One row per crowdfunding project |
| Key fields | Project name, category, country, goal amount, amount raised, backers count, outcome (state), creation date |
| Outcomes | Successful, failed, canceled, live, suspended, purged |
| Cleaning | Missing values and errors removed before analysis |

---

## Headline KPIs

| KPI | Value |
|-----|-------|
| Total Projects | **374K** *(KPI card; see note below)* |
| Successful Projects | **140.31K (38.35%)** |
| Failed Projects | **188.24K (51.45%)** |
| Canceled Projects | **32.5K (8.88%)** |
| Total Backers | **44.52M** |
| Amount Raised | **167M** |
| Average Campaign Duration | **31 days** |

---

## Key Insights

**1. Most projects do not succeed.** Only **38.35%** of projects were successful, while **51.45%** failed and **8.88%** were cancelled. Crowdfunding is competitive and success is not guaranteed.

**2. Backers drive success.** Projects with more backers have a better chance of succeeding, and successful projects raise far more than failed ones. The top successful projects attract tens of thousands of backers each.

**3. A few projects dominate funding.** A small number of top projects contribute a large share of total funding.

**4. Lower goals succeed more often.** Projects with lower goal amounts have higher success rates, while very high goals show lower chances of success. Choosing the right goal is a critical success factor.

**5. Success rates changed over time.** Success rates were around 43% to 45% in the early years, dipped to as low as **31.60%** in the mid-2010s, and recovered to **44.25%** later. The final year shows only 3.09% because very few projects were recorded in it.

**6. The US dominates.** The US has by far the most projects, followed by GB, CA, and AU.

---

## Dashboard Visuals

| Visual | Tool | Purpose |
|--------|------|---------|
| KPI cards (Total Projects, Success %, Avg Days, Backers, Amount Raised) | Power BI | Headline performance at a glance |
| Total Projects by Location | Power BI | Compare countries |
| Total Projects by Outcome (pie) | Power BI | Success, failure, and cancellation share |
| Top Successful Projects table | Power BI | Highlight the best-performing projects |
| Total Projects by Category | Power BI | Compare category volume |
| Success % by Year (line chart) | Tableau | Track success rate over time |
| Total Number of Projects by Year (column chart) | Tableau | Track project creation trends |
| Top Successful Projects by Backers Count | Excel | Show the most-backed projects |
| Slicers: Year, Month, Quarter | Power BI | Filter the dashboard |

---

## Recommendations

1. **Set realistic funding goals.** Lower goals have higher success rates.
2. **Build backer engagement.** Strong project descriptions, visuals, and regular updates attract more backers.
3. **Plan before you launch.** Popular categories help, but clear planning matters more than category.
4. **Time the launch and stay active.** Consistent engagement with backers improves success chances.

---

## Tools Used

- **Excel:** data cleaning, pivot tables, and charts
- **Tableau:** year-wise trend charts
- **Power BI:** interactive KPI dashboard with slicers

---

## How to Use

1. Clone or download this repository.
2. Open the Power BI file in **Power BI Desktop** and the workbook in **Tableau**.
3. Use the Year, Month, and Quarter slicers to filter the dashboard.
4. Read the full walkthrough in the presentation file included in this repo.

---


## Limitations and Future Improvements

- Add success rate by goal range bands (for example, under 1K, 1K to 10K, over 10K) with exact percentages.
- Add success rate by category and country.
- Add a forecast of project volume and success rate.
- Add SQL scripts for data extraction and KPI validation.
