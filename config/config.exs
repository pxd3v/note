# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :notes,
  ecto_repos: [Notes.Repo]

# Configures the endpoint
config :notes, NotesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9rP7NZl+QUl3hmMO6MfEoFB/f8x2pdRwu4+aaKlsFb739Qrhgowi0VkzeUPPP+sz",
  render_errors: [view: NotesWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Notes.PubSub,
  live_view: [signing_salt: "BqAJItWY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
