defmodule RogerhelpWeb.PageController do
  use RogerhelpWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
