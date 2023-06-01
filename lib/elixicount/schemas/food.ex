defmodule Elixicount.Schemas.Food do
  use Ecto.Schema

  schema "foods" do
    field :food_name, :string
  end
end
