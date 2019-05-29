# JSONLoggerExamples

[![Build Status](https://travis-ci.org/seniverse/ex_json_logger_examples.svg?branch=master)](https://travis-ci.org/seniverse/ex_json_logger_examples)

Usage examples centered on how to log messages with JSON format in Elixir based on [ex_json_logger](https://github.com/rentpath/ex_json_logger).

See [test/json_logger_examples_test.exs](test/json_logger_examples_test.exs) for usage cases and [config/config.exs](config/config.exs) for how to do configuration for logger to set a custom formatter.

See [ex_json_logger - GitHub](https://github.com/rentpath/ex_json_logger) for more instructions about usage.

See [Logger - Elixir](https://hexdocs.pm/logger/Logger.html) for official doc about `Logger`.

## Try it out

```sh
$ iex -S mix
iex> JSONLoggerExamples.log "abc"
:ok
iex> {"time":"2019-05-29 17:31:31.424","pid":"#PID<0.197.0>","msg":"abc","module":"Elixir.JSONLoggerExamples","line":6,"level":"info","function":"log/1","file":"lib/json_logger_examples.ex","application":"ex_json_logger_examples"}
```
It shows how actual messages printed in an Elixir module looks like in practice.

## Explanations

1. JSON is friendly for fields extension. We can add any fields we want in practice to a JSON via [Logger.Metadata](https://hexdocs.pm/logger/Logger.html#module-metadata) or other ways.

2. Just printing log to `stdout`. See [Logs - 12factor](https://12factor.net/logs) for its reason. Let's develop [Cloud-Native](https://pivotal.io/cloud-native) Apps!
