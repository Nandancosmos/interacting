set term postscript eps enhanced colour 18
set output 'density1.eps'

#set title '{/Symbol qwertyuiopasdfghjklzxcvbnm QWERTYUIOPASDFGHJKLZXCVBNM}'
#set key right  bottom
#set key outside
set key center right
set key width 8

set key font ",16"
#set terminal png size 1280, 480 font "Helvetica,30"
#set yrange [-0.05:0.2]
set xrange [0:5]
set xlabel 'z'
set ylabel '{/Symbol W}_m , {/Symbol W}_{/Symbol f}'
#set logscale x

#set arrow from 1., graph 0 to 1., graph 1 nohead

p'explanatory00_background.dat'u 1: (($11 + $10)/$13) t '{{/Symbol W}_m} = -0.95, {/Symbol b} = 0' w l dt 2 lw 4 linecolor 1 , \
'explanatory01_background.dat' u 1: (($11 + $10)/$13) t ' = 5' w l dt 2 lw 4 linecolor 2,\
'explanatory02_background.dat' u 1: (($11 + $10)/$13) t ' = 15' w l dt 2 lw 4 linecolor 3,\
'explanatory03_background.dat' u 1: (($11 + $10)/$13) t ' = 20' w l dt 2 lw 4 linecolor 4,\
'explanatory00_background.dat'u 1: (($14)/$13) t '{{/Symbol W_f}} = -0.95, {/Symbol b} = 0' w l lt 1 lw 4 linecolor 1 , \
'explanatory01_background.dat' u 1: (($14)/$13) t ' = 5' w l lt 1 lw 4 linecolor 2,\
'explanatory02_background.dat' u 1: (($14)/$13) t ' = 15' w l lt 1 lw 4 linecolor 3,\
'explanatory03_background.dat' u 1: (($14)/$13) t ' = 20' w l lt 1 lw 4 linecolor 4,

