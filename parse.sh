ARTICLES=$(cat dinner.html  | hxnormalize -x | tr -d '\n' | hxselect '#appetizers article' -s '\n' )
IFS=$'\n'
for ARTICLE in ${ARTICLES}
do
  echo "$ARTICLE" | hxselect -c 'h1' | tr [:upper:] [:lower:] | tr ':?<>"|\\*' '_' | tr [:space:] '-'
  echo
done
