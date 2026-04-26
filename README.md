# COVID-19 Prediction AI System

## About the Project
This project implements a complete **COVID-19 diagnostic AI system** 
using the COVIDCARE dataset from MIT. It builds an intelligent 
Bayesian network to predict the probability of a patient testing 
positive for COVID-19 (PCR Test Positive) based on symptoms, 
demographics, vaccination status, and at-home test results.

## Dataset
- **822 patients** with **472 variables** each
- Source: COVIDCARE Phase II Survey (MIT, 2021)
- 3 files: Patient data, DEMI knowledgebase (70,983 entries), 
  Survey dictionary

## How it Works — 5 Tier System
| Tier | Variables |
|------|-----------|
| Tier 0 | Demographics (age, gender, race, ethnicity) |
| Tier 1 | Vaccination status |
| Tier 2 | Symptoms and exposures |
| Tier 3 | At-home test results |
| Tier 4 | PCR lab confirmation (target) |

## Machine Learning Models Used
- **Logistic Regression** — baseline model
- **LASSO Regression** — feature selection
- **XGBoost / Gradient Boosting** — best performing model
- **Markov Blanket** — identifies direct predictors of PCR
- **Bayesian Network** — builds diagnostic network with CPT tables

## Key Features
- Pairwise association analysis between all variables
- Network visualization of COVID diagnostic pathways
- Conditional Probability Tables (CPT) for Netica
- Final COVID probability prediction function
- McFadden pseudo R-square model evaluation

## Output
- COVID diagnostic network graph
- Direct predictors of PCR positive result
- Final probability: `predict_case(input_dict)` 
  returns COVID probability for any patient

## Tech Stack — Deployment
- **Python 3.12** — core language
- **JupyterLab** — interactive notebook
- **Docker** — containerization
- **Azure Container Registry** — image storage
- **Azure Container Instances** — cloud hosting
- **GitHub Actions** — CI/CD pipeline

## Live Demo
http://covid-prediction-app.eastus.azurecontainer.io:8888

## Libraries Used
- pandas, numpy — data processing
- scikit-learn — ML models
- xgboost — boosting model
- matplotlib, networkx — visualization
- jupyterlab — notebook environment

## Author
Chandana Reddy Gajjala
George Mason University
