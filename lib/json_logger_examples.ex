defmodule JSONLoggerExamples do
  require Logger

  @spec log(any) :: :ok | {:error, any}
  def log(msg) do
    Logger.info(msg)
  end
end
