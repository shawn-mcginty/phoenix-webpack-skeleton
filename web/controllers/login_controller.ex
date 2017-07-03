defmodule TimeVoice.LoginController do
  use TimeVoice.Web, :controller

  def default_login_page(conn, _params) do
    render conn, "default.html"
  end
end
