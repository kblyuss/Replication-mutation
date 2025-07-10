#set multiplot
#set pm3d map

set size 3.2, 1.5
set origin 0.0, 0.0

set term postscript eps enhanced color 'Helvetica' 25
set output 'fig4.eps'
set style fill solid 1.0 noborder

set multiplot layout 1,3

set size 1.25,1.25
set origin 0.05,0.25
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

set palette maxcolors 4
set palette defined ( 1 "black", 2 "yellow", 3 "blue" , 4 "red")

unset colorbox

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0
set label "k_1" font "Helvetica,50" at graph 0.0, graph 1.1

set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.72, graph 0.92
set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.4, graph 0.5

set label "Fitness of mutants" font "Helvetica,45" at graph -0.43, graph 0.1 rotate by 90
set label "deleterious" font "Helvetica,45" at graph -0.28, graph 0.3 rotate by 90
set label "lethal" font "Helvetica,45" at graph -0.43, graph 0.0
set label "neutral" font "Helvetica,45" at graph -0.46, graph 1.0

set label "SMR" font "Helvetica,45" at graph 0, graph -0.17
set label "GR" font "Helvetica,45" at graph 0.9, graph -0.17


set title "{/Symbol m}=0.15" font "Helvetica,50"

#set pm3d map #Achte auf das Format der Datendatei (Leerzeilen!)
set xrange [0:1]
set yrange [0:1]

set arrow from 0.588, graph 0 to 0.588, graph -0.2 lw 3 nohead
set arrow front from 0.555, graph 0.9 to 0.8, graph 1.05 lw 3 nohead

set label "k_1=1/{/Symbol @{\140}\326}{/Symbol a}{/Symbol q}_R" front font "Helvetica,50" tc rgb "black" at graph 0.8, graph 1.1

set label "1-{/Symbol m}" front font "Helvetica,50" tc rgb "black" at graph 1.02, graph 0.85

set label "{/Symbol @{\140}\326}{/Symbol a}(1-{/Symbol m})=1/{/Symbol q}_R" front font "Helvetica,50" tc rgb "black" at graph 0.25, graph -0.3

plot "bound.dat" u 1:2 w filledcu below y2=1 lt rgb "grey80" title "", "bound.dat" u 1:2 w filledcu below y2=0.85 lt rgb "dark-goldenrod" title "", "bound15lower.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-blue" title "", "bound15upper.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "" , "bound15h.dat" u 1:2 lt rgb "red" lw 1 title "", "bound15v.dat" u 1:2 lt rgb "gold" lw 1 title ""


unset label
unset border
unset tics
unset arrow

set size 1.25,1.25
set origin 1.05,0.25
set size square

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0

set title "{/Symbol m}=0.3" font "Helvetica,50"

set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.83, graph 0.77
set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.52, graph 0.4

set label "SMR" font "Helvetica,45" at graph 0, graph -0.17
set label "GR" font "Helvetica,45" at graph 0.9, graph -0.17

set xrange [0:1]
set yrange [0:1]

plot "bound.dat" u 1:2 w filledcu below y2=1 lt rgb "grey80" title "", "bound.dat" u 1:2 w filledcu below y2=0.7 lt rgb "dark-goldenrod" title "", "bound30lower.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-blue" title "", "bound30upper.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "" , "bound30h.dat" u 1:2 lt rgb "red" lw 1 title "", "bound30v.dat" u 1:2 lt rgb "gold" lw 1 title ""

unset label
unset border
unset tics

set size 1.25,1.25
set origin 2.05,0.25
set size square

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

set title "{/Symbol m}=0.5" font "Helvetica,50"

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0

set label "SMR" font "Helvetica,45" at graph 0, graph -0.17
set label "GR" font "Helvetica,45" at graph 0.9, graph -0.17


set xrange [0:1]
set yrange [0:1]

plot "bound.dat" u 1:2 w filledcu below y2=1 lt rgb "grey80" title "","bound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "" 

unset multiplot

#replot


