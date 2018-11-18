use Mix.Config

config :libcluster,
  # debug: true,
  topologies: [
    example: [
      strategy: Cluster.Strategy.Gossip,
      connect: {PC, :connect_node, []},
      disconnect: {PC, :disconnect_node, []},
      list_nodes: {PC, :list_nodes, []}
    ]
  ]
