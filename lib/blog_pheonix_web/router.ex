defmodule BlogPheonixWeb.Router do
  use BlogPheonixWeb, :router

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

  scope "/", BlogPheonixWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  resources "/posts", PostController
  # Other scopes may use custom stacks.
  # scope "/api", BlogPheonixWeb do
  #   pipe_through :api
  # end
end
