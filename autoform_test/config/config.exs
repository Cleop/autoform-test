# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :autoform_test,
  ecto_repos: [AutoformTest.Repo]

# Configures the endpoint
config :autoform_test, AutoformTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WH42OFl0QFkw9mx8e/y606HkJZraqNXOPeRIC/334vRTro5MZGExgghxzpFpbcNz",
  render_errors: [view: AutoformTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AutoformTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
