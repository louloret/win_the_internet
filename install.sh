#!/bin/bash

set -e  # Exit if anything fails

echo "🔧 Creating ETL virtual environment (.venv_etl)..."
python3 -m venv .venv_etl
source .venv_etl/bin/activate

echo "⬆️ Upgrading pip..."
pip install --upgrade pip

echo "📦 Installing ETL requirements..."
pip install -r requirements_etl.txt

echo "🔧 Creating UI virtual environment (.venv_ui)..."
deactivate
python3 -m venv .venv_ui
source .venv_ui/bin/activate

echo "⬆️ Upgrading pip..."
pip install --upgrade pip

echo "📦 Installing UI requirements..."
pip install -r requirements_ui.txt

echo "🔧 Creating ML virtual environment (.venv_ml)..."
deactivate
python3 -m venv .venv_ml
source .venv_ml/bin/activate

echo "⬆️ Upgrading pip..."
pip install --upgrade pip

echo "📦 Installing ML requirements..."
pip install -r requirements_ml.txt

echo "✨ Setup complete! You can activate the environments with:"
echo "  - ETL: source .venv_etl/bin/activate"
echo "  - UI: source .venv_ui/bin/activate"
echo "  - ML: source .venv_ml/bin/activate"
