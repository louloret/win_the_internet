# Win The Internet

A data-driven application for analyzing and predicting internet trends.

## Project Structure

The project is split into three main components:

1. **ETL Component** (`.venv_etl`)
   - Data gathering and ingestion (APIs, web scraping)
   - Data processing and transformation
   - Uses Apache Airflow for scheduling
   - Uses dbt for data transformation
   - Stores data in PostgreSQL

2. **UI Component** (`.venv_ui`)
   - Web interface using FastAPI
   - Interactive visualizations
   - Streamlit dashboard for insights
   - Real-time data updates

3. **ML Component** (`.venv_ml`)
   - Machine learning model training and deployment
   - PyTorch-based models
   - Transformers for NLP tasks
   - MLflow for experiment tracking

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/louloret/win_the_internet.git
   cd win_the_internet
   ```

2. Run the installation script:
   ```bash
   bash install.sh
   ```

3. Activate the appropriate virtual environment based on your task:
   - For ETL work: `source .venv_etl/bin/activate`
   - For UI work: `source .venv_ui/bin/activate`
   - For ML work: `source .venv_ml/bin/activate`

## Directory Structure

- `ingestion/` - ETL scripts, API clients, and web scrapers
- `data/` - Raw and processed data
- `ml/` - Machine learning models and training scripts
- `dashboard/` - Streamlit dashboard code
- `dbt/` - dbt models and transformations
- `api/` - FastAPI backend service
- `airflow/` - Airflow DAGs and configurations

## Development

Each component has its own virtual environment and requirements file:
- `requirements_etl.txt` - ETL dependencies (Airflow, dbt, data processing)
- `requirements_ui.txt` - UI dependencies (FastAPI, Streamlit)
- `requirements_ml.txt` - ML dependencies (PyTorch, transformers, MLflow)

## Testing

The repository includes test scripts to verify the environment setup:
```bash
# Test dependencies compatibility
bash test_deps.sh

# Test environment isolation
bash test_envs.sh
```

## Contributing

1. Create a new branch for your feature
2. Make your changes
3. Test your changes using the provided test scripts
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
