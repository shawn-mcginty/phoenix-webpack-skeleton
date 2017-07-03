# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :time_voice,
  ecto_repos: [TimeVoice.Repo]

# Configures the endpoint
config :time_voice, TimeVoice.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0c7Fv2bT6Hlt+3qqsT1hflCpXQT5AUvqgQdflm/znDs4Jwxzc3fLk6sNxHsyfT3E",
  render_errors: [view: TimeVoice.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TimeVoice.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
