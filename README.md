# MERN Stack Deployment on Linux

This project demonstrates the deployment of a full-stack MERN (MongoDB, Express, React, Node.js) application on a Linux server. The application is deployed in a secure and scalable manner, utilizing modern web development practices and server management tools.

## Project Overview

This project involves deploying a MERN stack application on an Ubuntu 22.04 LTS server. The application is set up with MongoDB as the database, Express and Node.js as the backend, and React as the frontend. The application is secured with HTTPS, managed using PM2, and monitored for performance and logging.

## Features

- **MongoDB**: Installed and configured to manage application data.
- **Express and Node.js**: Set up a server to handle API requests and serve the frontend.
- **React**: Frontend deployed with a focus on modern, responsive design.
- **Security**: HTTPS configured, environment variables used for sensitive information.
- **Process Management**: PM2 utilized to ensure application uptime.
- **Monitoring and Logging**: Integrated to track application performance and errors.

## Setup Instructions

### Prerequisites

- Ubuntu 22.04 LTS server
- SSH access to the server
- Domain name (optional for HTTPS setup)

### Automated Setup

1. SSH into your server.
2. Download and run the setup script:

   ```bash
   wget https://raw.githubusercontent.com/phsinghka/mern-stack-deployment/main/setup.sh
   chmod +x setup.sh
   ./setup.sh

