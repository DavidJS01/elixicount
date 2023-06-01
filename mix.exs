defmodule Elixicount.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixicount,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()

    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],

    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:optimus, "~> 0.2"},
      {:ecto_sqlite3, "~> 0.10"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp escript do
    [main_module: CalCLI, name: "elixicount_cli"]
  end

end
