#!/bin/bash
echo 'Changing quip to english...'
sed -i 's/Veni, vidi, vici/I cam, I saw, I conquered/g' quip/src/main/java/com/redhat/training/example/Quip.java
echo "Committing the changes..."
cd quip
git commit -am "Changed quip lang to english"

echo "Pushing changes to classroom Git repo..."
git push
cd ..
