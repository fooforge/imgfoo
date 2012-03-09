module ImagesHelper

  def medium_random_image
    @rnd_image = Image.random
    image_tag(@rnd_image.attachment.url(:medium))
  end
end