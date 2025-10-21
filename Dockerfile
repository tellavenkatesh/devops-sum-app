# Step 1: Use a base Python image
FROM python:3.10-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy all files from your project to /app
COPY . .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the app port (Flask runs on 5000)
EXPOSE 5000

# Step 6: Run your app
CMD ["python", "app.py"]
