{ if (($2 < 50) || ($3 < 50) || ($4 < 50)) 
    print $1 " : Fail"; 
    else 
        print $1 " : Pass" ;
}

# OR
#awk '{print $1,":", ($2<50||$3<50||$4<50) ? "Fail" : "Pass"}'

# OR
#{
#  a[0]="Fail";
#  a[1]="Pass";
#  print $1, ":", a[$1>=50 && $2 >= 50 && $3 >= 50]
#}
