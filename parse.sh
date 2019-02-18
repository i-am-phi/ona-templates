
SECTION=reds-by-the-bottle
ARTICLES=$( cat drinks.html | hxnormalize -x | tr -d '\n' | hxselect "#$SECTION article" -s '\n' )
IFS=$'\n'
for ARTICLE in ${ARTICLES}
do
  FOLDER="$(echo "$ARTICLE" | hxselect -c 'h1' | tr [:upper:] [:lower:] | tr ':?<>"|\\*' '_' | tr [:space:] '-')"

  FULLPATH="parse/drinks/$SECTION/$FOLDER"

  mkdir -p $FULLPATH

  FILE="$FULLPATH/menu.md"

  echo "---
title: $(echo "$ARTICLE" | hxselect -c 'h1')
author: phi
content:
    items: '@self.children'
child_type: article
taxonomy:
    category:
        - $SECTION
data:
    menu:
        price: '$(echo "$ARTICLE" | hxselect -c '.price')'
        location: '$(echo "$ARTICLE" | hxselect -c '.loc')'

---

$(echo "$ARTICLE" | hxselect -c 'p')

===

" > $FILE



done
