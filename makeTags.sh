cd _posts
allTags=()

for post in *
do
    tags=$(awk -v s="tags: " 'index($0, s) == 1' $post)
    for t in ${tags[@]}
    do
        allTags+=(${t#*:})
    done
done

unique=($(echo "${allTags[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
cd ../_tags
rm *

for tag in ${unique[@]}
do
    echo "---
layout: tagPage
tag-name: $tag
---" > "$tag.md"
done