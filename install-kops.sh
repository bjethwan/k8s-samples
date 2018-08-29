				# Install kubectl on Amazon Linux

				curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

				chmod +x ./kubectl
				sudo mv ./kubectl /usr/local/bin/kubectl


				# Install kops on Amazon Linux
				curl -OL https://github.com/kubernetes/kops/releases/download/1.9.2/kops-linux-amd64
				chmod +x kops-linux-amd64

				sudo mv kops-linux-amd64 /usr/local/bin/kops


				echo "export KOPS_STATE_STORE=s3://cluster-1.k8s.bj-cloud.info" >> .bash_profile
				cp ~/.ssh/authorized_keys ~/.ssh/id_rsa.pub

