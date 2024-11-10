![newversion](https://github.com/user-attachments/assets/94e9d2be-24ee-4433-bca8-6ba0686d1c5f)

![image](https://github.com/user-attachments/assets/37349d91-d119-4841-a8fb-412cd72184b4)


# Three-Tier Kubernetes Project with AWS

This project demonstrates a three-tier architecture deployment using Kubernetes on AWS. It includes a web application (frontend), phpMyAdmin (application layer), and MySQL (database) with persistent storage solutions on AWS.





## Architecture Overview

 The architecture comprises:

 - Frontend (Web Application): Hosted on AWS EFS and accessible via a load balancer.
  
 - Application Layer (phpMyAdmin): Provides database management functionality.
   
 - Database (MySQL): Uses AWS EBS for persistent data storage.



# Prerequisites

- Kubernetes Cluster with sufficient resources.

- AWS account with permissions for EFS and EBS.

-  kubectl configured to manage the Kubernetes cluster.


# Steps to Deploy

1. **Clone the Repository**

   **git clone https://github.com/yourusername/link:** 



   

2. **Deploy Database Layer (MySQL)**

   **Apply the secrets, storage class, PersistentVolumeClaim, ConfigMap, Mysql-deployment and Mysql-svc:**

   - $ kubectl apply -f mysql-secret.yaml

   - $ kubectl apply -f mysql-sc.yaml

   - $ kubectl apply -f mysql-pvc.yaml

   - $ kubectl apply -f mysql-configmap.yaml

   - $ kubectl apply -f mysql-deployment.yaml

   - $ kubectl apply -f mysql-svc.yaml






3. **Deploy Application Layer (phpMyAdmin)**


   **Apply the phpmyadmin-secret, ConfigMap, deployment, and phpmyAdmin-SVC:**
 
   - $ kubectl apply -f phpmyadmin-secret.yaml
   
   - $ kubectl apply -f phpmyadmin-configmap.yaml

   - $ kubectl apply -f phpmyadmin-deployment.yaml

   - $ kubectl apply -f phpmyadmin-svc.yaml




4. **Deploy Frontend (Web Application)**

  
   **Apply the storage class, PersistentVolume, PersistentVolumeClaim, ConfigMap, deployment, and webapp-svc:**

   - $ kubectl apply -f efs-sc.yaml

   - $ kubectl apply -f webapp-pv.yaml

   - $ kubectl apply -f webapp-pvc.yaml

   - $ kubectl apply -f webapp-configmap.yaml

   - $ kubectl apply -f webapp-deployment.yaml

   - $ kubectl apply -f webapp-svc.yaml




5. **Set Up GitHub Actions (Optional)**

   **To enable CI/CD with GitHub Actions, apply the service account and role binding:**

   - $ kubectl apply -f github-actions-sa.yaml
 
   - $ kubectl apply -f github-actions-token-secret.yaml
