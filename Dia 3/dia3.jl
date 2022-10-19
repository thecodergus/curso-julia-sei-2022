using CSV, DataFrames

df = CSV.File("imdb_data.csv") |> DataFrame

sort(first(df, 5), ["movie_year", "genre/0"])