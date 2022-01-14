# # Visual

# The function `visual` can be used to give data-independent visual information about the plot
# (plotting function or attributes).

# The available plotting functions are documented
# [here](http://makie.juliaplots.org/dev/examples/plotting_functions/). Refer to
# plotting functions using upper CamelCase for `visual`'s first argument (e.g.
# `visual(Scatter), visual(BarPlot)`). See the documentation of each plotting
# function to discover the available attributes. These attributes can be passed
# as additional keyword arguments to `visual`, or as part of the `mapping` 
# you define.

# In fact `visual` can be used for any plotting function that is defined using
# the `@recipe` macro from Makie. This means that if you have a custom recpie
# defined in another package you can use it from AlgebraOfGraphics just like any
# of the plotting functions defined in Makie.

## Examples

using AlgebraOfGraphics, CairoMakie
set_aog_theme!()

df = (x=randn(1000), y=randn(1000))
plt = data(df) * mapping(:x, :y) * AlgebraOfGraphics.density(npoints=50)
draw(plt * visual(Heatmap)) # plot as heatmap (the default)

#

draw(plt * visual(colormap=:viridis)) # set a different colormap

#

draw(plt * visual(Contour)) # plot as contour

#

draw(plt * visual(Contour, linewidth=2)) # plot as contour with thicker lines
