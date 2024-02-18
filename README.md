# Helm Chart For Online Shop Microservices Application

This Helm chart provides a comprehensive solution for deploying an online shop application on Kubernetes. It encapsulates various microservices necessary for the functioning of the application and ensures scalability, reliability, and ease of management.

## Features

- **Microservices Architecture**: Utilizes a microservices architecture to modularize the application and improve maintainability and scalability.
- **Dynamic Configuration**: Allows for easy configuration of each microservice through Helm values files, facilitating customization according to specific requirements.
- **Service Discovery**: Enables seamless communication between microservices within the Kubernetes cluster through service discovery mechanisms.
- **Persistence**: Supports persistence for services such as Redis, ensuring data integrity and reliability.
- **Scalability**: Easily scale individual microservices based on demand, ensuring optimal performance during peak times.
- **Efficient Resource Management**: Optimizes resource utilization through Helm templating capabilities, ensuring efficient deployment of resources.
- **Docker Images**: Docker images for the microservices are fetched from [Google Container Registry](https://console.cloud.google.com/gcr/images/google-samples/GLOBAL/microservices-demo), ensuring reliability and security.

## Prerequisites

Before deploying the online shop application using this Helm chart, ensure the following prerequisites are met:

- Kubernetes cluster is set up and running. (This Helm chart is designed to work with any Kubernetes cluster)
- Helm 3 is installed on your local machine.

## Getting Started

Follow these steps to deploy the online shop application using this Helm chart:

1. **Clone the Repository**: Clone this repository to your local machine.

   ```bash
   git clone <repository-url>
   ```

2. **Deploy Microservices**: Run the installation script install.sh to deploy each microservice:

    ```bash
    ./install.sh
    ```

3. **Accessing the Application**: Once deployed, access the online shop application through the exposed services within your Kubernetes cluster.

4. **Monitoring and Management**: Utilize Kubernetes tools for monitoring and managing the deployed microservices, ensuring optimal performance and reliability.

## Configuration
Each microservice can be configured using its respective values file located in the values directory. These files contain parameters such as service name, image, version, replicas, ports, environment variables, and more, allowing for fine-grained customization.

## Helmfile Management
The helmfile.sh script simplifies the management of Helm releases by providing a centralized configuration for all microservices. It specifies the name of each release, the corresponding Helm chart, and the values file to use for configuration. This approach streamlines the deployment process and ensures consistency across microservices.

1. To deploy the online shop application using Helmfile, execute the following commands:

    ```bash
    ./helmfile.sh apply
    ```

2. To uninstall the online shop application using Helmfile, execute:

    ```bash
    ./helmfile.sh delete
    ```
    
## Uninstallation
To uninstall the online shop application manually, run the uninstallation script uninstall.sh:

    ```bash
    ./uninstall.sh
    ```

This will remove all deployed microservices associated with the online shop application from your Kubernetes cluster.

## Acknowledgements
I would like to extend my gratitude to Google Container Registry (gcr) for hosting the publicly available Docker images used in this project. This Helm chart was inspired by the need for a robust and scalable solution for deploying online shop applications on Kubernetes.