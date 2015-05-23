# PoisonTest

## Usage

```sh-session
$ mix deps.get
$ mix compile
$ mix compile.protocols
$ elixir -pa _build/dev/consolidated -pa _build/dev/lib/\*/ebin -S mix run -e 'PoisonTest.bench(:poison)'
```

## My Results

```
poison: 203.763ms
exjsx: 218.732ms
jiffy: 35.482ms
```
