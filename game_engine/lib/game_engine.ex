defmodule GameEngine do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(GameEngine.Endpoint, []),
      worker(GameEngine.Game, [[name: :game]]),
    ]

    opts = [strategy: :one_for_one, name: GameEngine.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    GameEngine.Endpoint.config_change(changed, removed)
    :ok
  end
end
