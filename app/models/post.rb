# == Schema Information
# Schema version: 22
#
# Table name: posts
#
#  id                       :integer(11)     not null, primary key
#  blog_id                  :integer(11)     
#  topic_id                 :integer(11)     
#  person_id                :integer(11)     
#  title                    :string(255)     
#  body                     :text            
#  blog_post_comments_count :integer(11)     default(0), not null
#  type                     :string(255)     
#  created_at               :datetime        
#  updated_at               :datetime        
#

class Post < ActiveRecord::Base
  include ActivityLogger
  has_many :activities, :foreign_key => "item_id", :dependent => :destroy
end
