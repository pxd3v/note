defmodule Notes.Users.Create do
  alias Notes.User

  def call(params) do
    User.changeset(params)
      |> Notes.Repo.insert()
  end
end
