defmodule FindashWeb.PageController do
  use FindashWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
