FROM debian

RUN  mkdir -p /usr/src && apt-get update && apt-get install wget git python3 python3-venv libgl1 libglib2.0-0 --yes

USER root

# 设置工作目录
WORKDIR /usr/src

CMD [ "./webui.sh" ]