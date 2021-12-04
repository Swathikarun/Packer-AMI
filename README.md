# AMI Creation using Packer

Packer is a lightweight open source tool for creating machine images for multiple platforms like AWS, Azure, GCP etc. It runs on every major operating system and is highly performant.

## Objective

- Build a HCL file with required details to create an AMI via packer

- Create a bashscript to install required softwares

- Now execute the above files to generate an AMI


## Prerequisites


- Install [Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli)

- [AWS IAM user with Administrative access to EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_change-permissions.html#users_change_permissions-add-console)

- AMI id of an existing AMI in AWS


## Installation


- Run the below commands inorder to install Packer 

```sh
$ wget https://releases.hashicorp.com/packer/1.7.8/packer_1.7.8_linux_amd64.zip

$ unzip packer_1.7.8_linux_amd64.zip

$ mv packer /usr/bin/
```

- Verify the packer installation by running the below command.

```sh
$ packer
```

- Check the Packer version

```sh
$ packer version
```

## Usage


- Set the envirnonment variables (access key and secret key) in the main build file.

- Execute the below commands : 

```sh
$ packer init main.pkr.hcl

$ packer validate main.pkr.hcl

$ packer build main.pkr.hcl
```

An AMI is created in our AWS account

## Result


A custom AMI is created using packer tool and you can use this for creating EC2 instances.
 
