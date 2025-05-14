#!/bin/bash
# This script runs the Flask application using the virtual environment

# Check if virtual environment exists, create if it doesn't
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Install requirements if needed
pip install -r requirements.txt

# Check if .env file exists, create from sample if it doesn't
if [ ! -f ".env" ]; then
    echo "Creating .env file from sample..."
    cp .sample.env .env
fi

# Run application with Python directly for maximum compatibility
echo "Starting Flask application..."
python app.py
