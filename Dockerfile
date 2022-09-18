FROM public.ecr.aws/ubuntu/ubuntu:latest

RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq \
    dracut \
    linux-headers-generic \
    dialog
