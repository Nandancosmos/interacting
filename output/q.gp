set term postscript eps enhanced colour 24
set output 'q1.eps'

#set title '{/Symbol qwertyuiopasdfghjklzxcvbnm QWERTYUIOPASDFGHJKLZXCVBNM}'
set key right  top

set key font ",16"
#set terminal png size 1280, 480 font "Helvetica,30"
#set yrange [-0.05:0.2]
set xrange [0:3]
set xlabel 'z'
set ylabel 'q'
#set logscale x

#set arrow from 1., graph 0 to 1., graph 1 nohead

p'explanatory00_background.dat' u 1:(0*sqrt($14/$13)*sin($17/2)) t 'w_{{/Symbol f}0} = -0.95, {/Symbol b} = 0' w l lw 4 linecolor 1 , \
'explanatory01_background.dat' u 1:(5*sqrt($14/$13)*sin($17/2)) t ' = 5' w l lw 4 linecolor 2,\
'explanatory02_background.dat' u 1:(15*sqrt($14/$13)*sin($17/2)) t ' = 15' w l lw 4 linecolor 3,\
'explanatory03_background.dat' u 1:(20*sqrt($14/$13)*sin($17/2)) t ' = 20' w l lw 4 linecolor 4, 
