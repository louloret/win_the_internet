# Win The Internet

A data-driven application for analyzing and predicting internet trends.

## Project Structure

The project is split into two main components:

1. **ETL Component** (`.venv_etl`)
   - Data gathering and ingestion (APIs, web scraping)
   - Data processing and transformation
   - Uses Apache Airflow for scheduling
   - Uses dbt for data transformation
   - Stores data in PostgreSQL

2. **UI/ML Component** (`.venv_ui_ml`)
   - Data analysis and visualization
   - Machine learning model training and deployment
   - Streamlit dashboard for insights
   - Interactive visualizations with Plotly

## Setup

1. Clone the repository
2. Run the installation script:
   ```bash
   bash install.sh
   ```
3. Activate the appropriate virtual environment:
   - For ETL work: `source .venv_etl/bin/activate`
   - For UI/ML work: `source .venv_ui_ml/bin/activate`

## Directory Structure

- `ingestion/` - ETL scripts, API clients, and web scrapers
- `data/` - Raw and processed data
- `ml/` - Machine learning models and training scripts
- `dashboard/` - Streamlit dashboard code
- `dbt/` - dbt models and transformations

## Development

Each component has its own virtual environment and requirements file:
- `requirements_etl.txt` - ETL dependencies (data ingestion, transformation, orchestration)
- `requirements_ui_ml.txt` - UI and ML dependencies (analysis, visualization, modeling)
