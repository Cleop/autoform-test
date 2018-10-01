defmodule AutoformTestWeb.UserController do
  use AutoformTestWeb, :controller
  use Autoform

  alias AutoformTest.User

  def new(conn, _params) do
    changeset = User.changeset(%User{}, %{})

    render conn, "new.html", changeset: changeset
  end

  def edit(conn, %{"id" => id}) do
    user = %User{email: "jobloggs@dwyl.com", id: id}
    changeset = User.changeset(user, %{})

    conn
    |> render_autoform(:update, User, user: user, changeset: changeset)
  end
end
