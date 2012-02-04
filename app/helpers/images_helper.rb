module ImagesHelper

  def large_random_image
    @rnd_image = Image.random
    image_tag(@rnd_image.attachment.url(:large))
  end

  def get_exif_data
    MiniExiftool.command=('exiftool -common')
    @exif_data = MiniExiftool.new @image.attachment.path
    @exif_data.to_hash
  end
end