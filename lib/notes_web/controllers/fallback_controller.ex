defmodule NotesWeb.FallbackController do
  use NotesWeb, :controller

  def call(connection, {:error, result}) do
    connection
    |> put_status(:bad_request)
    |> put_view(NotesWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
