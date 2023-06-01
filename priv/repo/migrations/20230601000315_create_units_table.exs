defmodule Elixicount.Repo.Migrations.CreateUnitsTable do
  use Ecto.Migration

  def change do
    create table(:units) do
      add :unit, :text
    end
  end
end
