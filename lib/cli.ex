defmodule CalCLI do
  def main(argv) do
    Application.put_env(:elixir, :ansi_enabled, true)

    optimus =
      Optimus.new!(
        name: "Elixicount",
        description: "CLI tool to count calories",
        version: "0.1.0",
        author: "DavidJS01@github.com",
        allow_unknown_args: false,
        parse_double_dash: true,
        subcommands: [
          create_profile: [
            name: "create_profile",
            about: "Create a user profile."
          ]
        ]
      )

    args = Optimus.parse!(optimus, argv)

    case args do
      %{args: %{}} ->
        Optimus.parse!(optimus, ["--help"])

      {[:create_profile], _args} ->
        IO.puts("Test")

      other ->
        IO.inspect(other)
    end
  end
end
