defmodule ElbRegistrator.Mixfile do
  use Mix.Project

  def project do
    [app: :elb_registrator,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
    mod: {ElbRegistrator, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:exrm, "~> 1.0.5"}
    ]
  end

  defp description do
    """
    Register EC2 instances with an ELB
    """
  end

  defp package do
    [maintainers: ["Rafael Jesus"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/rafaeljesus/elb_registrator"},
     files: ~w(mix.exs README.md lib)]
  end
end
