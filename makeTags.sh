cd _posts
allTags=()

for post in *
do
    tags=$(awk -v s="tags: " 'index($0, s) == 1' $post)
    for t in tags
    do
        allTags+=($t)
    done
done

echo $allTags