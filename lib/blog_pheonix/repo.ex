defmodule BlogPheonix.Repo do
  use Ecto.Repo,
    otp_app: :blog_pheonix,
    adapter: Ecto.Adapters.Postgres
end
