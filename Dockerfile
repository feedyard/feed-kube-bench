FROM aquasec/kube-bench:latest

# set user
RUN addgroup -g 1000 -S kube-bench
RUN adduser -u 1000 -S kube-bench -G kube-bench -s /bin/ash

# replace default cfg/config.yaml with customer that includes specific policy overrides and messages
COPY cfg/ cfg/

USER kube-bench
ENTRYPOINT ["./entrypoint.sh"]

# USER root
# RUN apk add --no-cache shadow sudo && \
#     if [ -z "`getent group $GID`" ]; then \
#       addgroup -S -g $GID cetacean; \
#     else \
#       groupmod -n cetacean `getent group $GID | cut -d: -f1`; \
#     fi && \
#     if [ -z "`getent passwd $UID`" ]; then \
#       adduser -S -u $UID -G cetacean -s /bin/sh mobydick; \
#     else \
#       usermod -l mobydick -g $GID -d /home/mobydick -m `getent passwd $UID | cut -d: -f1`; \
#     fi && \
#     echo "mobydick ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/mobydick && \
#     chmod 0440 /etc/sudoers.d/mobydick
#
# WORKDIR /home/mobydick/app
# RUN chown mobydick:cetacean /home/mobydick/app
# USER mobydick
