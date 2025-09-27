# West Yorkshire Crime Analysis (April–September 2020) ![Crime Icon](https://img.icons8.com/ios-filled/50/crime.png)

This repository presents a **reproducible analysis** of police‑reported crime in **West Yorkshire** from **April to September 2020**. The workflow (`load → clean → explore → analyze → visualize → validate`) focuses on:

- Month‑by‑month trends  
- Crime type distributions  
- Geographic patterns  
- Statistical significance  
- Data quality

---

## Objectives 

- Show how **total crime counts** changed across months  
- Identify which **crime types** drove those changes  
- Highlight notable **geographic hotspots**  
- Validate patterns statistically (**chi‑squared test**)  
- Note **data quality issues** and propose **extensions**

---

## Key Findings 

- **Trend**: Crime rose by ~35% from **April to August**, then declined in **September**
- **Top crime type**: _Violence and sexual offences_ (~36% of total incidents)
- **Hotspots**:  
  - On or near **Supermarket**  
  - On or near **Parking Area**  
  - On or near **Sports/Recreation Area**
- **Statistical significance**:  
  Changes in crime type distributions across months are **not random**  
  _Chi‑squared test_: **p < 2.2e‑16**
- **Data notes**:  
  - “Exclusive” appears as a **rare, likely artifact**  
  - “No Location” and missing fields **reduce spatial precision**

---

## Methods 

- **Load & combine**  
  Monthly CSVs are merged into a single dataset with a `Month` label for scalable analysis

- **Clean & check**  
  Inspect structure and missing values; flag anomalies like `"Exclusive"` and `"No Location"`

- **Monthly trends**  
  Visualize total crimes per month using **line plots**

- **Crime types**  
  Summarize frequency of types; **track top five** categories to detect trend drivers

- **Statistical test**  
  Chi‑squared test on **Month × Crime Type** table confirms significant variation

- **Geographic patterns**  
  Summarize top locations and visualize with **bar charts** for actionable hotspots

---

## Data Quality & Limitations 

- **“Exclusive”** does not match recognized crime categories → treated as a data anomaly  
- **“No Location”** and missing coordinates **limit spatial accuracy**  
- Only **6 months** of data included; longer time series could reveal seasonality or structural shifts

---

## Extensions / Next Steps 

- **Outcomes**: Analyze _Last outcome category_ to evaluate solved vs. unsolved cases  
- **Temporal detail**: Investigate _day-of-week_ and _time-of-day_ trends  
- **Spatial analysis**: Add mapping (e.g., **kernel density**, **spatial clustering**)  
- **COVID-19 context**: Compare with **pre-pandemic years (2018–2019)** and mobility/policy data

---

## Reproducibility 

- Workflow is designed to be **repeatable and scalable** – add new months and re‑run analysis  
- All derived outputs (CSV + PNG) are saved in dedicated folders for **version control**

---

## License 

- **Code**: MIT License (recommended)  
- **Data**: Follow original data provider’s terms; _do not redistribute raw source files_ if restricted

---

## Contact 

- **Author**: Falinyi Samson  
- **Email**: [samsonfalinyi@gmail.com](mailto:samsonfalinyi@gmail.com)  


---

