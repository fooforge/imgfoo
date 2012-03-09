# == Schema Information
#
# Table name: albums
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  image_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Album do

  belongs_to :user

  before(:each) do
    @attr = { :title => "Example album" }
  end

  it "should create a new instance given valid attributes" do
    Album.create!(@attr)
  end
end