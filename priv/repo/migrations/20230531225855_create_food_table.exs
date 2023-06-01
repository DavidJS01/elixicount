defmodule Elixicount.Repo.Migrations.CreateFoodTable do
  use Ecto.Migration

  def change do
    create table(:foods) do
      add :food_name, :text
    end
  end
end
