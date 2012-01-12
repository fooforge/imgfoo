# Project scope

I began to photograph once more and tried out various Open Source image
galleries, but I wasn't really confident with any of them. So I had to write my
own. This is imgfoo.

Participation is welcome. Simply fork it on Github and send me a pull request.

# Index
* [Planned features](#features)
* [Requirements](#requirements)
* [Setup](#setup)
* [Thanks to](#thanks)

# Planned features<a id="features" />

* Image presentation
    * Configurable JS Lightbox
    * JS Slideshows
    * Full EXIF Data showable
    * Maps integration for GPS information
        * Google Maps
        * OpenStreet Map
    * Covering pages for albums
    * Integration of social features
        * Facebook
        * Flattr
        * Flickr
        * Twitter
    * Static pages
        * e.g. for short description of the photographer
    * Image management via
        * Albums
        * Tags
    * Some fuzzy logic to order/alter images automatically by EXIF data
    * Multi-user capable to create collaborative galleries

# Requirements<a id="requirements" />

* Ruby 1.9
* Bundler

# Setup<a id="setup" />

* git clone #{repo}
* cd #{repo}
* bundle install

# Thanks to<a id="thanks" />

* [The Rails Tutorial](http://ruby.railstutorial.org) (you simply rock!)
* [Albumdy](https://github.com/rapind/albumdy) for a couple of ideas
* [Blueprint CSS](http://blueprintcss.org/) for making design easier