defmodule JSONLoggerExamplesTest do
  use ExUnit.Case
  import ExUnit.CaptureLog
  require Logger

  test "simple log" do
    msg = "Hello, World!"
    log_msg = capture_log(fn -> Logger.info(msg) end)
    assert %{"msg" => ^msg, "level" => "info"} = Poison.decode!(log_msg)
  end

  test "log string list" do
    msg = ["a", "b", "c"]
    log_msg = capture_log(fn -> Logger.error(["a", "b", "c"]) end)
    left_msg = List.to_string(msg)
    assert %{"msg" => ^left_msg, "level" => "error"} = Poison.decode!(log_msg)
  end

  test "log with track_id metadata" do
    Logger.configure_backend(:console, metadata: [:track_id])
    Logger.metadata(track_id: "IAMATrackId")
    msg = "I should have a track id attached at track_id"
    log_msg = capture_log(fn -> Logger.debug(msg) end)

    assert %{"msg" => ^msg, "level" => "debug", "track_id" => "IAMATrackId"} =
             Poison.decode!(log_msg)
  end
end
