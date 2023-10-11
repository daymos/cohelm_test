# Use an official Python runtime as a parent image
FROM python:3.9.18-bookworm 
# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

RUN pip install jsonschema

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install the package from the custom index URL separately
RUN pip install -i https://test.pypi.org/simple/ bitsandbytes


# Run app.py when the container launches
CMD ["python", "main.py"]

