#!/bin/bash

if [[ $(docker images | grep privilege-escalation) ]]; then
  echo "Using previously extracted image"
else
  docker load --input privilege-escalation.tar
fi

echo ""
echo "GOAL:"
echo "- Catch the flag!"
echo ""
echo "RULES:"
echo "- Only open the image with the ./start-hacking.sh script"
echo ""

exec docker run -it privilege-escalation:latest
