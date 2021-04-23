defmodule InmanaWeb.FallbackController do
  use InmanaWeb, :controller

  alias InmanaWeb.ErroView

  def call(conn, {error, %{result, status: status}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
