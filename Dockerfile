
# Use an official Python runtime as a parent image
FROM python:3.10

# Install system dependencies
RUN apt-get update && \
    apt-get install -y curl

# Install Poetry using pip
RUN pip install poetry

# Set the working directory to /app
WORKDIR /app

# Copy the pyproject.toml and poetry.lock files to the container
COPY pyproject.toml poetry.lock /app/

# Install project dependencies using Poetry
RUN poetry install --no-interaction --no-ansi
COPY . /app

# Expose the port that Django will run on
EXPOSE 8000

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]