# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lalisa,
  ecto_repos: [Lalisa.Repo]

# Configures the endpoint
config :lalisa, LalisaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "keqw+NPYsukUnCHGcSai4q9TrMIAkSdaZ17DcY26HcCQvyuffK+uifXqE759cIEG",
  render_errors: [view: LalisaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lalisa.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
