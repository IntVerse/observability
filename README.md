# Intverse-monitor-helm

**Check for errors**
> helm lint observability/

**Package Helm Chart**
> helm package observability/

**Create index.yaml file to list all versions of Helm Charts**
> helm repo index --url https://intverse.github.io/observability/ .

**check index.yaml file**
> cat index.yaml

**Command to add Helm Repo**
> helm repo add intverse-repo https://intverse.github.io/observability

**Command to install Helm Chart**
> helm install monitoring intverse-repo/observability

**Command to merge new chart to existing index.yaml file**
> helm repo index --url https://intverse.github.io/observability/ --merge index.yaml .
