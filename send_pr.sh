
# simulate a change and push a PR

CHANGE=$(date +"%Y-%m-%d-%H%M%S") 

git checkout -b auto-$CHANGE 
echo $CHANGE > random.json 
git add random.json
git commit -m "auto-update"
git push origin auto-$CHANGE 