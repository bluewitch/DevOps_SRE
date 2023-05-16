#!/bin/bash

# Update system packages
sudo apt-get update

# Install Git - Version control system for source code management
sudo apt-get install git -y

# Install Jenkins - Automation server for continuous integration and delivery
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y

# Install Docker - Containerization platform for packaging applications
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Install Docker Compose - Tool for defining and running multi-container Docker applications
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install Terraform - Infrastructure as Code (IaC) tool for provisioning and managing cloud resources
sudo apt-get install unzip -y
sudo apt-get install wget -y
sudo wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip
sudo unzip terraform_1.0.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/
sudo rm terraform_1.0.0_linux_amd64.zip

# Install Prometheus and Grafana - Monitoring and alerting system along with a visualization platform
sudo apt-get install prometheus prometheus-node-exporter prometheus-pushgateway -y
sudo apt-get install grafana -y

# Install ELK Stack (Elasticsearch, Logstash, Kibana) - Centralized logging and log analysis solution
sudo apt-get install apt-transport-https -y
sudo apt-get install openjdk-11-jre -y
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get update
sudo apt-get install elasticsearch logstash kibana -y

# Start and enable Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Start and enable Prometheus service
sudo systemctl start prometheus
sudo systemctl enable prometheus

# Start and enable Grafana service
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

# Start and enable Elasticsearch service
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch

# Start and enable Kibana service
sudo systemctl start kibana
sudo systemctl enable kibana

echo "DevOps tools installation completed successfully!"
