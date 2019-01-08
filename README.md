# Kubernetes with Terraform in AWS

It is a project to builds kubernetes infrastructure in AWS with terraform using EKS Service. It includes:

- Networking
- Eks

## Networking

### Description

Networking Module creates all services to communicate Kubernetes Cluster with the other services, it includes:

1. VPC.

2. Subnet.

3. Internet Gateway.

4. Route Tables.

## EKS

### Description

EKS module Allows creating Kubernetes cluster in Aws. When finishes of creates cluster need to execute two operations:

1. Run `terraform output -module=eks kubeconfig` and include that into `~/.kube/config`.

2. Create config-map to allows associates cluster with the role. Run `terraform output -module=eks config-map-aws-auth` and pastes that into yaml's file E.g: `config-map-aws-auth.yaml`.

## Command

`terraform get`: Fetch modules.

`terraform init`: Initialize terraform.

`terraform plan`: Show plan description from files.

`terraform apply`: Apply plan.

`terraform destroy`: Destroy plan.

`terraform output -module=eks kubeconfig`: Kubeconfig to login on AWS.

`terraform output -module=eks config-map-aws-auth`: Configmap to apply into cluster.

## Considerations

- Create `<home path>/.aws/credentials` with access and secrets key to AWS.
