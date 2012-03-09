# == Schema Information
#
# Table name: images
#
#  id                      :integer         not null, primary key
#  title                   :string(255)
#  user_id                 :integer
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#  model                   :string(255)
#  date_time_original      :string(255)
#  image_size              :string(255)
#  focal_length            :float
#  shutter_speed           :float
#  aperture                :float
#  iso                     :integer
#  white_balance           :string(255)
#  flash                   :string(255)
#  gps_altitude            :string(255)
#  gps_latitude            :string(255)
#  gps_longitude           :string(255)
#

require 'spec_helper'

describe Image do

  before(:each) do
    @user = Factory(:user)
    @attr = { :title => "A title" }
  end

  it "should create a new instance given valid attributes" do
    @user.images.create!(@attr)
  end

  describe "User associations" do
  
    before(:each) do
      @image = @user.images.create(@attr)
    end

    it "should have a user attribute" do
      @image.should respond_to(:user)
    end

    it "should have the right associated user" do
      @image.user_id.should == @user.id
      @image.user.should == @user
    end
  end
end
