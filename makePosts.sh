cd assets

for dir in *
do
    cp ../template.md ../_posts/$dir.md
done