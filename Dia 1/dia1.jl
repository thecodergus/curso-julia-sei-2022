# Exibir valores e textos
print("Ola Mundo! \n")
println(100)
println("Ola Mundo!! $(10), o numero é $(10)")
printstyled("Ola Mundo!!!\n"; color=:red)
printstyled("Ola Mundo!!!!\n"; color=:blue)
printstyled("Ola Mundo!!!!!\n"; color=:yellow)



# Operações matematicas basicas

println("Adição: 2 + 2 = $(2 + 2)")
println("Subtração: 3 - 2 = $(3 - 2)")
println("Multiplicação: 2 * 3 = $(2 * 3)")
println("Potenciação: 2 elevado ao cubo = 2 ^ 3 = 2 * 2 * 2 = $(2^3)")
println("Divisão: 4 / 2 = $(4 / 2)")
println("O Resto da Divisão 5 / 2: 5 % 2 = $(5 % 2)")



# Atribuição de valores e texto em Variaveis

variavel1 = 20
variavel2 = 30
variavel3 = "O valor das duas variaveis é:"

println("$(variavel3) $(variavel1) $(variavel2)")
printstyled("$(variavel3) $(variavel1) $(variavel2)\n"; color=:red)

## Extra
α = 20
δ = 30

println("π = $(π * 1)")
println("ℯ = $(ℯ * 1)")
println("α = $(α)")
println("δ = $(δ)")


# Aplicação de operadores matematicas em Variaveis
## Interação com uma variavel
a = 20
println("Valor de a é: $(a)")
println("$(a) + $(a) = $(a + 2)")
println("$(a) - 1 = $(a - 1)")
println("$(a) * 2 = $(a * 2)")
println("$(a) ^ 2 = $(a^2)")
println("$(a) / 2 = $(a / 2)")
println("$(a) % 3 = $(a % 2)")

## Interação com mais de uma variavel
b = 3
println("Valor de a e b é: $(a) e $(b)")
println("$(a) + $(b) = $(a + b)")
println("$(a) - $(b) = $(a - b)")
println("$(a) * $(b) = $(a * b)",)
println("$(a) ^ $(b) = $(a^b)")
println("$(a) / $(b) = $(a / b)")
println("$(a) % $(b) = $(a % b)")


## Vetores

# Inteiros
v1 = [1, 2, 3, 4, 5]

# Ponto Flutuantes, numeros quebrados
v2 = [1.2, 2.4, 3.2, 4.5, 5.2] 

# Textos
v3 = ["a", "b", "c", "d"]


## Matrizes
m1 = [
    1 2 3;
    4 5 6;
    7 8 9
]

m2 = [
    "a" "b" "c";
    "d" "e" "f";
    "g" "h" "i"
]

show(stdout, "text/plain", m1)
print("\n")
show(stdout, "text/plain", m2)
print("\n")


# Estrutura condicional

# Numerico
if 1 == 1
    println("È 1")
end

# Vetores
if [1, 2, 3] == [3, 2, 1]
    println("É igual")
else
    println("Não é igual")
end
 
a = 1
b = 2

if a != b
    println("$(a) e $(b) são diferentes!")
end
