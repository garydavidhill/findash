# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :findash,
  ecto_repos: [Findash.Repo]

# Configures the endpoint
config :findash, FindashWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HoJEEHqTUZr6C0cKhWaBsnUwYczoR+dzWHZK+esGWLUw7tg4LVvrMVuM3/p/ZCh+",
  render_errors: [view: FindashWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Findash.PubSub,
  live_view: [signing_salt: "RgSWvXee"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
