
# simulate a change and push a PR

CHANGE=$(date +"%Y-%m-%d-%H%M%S") 

# create random branch with the change to 
git checkout -b auto-$CHANGE 
echo "This is a change at $CHANGE" > random.txt
git add random.txt
git commit -m "auto-update"
git push origin auto-$CHANGE

gh pr create -t "test-$CHANGE" -b "marketplace-change-$CHANGE"

git checkout main