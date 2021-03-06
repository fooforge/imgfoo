# Project scope

I began to photograph once more and tried out various Open Source image
galleries, but I wasn't really confident with any of them. So I had to write my
own. This is imgfoo.

Participation is welcome. Simply fork it on Github and send me a pull request.

Please note:
At the moment imgfoo is just a huge playground to get warm with RoR and a
couple of gems.

# Index
* [Planned features](#features)
* [Requirements](#requirements)
* [Setup](#setup)
* [Thanks to](#thanks)

# Planned features

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
        * Instagram
    * Static pages
        * e.g. for short description of the photographer
    * Image management via
        * Albums
        * Tags
    * Some fuzzy logic to order/alter images automatically by EXIF data
    * Multi-user capable to create collaborative galleries
* Equipment presentation
    * Cameras/Lenses
    * Accessoires

# Requirements

* Ruby 1.9
* Bundler
* libimage-exiftool-perl|perl-Image-ExifTool
* perl-Image-ExifTool

# Setup

* git clone #{repo}
* cd #{repo}
* bundle install

# Thanks to

* [The Rails Tutorial](http://ruby.railstutorial.org) (you simply rock!)
* [Albumdy](https://github.com/rapind/albumdy) for a couple of ideas
* [Blueprint CSS](http://blueprintcss.org/) for making design easier

* Image attributions
    * [CIDE](http://www.flickr.com/photos/sono/6686795309/) by [sonojacker](http://www.flickr.com/photos/sono/)
    * [Pierre-Etienne](http://www.flickr.com/photos/lazulibeaubien/6686843401/) by [Pierre-Etienne Bergeron](http://www.flickr.com/photos/lazulibeaubien/)
    * [Broke](http://www.flickr.com/photos/psyberartist/6686822483/) by [psyberartist](http://www.flickr.com/photos/psyberartist/)
    * [Stirling BW](http://www.flickr.com/photos/mmoscosa/6686833949/) by [mmoscosa](http://www.flickr.com/photos/mmoscosa/)
    * [Stirling countryside](http://www.flickr.com/photos/mmoscosa/6686826627/) by [mmoscosa](http://www.flickr.com/photos/mmoscosa/)
    * [Firemaster](http://www.flickr.com/photos/generated/6686796195/) by [jared](http://www.flickr.com/photos/generated/)
