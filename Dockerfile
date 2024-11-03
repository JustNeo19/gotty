# Base image can be selected based on the application requirements
FROM ubuntu:24.04

# Install necessary packages without restrictions
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    vim \
    git \
    net-tools \
    iputils-ping \
    && apt-get clean

# Set the working directory
WORKDIR /usr/src/app

# Add your application files
COPY . .

# Install Python packages if required (optional)

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

# Start the application or service
CMD ["bash", "run_gotty.sh"]
