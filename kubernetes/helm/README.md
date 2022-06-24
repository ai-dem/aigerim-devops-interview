# Prerequisites

- Docker
- Kubectl
- Helm 3
- Kubernetes in Docker ([kind](https://kind.sigs.k8s.io/))
- Local Bash shell execution environment

# Rules

- You can use the internet however you want for this challenge

# Prompt

- Start a kind cluster locally using the script
- Deploy the example application from the `example` directory
- Ensure you can reach http://localhost:8080/ and see a default nginx landing page
- Take a screenshot of your browser accessing nginx and a screenshot of the output of `kubectl get pods --all-namespaces`
- Include these screenshots when you upload to GitHub
- Please create a helm chart for the Flask application in [the Flask app Dockerfile challenge](../../docker/flask-application)
  - Tip: you will need to [load the image into Kind](https://kind.sigs.k8s.io/docs/user/quick-start/#loading-an-image-into-your-cluster) after building it, then tell Kubernetes to use the image that you loaded into your cluster.
- Please create documentation for a developer to use your helm chart to run the application inside Kind locally and view the application from their browser
- Commit and upload to GitHub
