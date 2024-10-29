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


# #!/usr/bin/env bash

# # Install root dependencies if needed
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
