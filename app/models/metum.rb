# == Schema Information
#
# Table name: meta
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  instructions :text(65535)
#  created_at   :datetime
#  updated_at   :datetime
#

class Metum < ActiveRecord::Base

  validates_presence_of :title

  def to_s
    title
  end
end
