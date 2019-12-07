# How to contribute to KVM (Karte Von Morgen) 

## Found a bug?

Please let us know about any bugs you find via the github issue editor. Click
[here](https://github.com/kartevonmorgen/kartevonmorgen/issues/new) and report what you experienced and what you would have expected to happen.

## Pull Request

We are happy about any contribution via a pull request. To be able to easily
accept your pull request, please stick to the following Style Guide.

## Beginner Developer Guide

If you want to contribute but do not know all the used technologies, then don't
worry. In the following lines you find a step-by-step manual how to get
started and help us with developing on KVM (Karte von morgen).

### Setup your system

You can use any operating system but for this guide we use the
commands for linux (e.g. [Ubuntu 18.04 LTS](https://ubuntu.com/download/desktop)).
For another operating system it should be easy to find out the
equivalent commands by googling.

Install [Rust](https://rust-lang.org/)
and [wasm-pack](https://rustwasm.github.io/wasm-pack/) that we'll need to build the app:

    sudo apt-get install build-essentials
    curl https://sh.rustup.rs -sSf | sh
    cargo install wasm-pack

To manage the source code and to keep track of changes,
[git](http://git-scm.com/) will help you:

    sudo apt-get install git

Great, that's it! Your are done!

### Learn the basics

If you've never done that it's a good idea to first play
around with the following web development basics before
continuing:

- Rust
- JavaScript
- HTML
- CSS

**Note**:
If you want you can install [zeal](https://zealdocs.org/), which
is an offline browser for JavaScript-, HTML-, CSS-, Rust-Documentation
and many many more:

    $ sudo add-apt-repository ppa:zeal-developers/ppa
    $ sudo apt-get update
    $ sudo apt-get install zeal

### Seed

As a framework KVM uses [Seed](https://seed-rs.org).

If you never build a seed app, we recommend to read some of it's documentation

- https://seed-rs.org/guide/quickstart
- https://erwabook.com/

and build a little basic app fist.

If you're familar with Rust and Seed you can now to help others to hack the awesome KVM platform!

That's it. Everything else is a matter of detail.
Nevertheless here are some more libs used and you should/could know about:

- [leaflet](http://leafletjs.com/)
- [serde](https://serde.rs/)
- [purecss](http://purecss.io/)
- [font-awesome](http://fontawesome.io/)


### Commit-Message Style
```
webapp / new / EntryForm: change email-validation
^         ^     ^
|         |     |
|         |     |
webapp    |     write any message here (in present tense)
core      |
core,webapp
* (whole project, e.g. README-file)
          |
          |
          |
        new: any change                  <-- functionality changes
        fix: bugfix                       \
        refactor: only rewriting          |
        style: just changing appearance   | no changes in functionality
        i18n: just changing i18n-texts    |
        test: adding or changing tests    |
        chore: any non-coding tasks,      /
               e.g. npm updates...
```
