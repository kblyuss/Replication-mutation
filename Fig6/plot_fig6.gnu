#set multiplot
#set pm3d map

set size 3.5, 4.3
set origin 0.0, 0.0

set term postscript eps enhanced color 'Helvetica' 25
set output 'fig6.eps'
set style fill solid 1.0 noborder

set multiplot layout 3,3

set size 1.1,1.1
set origin 0.3, 3.05
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

#set label "k_1" font "Helvetica,45" at graph 1.05, graph 0.0
set label "1-{/Symbol m}" font "Helvetica,55" at graph 0.0, graph 1.1
set label "{/Symbol a}=0.1" font "Helvetica,55" at graph -0.8, graph 0.45
set label "Copying fidelity" font "Helvetica,55" at graph -0.3, graph 0.1 rotate by 90


#set title "{/Symbol q}_R=2" font "Helvetica,55"

set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0

set label "{/Symbol q}_R=2" font "Helvetica,55" at graph 0.4, graph 1.1

set xrange [0:1]
set yrange [0:1]

plot "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title ""


unset label
unset border
unset tics

set size 1.1,1.1
set origin 1.4,3.05
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

#set label "k_1" font "Helvetica,45" at graph 1.05, graph 0.0
#set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.4, graph 0.7
set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.83, graph 0.7

set label "1/{/Symbol @{\140}\326}{/Symbol a}{/Symbol q}_R" front font "Helvetica,50" tc rgb "black" at graph -0.35, graph 0.77

set label "1/{/Symbol @{\140}\326}{/Symbol a}{/Symbol q}_R" front font "Helvetica,50" tc rgb "black" at graph 0.7, graph -0.13

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

#set title "{/Symbol q}_R=4" font "Helvetica,55"
set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0

set label "{/Symbol q}_R=4" font "Helvetica,55" at graph 0.4, graph 1.1


set xrange [0:1]
set yrange [0:1]

plot "curvea01t4c1.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "curvea01t4c1.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvea01t4c2.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curvea01t4c2.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "curvea01t4c2.dat" u 1:2 lt rgb "red" lw 1 title "", "curvea01t4c1.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics

set size 1.1,1.1
set origin 2.45,3.05
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

#set label "k_1" font "Helvetica,45" at graph 1.05, graph 0.0
#set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.1, graph 0.2
set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.65, graph 0.5

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

#set title "{/Symbol q}_R=10" font "Helvetica,55"
set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0

set label "{/Symbol q}_R=10" font "Helvetica,55" at graph 0.4, graph 1.1

set xrange [0:1]
set yrange [0:1]

plot "curvea01t10c1.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "curvea01t10c1.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvea01t10c2.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curvea01t10c2.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "curvea01t10c2.dat" u 1:2 lt rgb "red" lw 1 title "", "curvea01t10c1.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics

set size 1.1,1.1
set origin 0.3,1.77
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

#set label "k_1" font "Helvetica,45" at graph 1.05, graph 0.0
set label "{/Symbol a}=0.5" font "Helvetica,55" at graph -0.8, graph 0.45
set label "Copying fidelity" font "Helvetica,55" at graph -0.3, graph 0.1 rotate by 90

set label "1-{/Symbol m}" font "Helvetica,55" at graph 0.0, graph 1.1

#set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.67, graph 0.9
#set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.47, graph 0.7

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90


#set title "{/Symbol q}_R=1" font "Helvetica,55"
set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0

set label "{/Symbol q}_R=1" font "Helvetica,55" at graph 0.4, graph 1.1

set xrange [0:1]
set yrange [0:1]

plot "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title ""


unset label
unset border
unset tics

set size 1.1,1.1
set origin 1.4,1.77
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

#set label "k_1" font "Helvetica,45" at graph 1.05, graph 0.0
#set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.35, graph 0.6
set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.83, graph 0.7


#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

#set title "{/Symbol q}_R=2" font "Helvetica,55"
set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0

set label "{/Symbol q}_R=2" font "Helvetica,55" at graph 0.4, graph 1.1

set xrange [0:1]
set yrange [0:1]

plot "curvea05t2c1.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "curvea05t2c1.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvea05t2c2.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curvea05t2c2.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "curvea05t2c2.dat" u 1:2 lt rgb "red" lw 1 title "", "curvea05t2c1.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics

set size 1.1,1.1
set origin 2.45,1.77
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

#set label "k_1" font "Helvetica,45" at graph 1.05, graph 0.0
#set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.1, graph 0.23
set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.65, graph 0.55

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

#set title "{/Symbol q}_R=4" font "Helvetica,55"
set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0

set label "{/Symbol q}_R=4" font "Helvetica,55" at graph 0.4, graph 1.1

set xrange [0:1]
set yrange [0:1]

plot "curvea05t4c1.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "curvea05t4c1.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvea05t4c2.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curvea05t4c2.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "curvea05t4c2.dat" u 1:2 lt rgb "red" lw 1 title "", "curvea05t4c1.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics

set size 1.1,1.1
set origin 0.3,0.5
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

set label "{/Symbol a}=0.9" font "Helvetica,55" at graph -0.8, graph 0.45
set label "Copying fidelity" font "Helvetica,55" at graph -0.3, graph 0.1 rotate by 90

set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0
set label "1-{/Symbol m}" font "Helvetica,55" at graph 0.0, graph 1.1

#set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.67, graph 0.9
#set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.47, graph 0.7

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90


#set title "{/Symbol q}_R=1" font "Helvetica,55"
set label "{/Symbol q}_R=1" font "Helvetica,55" at graph 0.4, graph 1.1

#rotate by 90
set label "Fitness of mutants" font "Helvetica,45" at graph 0.1, graph -0.43 
set label "deleterious" font "Helvetica,45" at graph 0.3, graph -0.28
set label "lethal" font "Helvetica,45" at graph 0.0, graph -0.43 rotate by 90
set label "neutral" font "Helvetica,45" at graph 1.0, graph -0.46 rotate by 90

set xrange [0:1]
set yrange [0:1]

plot "tbound.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title ""


unset label
unset border
unset tics

set size 1.1,1.1
set origin 1.4,0.5
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0
#set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.25, graph 0.4
set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.7, graph 0.6

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

#set title "{/Symbol q}_R=2" font "Helvetica,55"
set label "{/Symbol q}_R=2" font "Helvetica,55" at graph 0.4, graph 1.1

set label "Fitness of mutants" font "Helvetica,45" at graph 0.1, graph -0.43 
set label "deleterious" font "Helvetica,45" at graph 0.3, graph -0.28
set label "lethal" font "Helvetica,45" at graph 0.0, graph -0.43 rotate by 90
set label "neutral" font "Helvetica,45" at graph 1.0, graph -0.46 rotate by 90

set xrange [0:1]
set yrange [0:1]

plot "curvea09t2c1.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "curvea09t2c1.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvea09t2c2.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curvea09t2c2.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "curvea09t2c2.dat" u 1:2 lt rgb "red" lw 1 title "", "curvea09t2c1.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics

set size 1.1,1.1
set origin 2.45,0.5
set size square

unset border
unset tics

set xtics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"
set ytics ("0" 0, "0.3" 0.3, "0.6" 0.6, "1" 1) font "Helvetica,45"

unset colorbox

set label "k_1" font "Helvetica,55" at graph 1.05, graph 0.0
#set label "1-{/Symbol m}" font "Helvetica,50" at graph 0.0, graph 1.1

set label "LM" front font "Helvetica,50" tc rgb "yellow" at graph 0.05, graph 0.15
set label "ET" front font "Helvetica,50" tc rgb "red" at graph 0.65, graph 0.55

#set label "Copying fidelity" font "Helvetica,45" at graph -0.4, graph 0.1 rotate by 90

#set title "{/Symbol q}_R=4" font "Helvetica,55"
set label "{/Symbol q}_R=4" font "Helvetica,55" at graph 0.4, graph 1.1

set label "Fitness of mutants" font "Helvetica,45" at graph 0.1, graph -0.43 
set label "deleterious" font "Helvetica,45" at graph 0.3, graph -0.28
set label "lethal" font "Helvetica,45" at graph 0.0, graph -0.43 rotate by 90
set label "neutral" font "Helvetica,45" at graph 1.0, graph -0.46 rotate by 90

set xrange [0:1]
set yrange [0:1]

plot "curvea09t4c1.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-blue" title "", "curvea09t4c1.dat" u 1:2 w filledcu above y2=0 lt rgb "dark-red" title "", "curvea09t4c2.dat" u 1:2 w filledcu below y2=1 lt rgb "dark-goldenrod" title "", "curvea09t4c2.dat" u 1:2 w filledcu above y2=0 lt rgb "grey80" title "", "curvea09t4c2.dat" u 1:2 lt rgb "red" lw 1 title "", "curvea09t4c1.dat" u 1:2 lt rgb "gold" lw 1 title "" 


unset label
unset border
unset tics


unset multiplot

#replot


