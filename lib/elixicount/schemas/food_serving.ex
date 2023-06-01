defmodule Elixicount.Schemas.FoodServing do
  use Ecto.Schema

  schema "food_servings" do
    field :food_name, :string
    field :calories_per_serving, :float
    field :serving_quantity, :integer
    field :units, :integer
  end
end
