defmodule AutoformTestWeb.PageController do
  use AutoformTestWeb, :controller
  def index(conn, _params) do
    render conn, "index.html"
  end
end
