defmodule NotesWeb.UsersView do
  alias Notes.User

  def render("create.json",
          %{user: %User{id: id, nickname: nickname, email: email}
        }) do
    %{
      message: "User created",
      user: %{
        id: id,
        nickname: nickname,
        email: email
      }
    }
  end
end
