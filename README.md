# Goodmap

Goodmap is a map platform for changemaker projects. Currently, two projects are using goodmap:
- Transition München: Beta-Version: [https://map.transition-muc.de/](https://map.transition-muc.de/)
- Karte von morgen: [https://kartevonmorgen.org/](https://kartevonmorgen.org/)

Both projects are using the [https://github.com/goodmap/goodmap-webapp](goodmap-webapp) (React). And goodmap-webapp is using [https://github.com/goodmap/goodmap-core](https://github.com/goodmap/goodmap-core) (pure TypeScript, framework-agnostic).

[![Build Status](https://secure.travis-ci.org/flosse/kartevonmorgen.svg?branch=master)](http://travis-ci.org/flosse/kartevonmorgen)
[![Dependency Status](https://gemnasium.com/flosse/kartevonmorgen.svg)](https://gemnasium.com/flosse/kartevonmorgen)
[![Dependency Status](https://dependencyci.com/github/flosse/kartevonmorgen/badge)](https://dependencyci.com/github/flosse/kartevonmorgen)
[![License](https://img.shields.io/badge/license-AGPLv3-blue.svg?style=flat)](https://github.com/flosse/kartevonmorgen/blob/master/LICENSE)

Are you're interested in contributing?
The following is a description of a quickstart.
If you're looking for a more comprehensive introduction,
have a look at [CONTRIBUTING.md](CONTRIBUTING.md).

### Dependencies

To be able to start development you'll need the following tools:

- [git](https://www.git-scm.com/)
- [Node.js](https://nodejs.org/) version 6.x
- [npm](https://www.npmjs.com/package/npm) version 3.x
- [OpenFairDB](https://github.com/slowtec/openfairdb)

Now clone this repository:

```sh
git clone https://github.com/goodmap/goodmap
```

Go to the root of it and install all the dependencies:

```sh
cd goodmap
yarn
```

### Build

To build the web application run:

```sh
yarn start
```

The result can be found in `dist/`.

### Development

You may either use a remote instance of the OpenFairDB server or start your
own instance locally.

#### Remote OpenFairDB server

The easiest way to get a local setup running is by using the remote API of [OpenFairDB](https://github.com/slowtec/openfairdb).
To do so change `src/constants/URLs.js` to

``` js
OFDB_API: {
    //link: window.location.origin + "/api" //use when you run openfairdb locally
    link: window.location.protocol + "//" + "api.ofdb.io/v0" //use this to use the remote api
}
```

Don't forget to skip those changes later when comitting or revert them before
starting a local server instance as described next!

#### Local OpenFairDB server

The alternative is to run [OpenFairDB](https://github.com/slowtec/openfairdb) server locally.
A static executable for all recent versions is available on the
[OpenFairDB *Releases*](https://github.com/slowtec/openfairdb/releases) page.

Download, unpack and run (on Linux):

```sh
wget https://github.com/slowtec/openfairdb/releases/download/v0.5.5/openfairdb_v0.5.5.x86_64-unknown-linux-musl.tar.xz
tar xJf openfairdb_v0.5.5.x86_64-unknown-linux-musl.tar.xz
RUST_LOG=info ROCKET_PORT=6767 ./openfairdb
```

`openfairdb` should be listening on port 6767. Stop the server for finishing the initial setup.

##### Database setup

The file `openfair.db` with an empty SQLite3 database has been created during the first startup
in the current working directory. This empty database needs to be populated with 3 categories
that are referenced from the frontend by their ids.

For this purpose start your favourite SQLite3 management tool, open the *openfairdb.db* file
and execute the SQL statements in
[res/init_openfairdb_categories_de.sql](res/init_openfairdb_categories_de.sql). You can also accomplish
this task with the SQLite CLI tool:

```sh
sqlite3 openfair.db < res/init_openfairdb_categories_de.sql
```

The actual names of the categories in the database do not matter, but you may translate them
into your preferred language.

Now restart the server again and keep it running in a terminal to monitor the logs:

```sh
RUST_LOG=info ROCKET_PORT=6767 ./openfairdb
```

#### Web app

Get the web app running:

```sh
cd /path/to/kartevonmorgen/
npm start
```

The web app is now listening on port 8080. Open it in your browser `https://localhost:8080`.
Ignore the security warning that is caused by a self-signed certificate in the local proxy.

On every file change in `src/`, the app will be build
for you and the browser reloads automatically.

### Tests

To run the tests type

```sh
yarn test
```

or

```sh
yarn watch-test
```

### Backend

KVM uses the [OpenFairDB](https://github.com/slowtec/openfairdb) as its backend.

## Goodmap
<3 Goodmap Consortium

### Core
* Navigate to `goodmap-core` folder
* Add changes
* Recompile by using `yarn build`

### Webapp
* Navigate to `goodmap-webapp` folder
* Install via `yarn install`
* Add changes
* Run by using `yarn start`

## License

Copyright (c) 2015 - 2018 Markus Kohlhase <mail@markus-kohlhase.de>

This project is licensed under the [AGPLv3 license](http://www.gnu.org/licenses/agpl-3.0.txt).
