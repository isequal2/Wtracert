#!/bin/bash
##########for traceroute############
c=`cat output.dat | cut -d ' ' -f 2-`
t=0
n=0
d=0
for i in ${c[@]}
do
n=$(expr $n + 1)
t=$(expr $t + $i)
done
d=$(expr $t / $n)
echo  $d



#########for wtracert##############
c1=`cat outputw.dat | cut -d ' ' -f 2-`
t1=0
n1=0
d1=0
for i in ${c1[@]}
do
n1=$(expr $n1 + 1)
t1=$(expr $t1 + $i)
done
d1=$(expr $t1 / $n1)
echo  $d1


/usr/bin/gnuplot <<__EOF
set xrange [0:30]
set yrange [0:600]
set term png
set output "trace.png"
set xlabel "Website"
set ylabel "time(in sec)"
#set xlabel $t$;
set grid
set boxwidth 0.95 relative
set style fill transparent solid 0.5
set border lc rgb "red"
plot "output.dat" u 1:2 w boxes lc rgb"green", \
	 "outputw.dat" u 1:2 w boxes lc rgb"red", \
	  $d title "Average traceroute", \
	 $d1 title "Average wtracert" lc rgb "black"
	  
__EOF
