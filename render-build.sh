#!/usr/bin/env bash

# Install root dependencies if needed
echo "Installing root dependencies..."
npm install

# Build front-end
echo "Installing and building front-end..."
npm install --prefix front-end
npm run build --prefix front-end

# Ensure backend static directory exists
echo "Ensuring backend static directory exists..."
mkdir -p backend/static

# Copy front-end build to Django static files
echo "Copying front-end build to Django static files..."
cp -r front-end/dist/* backend/static/

# Install backend dependencies
echo "Installing backend dependencies..."
pip install -r backend/requirements.txt

# Run Django migrations if needed
echo "Running migrations..."
python backend/manage.py migrate

# Collect static files
echo "Collecting static files..."
python backend/manage.py collectstatic --noinput
