defmodule PC do
  @moduledoc ""

  @spec connect_node(atom) :: boolean
  def connect_node(node) do
    :ok == :partisan_peer_service.join(node)
  end

  @spec disconnect_node(atom) :: boolean
  def disconnect_node(node) do
    :ok == :partisan_peer_service.leave(node)
  end

  @spec list_nodes :: [atom]
  def list_nodes do
    {:ok, nodes} = :partisan_peer_service.members()
    # TODO
    nodes -- [node()]
  end
end
