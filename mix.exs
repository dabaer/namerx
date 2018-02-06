defmodule Namerx.MixProject do
  @moduledoc false
  use Mix.Project

  def project do
    [
      app: :namerx,
      version: "0.1.0",
      description: description(),
      package: package(),
      elixir: "~> 1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    A prefixed random computer name generator.
    """
  end

  defp package do
    [ files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Dakora Baer <dbaer@arviksa.co.uk>"],
      licenses: ["UNLICENSE"],
      links: %{ "GitHub": "https://github.com/dabaer/namerx" }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      "test": ["test", "credo --strict"]
    ]
  end
end
