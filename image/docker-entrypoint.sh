#!/usr/bin/env sh


mkdir -p ~/.ssh

if [ "$SSH__CONFIG" ]; then
  echo "$SSH__CONFIG" > ~/.ssh/config
fi

if [ "$SSH__ID_RSA" ]; then
  echo "$SSH__ID_RSA" > ~/.ssh/id_rsa
  chmod 600 /root/.ssh/id_rsa
fi

if [ "$SSH__ID_RSA_PUB" ]; then
  echo "$SSH__ID_RSA_PUB" > ~/.ssh/id_rsa.pub
fi

if [ "$SSH__KNOWN_HOSTS" ]; then
  echo "$SSH__KNOWN_HOSTS" > ~/.ssh/known_hosts
fi


exec "$@"
