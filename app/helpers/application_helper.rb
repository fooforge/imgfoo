module ApplicationHelper


  def title
    base_title = "IMGfoo"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo_small.png", :alt => "imgfoo", :class => "round")
  end
end
