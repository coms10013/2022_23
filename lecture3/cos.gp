set xrange [-pi-0.1:pi+0.1]
set yrange [-1.1:1.1]
set xtics ('$-\pi$' -pi, '$-\pi/2$' -pi/2,0,'$\pi/2$' pi/2, '$\pi$' pi)

plot cos(x) title '$\cos{t}$'
replot 1-0.5*x*x title "two terms"
replot 1-0.5*x*x+1.0/24*x*x*x*x title "three terms"
replot 1-0.5*x*x+1.0/24*x*x*x*x-1.0/720*x**6 title "four terms"

set xlabel '$t$'

set terminal cairolatex color pdf size 3.5in,2.4in
set output "cos.tex"

replot

set terminal wxt

replot