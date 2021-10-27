defmodule OpentelWeb.Plugs.PutUser do
  import Plug.Conn

  require OpenTelemetry.Tracer, as: Tracer

  def init(_) do
    []
  end

  def call(conn, _) do
    ctx = Tracer.current_span_ctx()
    IO.inspect(ctx)

    OpenTelemetry.Span.set_attribute(ctx, "user.id", 1234)

      # Tracer.set_attribute("user.id", 1234)
    conn
    |> assign(:user_id, 1234)
  end
end
