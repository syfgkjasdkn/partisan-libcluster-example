defmodule PC do
  @moduledoc ""

  @spec connect_node(atom) :: boolean
  def connect_node(n) do
    :ok == :partisan_peer_service.join(n)
  end

  @spec disconnect_node(atom) :: boolean
  def disconnect_node(n) do
    :ok == :partisan_peer_service.leave(n)
  end

  @spec list_nodes :: [atom]
  def list_nodes do
    {:ok, nodes} = :partisan_peer_service.members()
    me = :partisan_peer_service_manager.myself().name
    Enum.reject(nodes, fn n -> n == me end)
  end
end
