defmodule Opentel.Repo do
  use Ecto.Repo,
    otp_app: :opentel,
    adapter: Ecto.Adapters.Postgres
end
