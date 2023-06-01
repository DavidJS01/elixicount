defmodule Elixicount.Repo.Migrations.CreateFoodServingsTable do
  use Ecto.Migration

  def change do
    create table(:food_servings) do
      add :food_name, :text
      add :calories_per_serving, :real
      add :serving_quanity, :integer
      add :units, references("units")
    end
  end
end
