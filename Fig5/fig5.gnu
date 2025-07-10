#set multiplot
#set pm3d map

set size 2.5, 2.8
set origin 0.0, 0.0

set term postscript eps enhanced color 'Helvetica' 25
set output 'fig5.eps'
set style fill solid 1.0 noborder

set multiplot layout 2,2

set size 1.25,1.25
set origin 0.05,1.5
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

unset colorbox

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0
set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

#set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.67, graph 0.9
set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.47, graph 0.7

set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90


set title "k_1=0.5" font "Helvetica,50"

set xrange [0:1]
set yrange [0:1]

plot "bound.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "bound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "bound.dat" u 1:2 lt rgb "gold" lw 1 title "", "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title ""


unset label
unset border
unset tics

set size 1.25,1.25
set origin 1.2,1.5
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

unset colorbox

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0
set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.86, graph 0.5
set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.47, graph 0.7

set label "1-{/Symbol m}=k_1" front font "Helvetica,50" tc rgb "black" at graph 1.02, graph 0.6

set arrow from 0.83, graph 0 to 0.9, graph -0.13 lw 3 nohead

set arrow front from 0.555, graph 0.9 to 0.8, graph 1.05 lw 3 nohead

set label "k_1{/Symbol @{\140}\326}{/Symbol a}=1/{/Symbol q}_R" front font "Helvetica,50" tc rgb "black" at graph 0.8, graph -0.23

set label "{/Symbol @{\140}\326}{/Symbol a}(1-{/Symbol m})=1/{/Symbol q}_R" front font "Helvetica,50" tc rgb "black" at graph 0.8, graph 1.1

set title "k_1=0.6" font "Helvetica,50"

set xrange [0:1]
set yrange [0:1]

plot "bound.dat" u 1:2 w filledcu below x2=0.8333 lt rgb "dark-blue" title "", "bound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curve2k06.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curve2k06.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curve2k06.dat" u 1:2 lt rgb "red" lw 1 title "", "curve1k06.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics
unset arrow

set size 1.25,1.25
set origin 0.05,0.15
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

unset colorbox

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0
set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.8, graph 0.6
set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.45, graph 0.7

set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

set label "SMR" font "Helvetica,50" at graph 0.05, graph -0.2
set label "GR" font "Helvetica,50" at graph 0.9, graph -0.2


set title "k_1=0.7" font "Helvetica,50"

set xrange [0:1]
set yrange [0:1]

plot "bound.dat" u 1:2 w filledcu below x2=0.8333 lt rgb "dark-blue" title "", "bound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curve2k07.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curve2k07.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curve1k07.dat" u 1:2 lt rgb "gold" lw 1 title "", "curve2k07.dat" u 1:2 lt rgb "red" lw 1 title ""


unset label
unset border
unset tics

set size 1.25,1.25
set origin 1.2,0.15
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,50"

unset colorbox

set label "{/Symbol @{\140}\326}{/Symbol a}" font "Helvetica,50" at graph 1.05, graph 0.0
set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

#set label "ET" front font "Helvetica,45" tc rgb "red" at graph 0.7, graph 0.9
#set label "LM" front font "Helvetica,45" tc rgb "yellow" at graph 0.4, graph 0.5

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

set label "SMR" font "Helvetica,50" at graph 0.05, graph -0.2
set label "GR" font "Helvetica,50" at graph 0.9, graph -0.2


set title "k_1=1" font "Helvetica,50"

set xrange [0:1]
set yrange [0:1]

plot "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvek1.dat" w filledcu below x2=1 lt rgb "grey80" title ""

unset label
unset border
unset tics

unset multiplot

#replot


