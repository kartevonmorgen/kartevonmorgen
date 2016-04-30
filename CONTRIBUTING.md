# How to contribute to KVM (Karte Von Morgen) 

## Found a bug?

Please let us know about any bugs you find via the github issue editor. Click
[here](https://github.com/flosse/kartevonmorgen/issues/new) and report what you
actually experienced and what you would have expected to happen.

## Pull Request

We are happy about any contribution via a pull request. To be able to easily
accept your pull request, please stick to the following Style Guide.

### Coffeescript Style Guide

Please follow the coffeescript style guide from [polarmobile](https://github.com/polarmobile/coffeescript-style-guide)

## Beginner Developer Guide

If you want to contribute but do not know all the used technolgies, then don't
worry. In the following lines you find a step-by-step manual how to get
started and help us with developing on KVM (Karte Von Morgen).

### Setup your system

Take an operating system of your choice.
Instead of describing the setup of multiple systems, I'll use
[Kubuntu 16.04 LTS](http://kubuntu.org/getkubuntu/) for this guide
(although I personally prefer [NixOS](http://nixos.org)).

First of all, make shure you have a good text editor you're comfortable with.
Here we'll use `vim`. Open a terminal (e.g. `konsole`) an install it:

    sudo apt-get update
    sudo apt-get install vim

**Warning**:
If you never used `vim`, start with something like `kate` (already installed in
Kubuntu).

Ok, that's boring, I know. So go on and install [Node](https://nodejs.org/)
and [npm](https://www.npmjs.com/) that we'll need to build the app:

    sudo apt-get install nodejs nodejs-legacy npm

To manage the source code and to keep track of changes,
[git](http://git-scm.com/) will help you:

    sudo apt-get install git

Great, that's it! Your are done!

### Learn the basics

If you're a web developer, you probably can skip this section.
For newcomers I recommend to play around with the following technologies
before starting with the KVM development.

- JavaScript
- HTML
- CSS

Ok, that's really really the bare minimum.
So let's have a look at some technologies used for KVM:

- [CoffeeScript](http://coffeescript.org/) - that's a great alternative syntax for JS
- [Stylus](https://learnboost.github.io/stylus/) - that's a great preprocessor for CSS
- [React](https://facebook.github.io/react/) - it's the framework we use to build the view

Still boring for you? So go to the next section.
Otherwise stop and learn!

**Note**:
I recommend to install [zeal](https://zealdocs.org/):

    $ sudo add-apt-repository ppa:zeal-developers/ppa
    $ sudo apt-get update
    $ sudo apt-get install zeal

### Learn more

Now I assume you're a super React-Coffee-Stylus hacker that really want to
learn something new.

So go ahead an learn all about the [flux architecture](https://facebook.github.io/flux/).
And don't miss the great
[cartoon guide to flux](https://medium.com/code-cartoons/a-cartoon-guide-to-flux-6157355ab207).

Then you should be prepared to have a look at the [redux](https://github.com/rackt/redux)
framework.
I recommend to read at least the
[introduction](http://rackt.github.io/redux/docs/introduction/index.html) and
the [basics](http://rackt.github.io/redux/docs/basics/index.html) sections as a
first overview.
There is also a [Step by Step Guide To Building React Redux Apps](https://medium.com/@rajaraodv/step-by-step-guide-to-building-react-redux-apps-using-mocks-48ca0f47f9a).

Now I think it's easy for you to connect react and redux with
[react-redux](https://github.com/gaearon/react-redux).

Congratulations, your now a pro that can help other to hack the awesome KVM platform!

That's it. Everything else is a matter of detail.
Nevertheless here are some more libs used and you should/could know about:

- [leaflet](http://leafletjs.com/) & [react-leaflet](https://github.com/PaulLeCam/react-leaflet)
- [superagent](https://github.com/visionmedia/superagent)
- [purecss](http://purecss.io/)
- [font-awesome](http://fontawesome.io/)
