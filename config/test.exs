use Mix.Config

# Configure your database
config :ecto_example, EctoExample.Repo,
  username: "postgres",
  password: "postgres",
  database: "ecto_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  ownership_timeout: 100_000

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ecto_example, EctoExampleWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
