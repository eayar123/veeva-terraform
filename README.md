# Exercise at veeva
In this exercise I was asked to create an eks cluser and deploy on it 2 helm charts.

# how to run it
    * Clone the repo.
    * run tf apply.
    * run kubectl get no. to make sure kubectl is looking at the new eks cluster. I careated a resource which suppose to do so. if kubectl does not know the new cluster please run:

    aws eks --region $(terraform output -raw region) update-kubeconfig \
    --name $(terraform output -raw cluster_name)

    * Now, try again to verify the cluster by execute: k get no
    * run: k get svc nginx-hello. and see the hostname. now take the url and paste it in the browser and add a prefix of http://<lb_hostname>

# About the project
These terraform files worked on my endpoint because I provided username and password for my dockerhub repo. I kept the credentials on a local file (terraform.tfvars) and did not upload it. 

Because of that it might not work properly in your environment.
I can provide you the username and password, please contact me and Ill give it to you.


This exercise was challenging and fun.
Thank you