# Plotando funcoes
using Plots

f(x) = x^2 + 16x + 39
png(plot(f), "plot1.png")

g(x) = x^2 - 8x + 4
png(plot(g), "plot2.png")

png(plot([f, g], title="Duas funções", lw=3), "plot3.png")

using Symbolics

# Derivadas 
@variables t u # Declarando as varaiveis que faram parte das equações
z = t^2 + 5t + 10u  # Definindo equação
dz = Symbolics.derivative(z, t) # Derivando a equação defnida
println("f(t, u) = $(z)")
println("df(t, u) = $(expand_derivatives(dz))")

## Derivada de segunda e terceira ordem
D2 = Differential(t)^2
D3 = Differential(t)^3
dz2 = D2(z)
dz3 = D3(z)
println("f(t, u)'' = $(expand_derivatives(dz2))")
println("f(t, u)''' = $(expand_derivatives(dz3))")


## Usando funções simbolicas e Derivadas destas como funções
h = @eval $(build_function(expand_derivatives(z), [t, u]))
dh = @eval $(build_function(expand_derivatives(dz), [t, u]))

println(h([1, 0]))
println(dh([1, 0]))

# Gerar Matrix Facobianada
@variables x y
f1 = x + x * y
f2 = x^2 + y
j = Symbolics.jacobian(
    [f1, f2],
    [x, y]
)
show(stdout, "text/plain", j)
print("\n")


