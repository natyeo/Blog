defmodule BlogPheonixWeb.PageController do
  use BlogPheonixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
