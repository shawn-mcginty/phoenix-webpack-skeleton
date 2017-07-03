defmodule TimeVoice.PageController do
  use TimeVoice.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
