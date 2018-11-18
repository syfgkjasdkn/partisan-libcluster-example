defmodule PC.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    topologies =
      Application.get_env(:libcluster, :topologies) ||
        raise(ArgumentError, "need libcluster.topologies")

    children = [
      # {Cluster.Supervisor, [topologies, [name: PC.Cluster.Supervisor]]}
    ]

    opts = [strategy: :one_for_one, name: PC.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
