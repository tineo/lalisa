defmodule LalisaWeb.PageController do
  use LalisaWeb, :controller

  plug :put_layout, "master.html"

  def index(conn, _params) do
    render conn, "index.html"
    #layout: {LalisaWeb.LayoutView, "master.html"}
  end
end
