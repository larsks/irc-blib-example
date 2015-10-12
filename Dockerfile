FROM ubuntu

RUN apt-get update
RUN apt-get -y install \
	ansible \
	python-apt

COPY playbook.yml /root/playbook.yml
COPY inventory /root/inventory
WORKDIR /root
RUN ansible-playbook -i inventory playbook.yml

