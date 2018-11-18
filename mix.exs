defmodule PC.MixProject do
  use Mix.Project

  def project do
    [
      app: :pc,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PC.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:partisan, "~> 3.0"},
      {:libcluster, "~> 3.0"},
      {:distillery, "~> 2.0", runtime: false}
    ]
  end
end
