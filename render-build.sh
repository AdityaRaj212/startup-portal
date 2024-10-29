#!/usr/bin/env bash

# Install root dependencies if required
echo "Installing root dependencies..."
npm install

# Install and build frontend
echo "Installing and building front-end..."
npm install --prefix front-end
npm run build --prefix front-end

# Copy the built frontend files to the Django static folder in the backend
echo "Copying front-end build to Django static files..."
cp -r front-end/build/* backend/static/

# Install backend dependencies
echo "Installing backend dependencies..."
# pip install -r backend/requirements.txt

# Run database migrations if needed
echo "Running migrations..."
python backend/manage.py migrate

# Collect static files
echo "Collecting static files..."
python backend/manage.py collectstatic --noinput
