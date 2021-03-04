defmodule NotesWeb.UsersController do
  use NotesWeb, :controller

  alias Notes.User

  action_fallback NotesWeb.FallbackController


  def create(connection, params) do
    with {:ok, %User{} = user} <- Notes.create_user(params) do
      connection
      |> put_status(:ok)
      |> render("create.json", user: user)
    end
  end
end
