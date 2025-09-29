# Campbell Plateau Meander Analysis  

This repository provides supporting figures and analyses for the paper:  

**“Characteristics and Trends of the Campbell Plateau Meander in the Southern Ocean: 1993–2020”**, *Journal of Geophysical Research: Oceans*  
by Xinlong Liu, Amelie Meyer, and Christopher C. Chapman

---

## Repository Structure  

### 1. Meander Trends Analysis  
This section presents the statistical analysis of the meander’s characteristics—latitude position, width, and geostrophic current speed—using both raw monthly time series and smoothed rolling-year means. It includes:  
- **Rolling-year mean trends** – long-term changes in meander position, width, and speed.  
- **Sample autocorrelation functions** – assessment of temporal persistence in the monthly records.  
- **Confidence interval testing** – uncertainty analysis of autocorrelation functions at the 95% confidence level.  

### 2. Tests in Meander Position Identification  
This section documents the statistical tests used to evaluate and revise the identification of the meander’s position. It includes:
- **Trajectory ‘jump’ tests** – identification and handling of discontinuities in the meander’s monthly position.
- **Sum-period value tests** – quality checks on the temporal consistency of the meander detection.


## Analysis Notebooks and Scripts
Below are the included Jupyter notebooks and MATLAB functions, with their descriptions. These files provide reproducible workflows and visualisations underpinning the results of the study.

### 1. Jupyter Notebooks
- **01-Campbell-Plateau-Argo-Meander-Analysis.ipynb**
  - Analysis of Argo float hydrographic data in the Campbell Plateau region to assess subsurface structure and variability of the meander.

- **02-EKE-Analysis-Campbell-Plateau-Geos-1993-2020.ipynb**
  - Investigation of eddy kinetic energy (EKE) trends and variability across the Campbell Plateau using geostrophic velocity fields from satellite altimetry.

- **03-SPG-Gyre-Index-Trend-Analysis-1993-2020.ipynb**
  - Evaluation of Subpolar Gyre (SPG) index variability and its long-term trends to provide broader context for meander dynamics.

- **12-Campbell-Plateau-Winds-JRA55-1958-2021-Monthly-Means-Trends-1993-2020.ipynb**
  - Analysis of surface winds from the JRA-55 reanalysis to examine atmospheric forcing over the Campbell Plateau, including climatologies and trend assessment.

### 2. MATLAB Functions
- **04-Plot-ADT-and-ADT-Gradient-Maps.m**
  - Generates maps of Absolute Dynamic Topography (ADT) and its gradients to visualise frontal structures in the meander region.

- **05-Plot-Masked-Meander-ADT-Abs-VS-Rel-Thresholds.m**
  - Compares absolute and relative ADT thresholding approaches for masking meander features and highlights methodological sensitivity.

- **06-Plot-Meander-Probability-Rolling-Mean-And-Peak-Positions.m**
  - Computes and visualises rolling-mean meander probabilities and the positions of their statistical peaks over time.

- **07-Plot-Rolling-Mean-SLA-Meander-And-Trough-Positions.m**
  - Produces plots of rolling-mean sea-level anomaly (SLA) meander positions and trough locations to capture temporal variability.

- **08-Plot-Meander-Monthly-Trajectory-Frequency.m**
  - Generates frequency plots of monthly meander trajectories to assess spatial persistence and variability.

- **09-Plot-Monthly-Meander-Positions-With-Frequency-Analysis.m**
  - Combines monthly meander positions with frequency-based analysis to highlight dominant pathways and shifts.

- **10-Plot-Meander-Frequency-Maps-and-Transects.m**
  - Creates spatial maps and transects of meander occurrence frequency across the Campbell Plateau.

- **11-Export-Month-Mean-Meander-Occurrence-From-SLA-Altimetry.m**
  - Exports monthly mean meander occurrence values derived from SLA altimetry datasets for further statistical and comparative analyses.
