defmodule Discordia.Web.PageController do
  use Discordia.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
