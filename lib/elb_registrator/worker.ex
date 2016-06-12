defmodule ElbRegistrator.Worker do
  use GenServer
  alias ElbRegistrator.Aws

  @name __MODULE__

  def start_link(state \\ []) do
    GenServer.start_link(@name, state, name: @name)
  end

  def init(state) do
    set_interval()
    {:ok, state}
  end

  def handle_info(:work, state) do
    set_interval()
    sub_nets = Task.await(Aws.desccribeLoabBalances())
    IO.inspect sub_nets
    {:noreply, state}
  end

  defp set_interval, do: Process.send_after(self(), :work, 2000)
end
