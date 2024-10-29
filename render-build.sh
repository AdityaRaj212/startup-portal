# #!/usr/bin/env bash

# # Install root dependencies
# echo "Installing root dependencies..."
# npm install

# # Build front-end
# echo "Installing and building front-end..."
# npm install --prefix front-end
# npm run build --prefix front-end

# # Ensure backend static directory exists
# echo "Ensuring backend static directory exists..."
# mkdir -p backend/static

# # Copy front-end build to backend's static directory
# echo "Copying front-end build to backend static files..."
# cp -r front-end/dist/* backend/static/

# # Install backend dependencies
# echo "Installing backend dependencies..."
# pip install -r backend/requirements.txt

# # Start backend server (assuming backend has an entry file like app.py or server.py)
# echo "Starting backend server..."
# python backend/app.py &

# # Install serve globally if needed
# npm install -g serve

# # Start frontend server if needed, otherwise Render will serve static files from the backend
# echo "Starting frontend server..."
# serve -s front-end/dist


#!/usr/bin/env bash

# Install root dependencies
echo "Installing root dependencies..."
npm install

# Build front-end
echo "Installing and building front-end..."
npm install --prefix front-end
npm run build --prefix front-end

# Ensure backend static directory exists
echo "Ensuring backend static directory exists..."
mkdir -p backend/static

# Copy front-end build to backend's static directory
echo "Copying front-end build to backend static files..."
cp -r front-end/dist/* backend/static/

# Install backend dependencies
echo "Installing backend dependencies..."
pip install -r backend/requirements.txt

echo "Starting backend server..."
python backend/app.py
