I have completely migrated github pipelines to azure pipelines . using this repo Example Voting App A simple distributed application
running across multiple Docker containers.

https://github.com/dockersamples/example-voting-app

only updated and changed files, azure pipelines updating in this repo.

🔹 Successfully Migrated GitHub Pipelines to Azure DevOps and Deployed on AKS with ArgoCD 🔹

Over the past few days, I worked on modernizing the CI/CD workflow for the Example Voting App — a simple distributed microservices application (Python, Node.js, .NET, Redis, and Postgres).

✅ What I did:

Migrated GitHub Actions pipelines → Azure DevOps Pipelines

Wrote separate Azure Pipelines for 3 microservices (Vote, Worker, Result)

Automated Docker image builds and push to Azure Container Registry (ACR)

Deployed the services on Azure Kubernetes Service (AKS) using ArgoCD for GitOps-based deployment

Ensured smooth rollout and updates with Kubernetes manifests management

💡 Key takeaways:

Learned the differences between GitHub Actions and Azure DevOps pipelines

Got hands-on experience integrating ACR + AKS + ArgoCD for end-to-end delivery

Strengthened my understanding of multi-service CI/CD and GitOps workflows
<img width="1195" height="658" alt="azuredevops4" src="https://github.com/user-attachments/assets/4c77c4b2-3282-4f12-9973-69fe5737ffd3" />
<img width="1318" height="679" alt="azuredevops5" src="https://github.com/user-attachments/assets/d3e9bbb2-b18f-4dc7-a19b-016cdc08bd44" />
<img width="1334" height="617" alt="azuredevops6" src="https://github.com/user-attachments/assets/ebdc9e2c-0ea2-4de2-b73c-3d846d58bc5d" />
<img width="1342" height="682" alt="azuredevops1" src="https://github.com/user-attachments/assets/aa4b82af-4a2b-4b39-bbfe-565eddf1e434" />
<img width="1335" height="619" alt="azuredevops2" src="https://github.com/user-attachments/assets/8a3a9656-e6ed-4cb2-b77e-d7165ec78bc5" />
<img width="1315" height="663" alt="azuredevops3" src="https://github.com/user-attachments/assets/fde4b072-027b-49ad-a9ff-b1203ae56c29" />
