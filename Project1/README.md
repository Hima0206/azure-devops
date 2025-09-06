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
