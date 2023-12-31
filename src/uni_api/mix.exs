defmodule UniApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :uni_api,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {UniApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.6.1"},
      {:jason, "~> 1.4.1"},
      {:ecto_sql, "~> 3.0"},
      {:postgrex, "~> 0.17.3"}
    ]
  end
end
