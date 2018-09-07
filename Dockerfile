FROM centos:7
RUN yum install git -y
RUN yum groupinstall 'Development Tools' -y
RUN git clone https://github.com/aws/aws-fpga.git
RUN echo "[LOG] Done cloning AWS FPGA Git repository"
ENV AWS_FPGA_REPO_DIR aws-fpga

ADD run.sh .

ENTRYPOINT ["bash", "run.sh"]
