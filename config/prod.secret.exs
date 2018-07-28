use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :hello, HelloWeb.Endpoint,
  secret_key_base: "wD1Uj3ZHnhrL7//6I0j21Sd3G6KlOycmtpzA0Ay8OjGrYJQze27+hn7lrG3PEqcd"

# Configure your database
config :hello, Hello.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DB_USER")
  password: System.get_env("DB_PASSWORD")
  database: "hello_prod",
  pool_size: 15
