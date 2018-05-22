# Autoscaling A Simple Webserver With Kubernetes
This talk covers how to use Kubernetes to scale a web application

## Examples
Check out the examples directory for the app that was used. Provided you have a Kubernetes cluster that you can work with, you can spin up the app and try it out by running the following:

```
# build the image
docker build . -t dog-tinder:example

# apply the application to the cluster
kubectl apply -f example/manifests/

# in separate tabs or panes
# show the status of the autoscaler
watch kubectl get hpa

# show the status of the pods
watch kubectl get pods

# generate some load on the application
> kubectl run -i --tty load-generator --image=busybox /bin/sh
If you don't see a command prompt, try pressing enter.
/ # while true; do wget -q -O- http://dog-tinder-service.default.svc.cluster.local:4000; done
```

## Where can I learn more?
If you're curious (or need some instructions for how to install a Kubernetes environment on your machine) checkout [Noobernetes](http://www.noobernetes.io). Its an even more in depth look at this talk and the concepts in it. Please file an issue on that repo if you have any questions!