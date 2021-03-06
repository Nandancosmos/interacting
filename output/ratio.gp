set term postscript eps enhanced colour 24
set output 'ratio.eps'

#set title '{/Symbol qwertyuiopasdfghjklzxcvbnm QWERTYUIOPASDFGHJKLZXCVBNM}'
set key right  top

set key font ",16"
#set terminal png size 1280, 480 font "Helvetica,30"
#set yrange [-0.05:0.2]
set xrange [0:3]
set xlabel 'z'
set ylabel '1 +  w_{/Symbol f}'
#set logscale x

#set arrow from 1., graph 0 to 1., graph 1 nohead

p'explanatory00_background.dat' u 1:(($14)/($10+$11)) t 'w_{{/Symbol f}0} = -0.95, {/Symbol b} = 0' w l lw 4 linecolor 1 , \
'explanatory01_background.dat' u 1:(($14)/($10+$11)) t ' = 2' w l lw 4 linecolor 2,\
'explanatory02_background.dat' u 1:(($14)/($10+$11)) t ' = 5' w l lw 4 linecolor 3,\
'explanatory00_background.dat' u 1:(0*sqrt($14/$13)*sin($17/2)) t 'w_{{/Symbol f}0} = -0.95, {/Symbol b} = 0' w l lw 4 linecolor 1 , \
'explanatory01_background.dat' u 1:(10*sqrt($14/$13)*sin($17/2)) t ' = 2' w l lw 4 linecolor 2,\
'explanatory02_background.dat' u 1:(20*sqrt($14/$13)*sin($17/2)) t ' = 5' w l lw 4 linecolor 3, 
