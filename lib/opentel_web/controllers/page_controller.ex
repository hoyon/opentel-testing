defmodule OpentelWeb.PageController do
  use OpentelWeb, :controller

  require OpenTelemetry.Tracer, as: Tracer

  def index(conn, _params) do
    Tracer.with_span "rendering index" do
      render(conn, "index.html")
    end
  end

  def page2(conn, _params) do
    Tracer.with_span "rendering page2" do
      raise "oh no!"
      render(conn, "index.html")
    end
  end
end
