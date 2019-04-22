# print "---" > file
# print "title: \"name cards\"" >> file
# print "data:" >> file
# print "  name-cards:" >> file
BEGIN {FS = ","}
NR>1  {

		file="name-card.md"


		print "    -" >> file
		print "      name: \""$1"\"" >> file
		print "      starter: \""$2"\"" >> file
		print "      entree: \""$3"\"" >> file
		print "      notes: \""$4"\"" >> file

}

# 1-Select
# 2-Title
# 3-file
# 4-Series
