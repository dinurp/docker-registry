kubectl delete secret -n kube-public registry-server-certs
kubectl create secret generic -n kube-public registry-server-certs \
	--from-file=my-registry.crt=certs/my-registry.crt \
	--from-file=my-registry.key=certs/my-registry.key

kubectl delete secret -n kube-public registry-server-auth
kubectl create secret generic -n kube-public registry-server-auth \
	--from-file=htpasswd=auth/htpasswd 
