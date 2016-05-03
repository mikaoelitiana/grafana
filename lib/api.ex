defmodule Grafana.API do
  defmacro __using__(_) do
    case Application.get_env(:grafana, :server) do
      "test" <> _ ->
        quote do
          import Grafana.API.Fake
        end
      _ ->
        quote do
          import Grafana.API.Real
        end
    end
  end
end
