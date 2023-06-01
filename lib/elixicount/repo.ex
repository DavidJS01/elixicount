defmodule Elixicount.Repo do
  use Ecto.Repo,
  otp_app: :elixicount,
  adapter: Ecto.Adapters.SQLite3
end
