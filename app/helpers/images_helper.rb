module ImagesHelper

  def large_random_image
    @rnd_image = Image.random
    image_tag(@rnd_image.photo.url(:large))
  end
end