#!/bin/bash

set -e  # Exit if anything fails

echo "🧪 Testing ETL Environment..."
source .venv_etl/bin/activate

echo "📦 Testing ETL package imports..."
python3 -c "
import pandas as pd
import numpy as np
import pytrends
import requests
from bs4 import BeautifulSoup
import dbt
import sqlalchemy
import psycopg2
print('✅ ETL packages imported successfully')
"

deactivate

echo "🧪 Testing UI Environment..."
source .venv_ui/bin/activate

echo "📦 Testing UI package imports..."
python3 -c "
import streamlit
import plotly
import pandas as pd
import numpy as np
print('✅ UI packages imported successfully')
"

deactivate

echo "🧪 Testing ML Environment..."
source .venv_ml/bin/activate

echo "📦 Testing ML package imports..."
python3 -c "
import mlflow
import sklearn
import pandas as pd
import numpy as np
print('✅ ML packages imported successfully')
"

deactivate

echo "✨ All environments tested successfully!" 