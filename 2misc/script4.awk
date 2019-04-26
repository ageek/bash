BEGIN {
print "The list of users and shells"
print "UserID \t \t Shells"
print "----------- \t -----------"
FS=":"
}

{
print $1  "	\t"	$7
}

END {
print "This concludes the listing"
}

