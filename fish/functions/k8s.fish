# Defined interactively
function k8s
docker login quay.io && docker pull quay.io/citybaseinc/toolkit:latest && docker run -it -p 8001:8001 -v ~/.aws:/root/.aws -v $PWD:/root/current -v ~/.ssh:/root/.ssh quay.io/citybaseinc/toolkit:latest
end
