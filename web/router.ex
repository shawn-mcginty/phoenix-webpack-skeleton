defmodule TimeVoice.Router do
  use TimeVoice.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TimeVoice do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/login", LoginController, :default_login_page
  end

  # Other scopes may use custom stacks.
  # scope "/api", TimeVoice do
  #   pipe_through :api
  # end
end
