# Specify the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY . .

# Expose the port that the Flask application will listen on
EXPOSE 5000

# Specify the command to run your application
CMD [ "python", "hello_docker.py" ]
