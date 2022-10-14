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

# Gerar Vetores
# De zeros
v4 = zeros(10)
println(v4)

# Entre dois valores
v4 = collect(100:120)
println(v4)

# De numertos aletorios
v5 = rand(10)
println(v5)


## Matrizes
m1 = [
    1 2 3
    4 5 6
    7 8 9
]

m2 = [
    "a" "b" "c"
    "d" "e" "f"
    "g" "h" "i"
]

# Exibir matrizes
show(stdout, "text/plain", m1)
print("\n")
show(stdout, "text/plain", m2)
print("\n")

# Gerar matrizes
# De zeros
m3 = zeros(3, 3)
show(stdout, "text/plain", m3)
print("\n")

# Entre dois valores
m4 = reshape(1:9, 3, 3)
show(stdout, "text/plain", m4)
print("\n")

# De numertos aletorios
m5 = rand(3, 3)
show(stdout, "text/plain", m5)
print("\n")

# Operações entre matrizes
a = [
    1 1 1
    2 2 2
    3 3 3
]
b = [2, 2, 2]

show(stdout, "text/plain", a * b)
print("\n")

c = [
    1 1 1
    1 1 1
    1 1 1
]

show(stdout, "text/plain", a + c)
print("\n")



## Estrutura condicional

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

# Com variaveis
a = 1
b = 2
c = 1

if a != b
    println("$(a) e $(b) são diferentes!")
end

if a == b
    println("$(a) e $(b) são iguais")
elseif a == c
    println("$(a) e $(c) são iguais")
else
    println("$(a), $(b) e $(c) são diferentes!")
end


## Estrutura de repetição

# for numerico
for numero in 1:10
    println("$(numero)")
end

for numero in 10:30
    if numero % 2 == 0
        println("$(numero) é par!")
    else
        println("$(numero) é impar!")
    end
end


# For em um vetor
a = [10, 22, 33, 45]

for i in a
    println("$(i)")
end


# Funções
function mostrar_matriz(matriz)
    show(stdout, "text/plain", matriz)
    print("\n")
end
mostrar_matriz(zeros(2, 2))

function soma(a, b)
    return a + b
end
function subtracao(a, b)
    return a - b
end
a = 5
b = 3
println("$(a) - $(b) = $(subtracao(a, b))")

## Exercicios

# Exercicio 1: Crie um for que exiba em azul (blue) os numeros pares e em vermelho(red) os numeros impares entre os numeros 50 e 70
for numero in 50:70
    if numero % 2 == 0
        printstyled("$(numero) é par!\n"; color=:red)
    else
        printstyled("$(numero) é impar!\n"; color=:blue)
    end
end

# Exercicio 2: Gere uma matriz de zeros de 8x8 e exiba ela
em = zeros(8, 8)
show(stdout, "text/plain", em)
print("\n")

# Exericio 3: Crie uma variavels com o ano atua, outra com o ano de seu nascimento e uma com seu nome e as exiba na tela seu nome e sua idade. Modelo exeplo: 'Gustavo - 24 anos'
nascimento = 1998
atual = 2022
nome = "Gustavo"
println("$(nome) - $(atual - nascimento)")