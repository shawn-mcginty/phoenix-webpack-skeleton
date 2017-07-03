use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :time_voice, TimeVoice.Endpoint,
  secret_key_base: "4os97bBrmU8Exf5dJQAiu5hMoPuYVmj5W9NG96H+/9/nFHLt7qv0cJr1EDwj5YsC"

# Configure your database
config :time_voice, TimeVoice.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "timevoice",
  password: "timevoice1",
  database: "time_voice_prod",
  pool_size: 20
