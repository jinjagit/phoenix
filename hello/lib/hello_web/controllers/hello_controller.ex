defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  plug :bibble

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end

  def bibble(conn, _) do
    IO.puts "my terminal message from a plug in HelloController\n"

    conn
  end
end
