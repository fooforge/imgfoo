# ToDos

* Remove Bugs
   * √ 404 after uploading an image file
   * √ "no method error" (undefined method `attachment' for nil:NilClass) in "Albums#Show" after creating a new album
   * Google Map gets crippled by some jquery foo

* Backend
    * Complete image uploading
        * √ Show image(s)
        * Edit image(s)
    * EXIF data
        * √ Get EXIF Data from file and present
        * Make EXIF Data more versatile (e.g. showing all images by lense)
        * Let the user choose which EXIF tags to show
    * Integrate image management
        * √ Add albums
        * Improve album views
        * Add tags
    * Complete user/role model
        * Add author/collaborater role
        * Inplement rights management
    * Build configuration interface
    * Make static pages configurable
    * Integrate social features
        * start with Flattr if possible
        * Afterwards: Twitter API
        * And Instagram!
    * √ Integrate Maps
        * OpenStreetMap first
        * √ then Google Maps
    * Frontend
        * √ Build a basic layout via Blueprint CSS (fluently)
        * √ Use twitter bootstrap for once
        * Make decision regarding JS library (JQuery/Prototype)
            * Learn this Shmitzik
            * Implement Lightbox
            * Integrate a slideshow (random|album|on_startpage)
    * Bonus tasks
        * Enable templating for frontend
        * Slideshow stuff