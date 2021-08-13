# terraform-demo
## Usage
### Step 1.
```bash
# In this challenge , I used Terraform for AWS infra deployment
# A EKS cluster with 3 nodes is deployed on the VPC by terraform module
# Nginx is deployed as Kuberenetes deployment and exposed port 80
# For the healthiness of ngnix container, LivenessProbe is added for container's startup checking
# After initial delay for 3 seconds, it will perform http get to / (usually there will be healthcheck path in real life application) to determine succeed or not

terraform init
terraform apply
```

### Step 2.
```bash
# For the output fetching of ngnix's welcome page and count the most occurrence of the word
# I used the terraform output after terraform apply as the Url to fetch
# It will save the trimmed output to final.txt
./script.sh

# Sample output : 6 ngnix
```

For logging resources usage of the containers, I think it could be used by using cloudwatch logs group/ promethues to log?