defmodule WasteManagement.Repo do
  use Ecto.Repo,
    otp_app: :waste_management,
    adapter: Ecto.Adapters.Postgres
end
