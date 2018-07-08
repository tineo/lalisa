defmodule LalisaWeb.PageController do
  use LalisaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
