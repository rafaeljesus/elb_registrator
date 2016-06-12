defmodule ElbRegistrator do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(ElbRegistrator.Worker, [])
    ]

    opts = [strategy: :one_for_one, name: ElbRegistrator.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
