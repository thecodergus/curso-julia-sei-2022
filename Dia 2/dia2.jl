# Plotando funcoes
using Plots

f(x) = x^2 + 16x + 39
png(plot(f), "plot1.png")

g(x) = x^2 - 8x + 4
png(plot(g), "plot2.png")

png(plot([f, g], title="Duas funções", lw = 3), "plot3.png")

using Symbolics

# Derivadas 
@variables t
D = Differential(t)
z = t^2 + 5t + 10
dz = D(z)
println("f(t) = $(z)")
println("df(t) = $(expand_derivatives(dz))")

## Usando funções simbolicas e Derivadas destas como funções
h = @eval $(build_function(expand_derivatives(z), t))
dh = @eval $(build_function(expand_derivatives(dz), t))

println(h(1))
println(dh(1))

