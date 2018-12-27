#!/usr/bin/env fish

set -x REGISTRY gcr.io
set -x REGISTRY_USER (gcloud config get-value core/project)

pfs function create textdisplay \
             --git-repo https://github.com/shinyay/pfs-eventing-textdisplay.git \
             --image $REGISTRY/$REGISTRY_USER/textdisplay \
             --verbose
