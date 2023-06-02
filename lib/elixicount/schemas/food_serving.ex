defmodule Elixicount.Schemas.FoodServing do
  use Ecto.Schema
  import Ecto.Changeset

  schema "food_servings" do
    field :food_name, :string
    field :calories_per_serving, :float
    field :serving_quantity, :integer
    field :units, :integer
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:food_name, :calories_per_serving, :serving_quantity, :units])
    |> validate_required([:food_name, :calories_per_serving, :serving_quantity, :units])
    |> validate_number(:calories_per_serving, greater_than: 0)
    |> validate_number(:serving_quantity, greater_than: 0)
  end
  # @TODO: explore why validate number is failing
end
