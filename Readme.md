## Concurrency techniques presentation examples

### Preparation

1. To be able to use example you have to had `ruby`, `crystal`, `elixir` on you machine.

```
brew install elixir
brew install crystal
```

2. For some `ruby` samples you will need `gems`, you could install them by running:

```
bundle install
```

### How to use examples

```
time ruby examples/sequential.rb
time ruby examples/parallel.rb
ruby examples/race-condition.rb
...
crystal run examples/csp.cr
elixir examples/actors.exs
```
