# Elixir Beginnings

## Why another language? Why Elixir

### For me

* Learning is important, continuous, fun and it makes me happy
* Grow toolbox
* Investigate systems
* Build thinking
* How do other language developers think

### Familiar with FP, Concurrency

* Is built on top of the Erlang System
* Benefits from the 30+ years of
  * Thinking
  * Building soft real time systems that are
    * distributed
    * highly scalable
    * reliable
    * fault-tolerant in nature.
  * Battle hardened system testing in real world problems.

### Unfamiliar with FP, Concurrency

* We all need to start thinking in different ways.
* Elixir provides an easy way to get started, avoiding complex vocabulary.
* All we will get is more cores.
* We need to try and understand concurrency and concurrent languages

## Language Nature

* Functional
* Dynamic
* Concurrent

## Philosophy

* Don't build a new runtime. Utilize Erlang's sophistication.

* Enable developer productivity with
  * simpler/familiar syntax,
  * constructs,
  * abstractions,
  * tooling
  * utilize Erlang's Built-in functions, libraries and the OTP.

* Observe other languages, libraries, tools and take the best of ideas, features
  * Ruby
  * Python
  * Clojure
  * F#
  * Haskell
  * scalaz
  * Bundler

## Young language, will i get help

* Kind community
* Language users are growing
* In reality, not so young (has all of Erlang's experience behind it)

## Installation

* brew install elixir (Mac)
* Installer (Windows)

### Dependencies

* Erlang

### Installation Units

#### Elixir 

```sh
$ ls /usr/local/Cellar/elixir/1.6.0
$ ls /usr/local/Cellar/elixir/1.6.0/bin
```

##### Elixir Components

* elixir
* elixirc
* iex
* mix

#### Erlang

```sh
$ ls /usr/local/Cellar/erlang/20.2.2
$ ls /usr/local/Cellar/erlang/20.2.2/bin
$ ls /usr/local/Cellar/erlang/20.2.2/lib/erlang
```

##### Erlang Components

* erl
* erlc
* dialyzer

* OTP components

## Understanding the runtime

### Key concepts of the runtime

* Erlang is not just a language, it is also a platform/environment.
* The Erlang System is
  * Erlang (the language and its constructs), and its sytem components.
  * OTP (principles of system design, patterns, constructs, libraries,  application framework and tooling)
    * ERTS
* Erlang VM  => (BEAM)

## Learning Paths

* Sequential Progrmaming
* Concurrent Programming

## Constructs

### Symbols

* = is not the assignment operator. It is a match operator.

### Values

* Atoms
* Numbers
  * Integers
  * Floats
  * Hex
  * Octal
  * Binary

* Strings
* Booleans
* Lists
* Maps
* Tuples
* Keyword Lists
* Range
* Functions
  * Anonymous
  * named
* Structs

#### System Values

* PIDs
* Ports

### Organization constructs

* Modules
* Functions
  * Arity of a function
  * named vs anonymous
  * public vs private

### Idiomatic Elixir

* The |> operator
* Function clauses
* Gaurds

### Elixir Standard Library

<https://hexdocs.pm/elixir/Kernel.html>

### Root, Base constructs

* Kernel

#### System

* System
* Process
* Path
* IO

## Tools

### Compilers

* elixir
* elixirc

### IEx

* The IEx banner
* The break menu
* IEx helpers
* Tab completion
* History

### Mix

* Dependency Management
* Scaffolding/Code Generators
* Tasks

### Hex

<https://hex.pm/>

* Packages Repository

### Phoenix

<http://phoenixframework.org/>

* Web Framework

### ExDoc

<https://github.com/elixir-lang/ex_doc>

* Documentation

### ExUnit

<https://hexdocs.pm/ex_unit/ExUnit.html>

* Testing

### Poison

<https://hex.pm/packages/poison>

### HTTPoison

<https://hex.pm/packages/httpoison>