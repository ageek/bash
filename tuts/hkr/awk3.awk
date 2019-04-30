{
    avg=($1+$2+$3)/3
    if ( avg >= 80 ) grade="A";
    else if ( avg > 60) grade="B";
    else if ( avg > 50) grade="C";
    else grade="FAIL";
        print $0,": " grade;
}
