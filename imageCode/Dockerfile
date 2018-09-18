FROM ubuntu:latest
Maintainer ICDS	

ADD chef_14.4.56-1_amd64.deb /tmp
RUN apt-get update 
RUN apt-get install /tmp/chef_14.4.56-1_amd64.deb -y

ENV SERVER_NAME="https://api.chef.io/organizations/nimeshj_chef"
ENV RUNLIST="recipe[workstation]"

RUN mkdir -p /etc/chef
COPY chef-run.sh /etc/chef
RUN chmod +x /etc/chef/chef-run.sh

#EXPOSE 443
EXPOSE 80

##DUMMY
#COPY test.sh test.sh

ENTRYPOINT ["/bin/bash"]
CMD ["/etc/chef/chef-run.sh"]
#CMD ["test.sh"]
