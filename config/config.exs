# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ecto_example,
  ecto_repos: [EctoExample.Repo]

# Configures the endpoint
config :ecto_example, EctoExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lhDswuVLdGs11TtW/x9ZAFXfjh/Gj+xgtUgXczWK/YvpU4tjB6mg2l+CiAvU5V23",
  render_errors: [view: EctoExampleWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: EctoExample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
