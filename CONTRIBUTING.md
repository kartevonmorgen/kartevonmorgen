# How to contribute to KVM (Karte Von Morgen) 

## Found a bug?

Please let us know about any bugs you find via the github issue editor. Click
[here](https://github.com/flosse/kartevonmorgen/issues/new) and report what you experienced and what you would have expected to happen.

## Pull Request

We are happy about any contribution via a pull request. To be able to easily
accept your pull request, please stick to the following Style Guide.

## Beginner Developer Guide

If you want to contribute but do not know all the used technologies, then don't
worry. In the following lines you find a step-by-step manual how to get
started and help us with developing on KVM (Karte von morgen).

### Setup your system

You can use any operating system but for this guide we use the
commands for linux (e.g. [Kubuntu 16.04 LTS](http://kubuntu.org/getkubuntu/)).
For another operating system it should be easy to find out the
equivalent commands by googling.

Install [Node](https://nodejs.org/)
and [npm](https://www.npmjs.com/) that we'll need to build the app:

    sudo apt-get install nodejs nodejs-legacy npm

To manage the source code and to keep track of changes,
[git](http://git-scm.com/) will help you:

    sudo apt-get install git

Great, that's it! Your are done!

### Learn the basics

If you've never done that it's a good idea to first play
around with the following web development basics before
continuing:
- JavaScript
- HTML
- CSS

**Note**:
If you want you can install [zeal](https://zealdocs.org/), which
is an offline browser for JavaScript-, HTML-, CSS-, React-Documentation
and many many more:

    $ sudo add-apt-repository ppa:zeal-developers/ppa
    $ sudo apt-get update
    $ sudo apt-get install zeal

### React & Redux
As a framework KVM uses [React](https://facebook.github.io/react/)
with [redux](https://github.com/rackt/redux).

Here is a great [talk](https://facebook.github.io/flux/) and
[comic](https://medium.com/code-cartoons/a-cartoon-guide-to-flux-6157355ab207) which 
explains why Redux is a good idea (they are about Flux but all of this
is also valid for Redux which is the next stage after Flux).

Then you should be prepared to have a look at the 
framework. I recommend to read at least the
[introduction](https://redux.js.org/introduction/getting-started) and
the [basics](https://redux.js.org/basics/basic-tutorial) sections as a
first overview.
Now, let's put React and Redux together, for example with this ["Step by Step Guide To Building React Redux Apps"](https://medium.com/@rajaraodv/step-by-step-guide-to-building-react-redux-apps-using-mocks-48ca0f47f9a).

The framework that connects React and Redux in the end is [react-redux](https://github.com/gaearon/react-redux).

Congratulations, you're now a pro that can help others to hack the awesome KVM platform!

That's it. Everything else is a matter of detail.
Nevertheless here are some more libs used and you should/could know about:

- [styled-components](https://www.styled-components.com)
- [leaflet](http://leafletjs.com/) & [react-leaflet](https://github.com/PaulLeCam/react-leaflet)
- [superagent](https://github.com/visionmedia/superagent)
- [purecss](http://purecss.io/)
- [font-awesome](http://fontawesome.io/)
