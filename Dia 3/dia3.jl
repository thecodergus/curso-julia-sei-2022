using CSV, DataFrames

df = CSV.File("imdb_data.csv") |> DataFrame

# sort(first(df, 5), ["movie_year", "genre/0"])

# first(sort(df, ["movie_name"], rev=false), 3)
# show(df, allrows=true)
# df2 = select(df, [:rank, :movie_name, :movie_year])

# people = DataFrame(ID = [1, 2], Name = ["Morgan Freeman", "Al Pacino"])
df[df.movie_year .>= 2020, :]