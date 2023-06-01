use Mix.Config

config :elixicount, Elixicount.Repo,
  adapter: Ecto.Adapters.SQLite3,
  database: "./db/elixicount.db"

  config :elixicount, ecto_repos: [Elixicount.Repo]
