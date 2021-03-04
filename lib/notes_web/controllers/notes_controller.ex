defmodule NotesWeb.NotesController do
  use NotesWeb, :controller

  def index(connection, _params) do
    connection
    |> put_status(:ok)
    |> json("hello world")
  end
end
