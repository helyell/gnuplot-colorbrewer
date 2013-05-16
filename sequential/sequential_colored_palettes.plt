# example code for gnuplot-colorbrewer
# for use with sequential data in splot mode
# compatible with gnuplot >=4.2
# author: Anna Schneider

# set up output
set output 'sequential_colored_palettes.eps'
set terminal postscript color solid enhanced lw 5 "Helvetica"

# set up view, following http://gnuplot.sourceforge.net/demo/pm3dcolors.4.gnu
set format cb "%3.1f"
unset key
set view map
set samples 101, 101
set isosamples 2, 2
set style data pm3d
set style function pm3d
set noxtics
set noytics
set noztics
set xrange [ -10.0000 : 10.0000 ] noreverse nowriteback
set cbrange [ 0.00000 : 1.00000 ] noreverse nowriteback
set pm3d explicit at b
f(x)=(x+10)/20
GPFUN_f = "f(x)=(x+10)/20"

# plot with Greys
set title 'Greys'
load 'greys.plt'
splot f(x)

# plot with Purples
set title 'Purples'
load 'purples.plt'
splot f(x)

# plot with Blues
set title 'Blues'
load 'blues.plt'
splot f(x)

# plot with Greens
set title 'Greens'
load 'greens.plt'
splot f(x)

# plot with Orange
set title 'Oranges'
load 'oranges.plt'
splot f(x)

# plot with Reds
set title 'Reds'
load 'reds.plt'
splot f(x)

# plot with BuGn
set title 'BuGn'
load 'bugn.plt'
splot f(x)

# plot with YlGn
set title 'YlGn'
load 'ylgn.plt'
splot f(x)

# plot with YlOrRd
set title 'YlOrRd'
load 'ylorrd.plt'
splot f(x)