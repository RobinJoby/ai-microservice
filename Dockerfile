# 1. Start with a lightweight version of Python
FROM python:3.9-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy just the requirements file first (this makes future builds faster)
COPY requirements.txt .

# 4. Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your code into the container
COPY . .

# 6. Expose the port your app will run on
EXPOSE 8000

# 7. The command to run when the container starts
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]