defmodule EctoExampleWeb.Router do
  use EctoExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EctoExampleWeb do
    pipe_through :api
  end
end
