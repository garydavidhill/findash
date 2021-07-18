defmodule Findash.Repo do
  use Ecto.Repo,
    otp_app: :findash,
    adapter: Ecto.Adapters.Postgres
end
