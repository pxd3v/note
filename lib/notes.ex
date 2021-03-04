defmodule Notes do
  alias Notes.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call

end
