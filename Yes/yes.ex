defmodule Yes do
  use Application
  use Supervisor

  # Yes.start() in iex
  def start(), do: start(1, 1)

  def start(_a, _b) do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(_args) do
    children = [
      worker(YesWorker, [])
    ]
    options = [
      strategy: :one_for_one
    ]
    Supervisor.init(children, options)
  end
end

defmodule YesWorker do

  def start_link(), do: print_yes()

  def print_yes do
    IO.puts "yes"
    print_yes()
  end
end
