# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rogerhelp,
  ecto_repos: [Rogerhelp.Repo]

# Configures the endpoint
config :rogerhelp, RogerhelpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vHi6mJnxCmaz3MIffTKWQ323fef3X5HjgD8OYq/QBWatK/hWTIXxfQp0OPnu1Twj",
  render_errors: [view: RogerhelpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rogerhelp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
