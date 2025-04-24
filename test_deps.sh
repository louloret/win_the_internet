#!/bin/bash

set -e  # Exit if anything fails

echo "🔧 Creating test virtual environment (.test_venv)..."
python3 -m venv .test_venv
source .test_venv/bin/activate

echo "⬆️ Upgrading pip..."
pip install --upgrade pip

echo "📦 Installing streamlit first..."
pip install streamlit==1.12.0

echo "📦 Installing protobuf version that works with both..."
pip install protobuf==3.20.3

echo "📦 Installing dbt-core..."
pip install dbt-core==1.7.3

echo "Test complete! Clean up with: rm -rf .test_venv" 