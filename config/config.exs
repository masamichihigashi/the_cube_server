# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :the_cube,
  ecto_repos: [TheCube.Repo]

# Configures the endpoint
config :the_cube, TheCubeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lZoyQl6h91jC0yIpJhfnrd+vPqA4ecZznKZK3OxFMSj8NSjyggQ68pUNA6kBfzot",
  render_errors: [view: TheCubeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TheCube.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
