defmodule PC do
  @moduledoc ""

  @spec connect_node(atom) :: boolean
  def connect_node(node) do
    case :partisan_peer_service.join(node) do
      {:ok, nodes} ->
        # TODO
        node in nodes

      _ ->
        false
    end
  end

  @spec disconnect_node(atom) :: boolean
  def disconnect_node(node) do
    case :partisan_peer_service.leave(node) do
      {:ok, nodes} ->
        # TODO
        node not in nodes

      _ ->
        false
    end
  end

  @spec list_nodes :: [atom]
  def list_nodes do
    {:ok, nodes} = :partisan_peer_service.members()
    nodes
  end
end
