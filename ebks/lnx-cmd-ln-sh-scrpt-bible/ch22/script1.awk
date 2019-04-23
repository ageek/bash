BEGIN{FS=","} {print $1, "FNR=" FNR, "NR=" NR} END{print "Total of ", NR " records were processed"}
