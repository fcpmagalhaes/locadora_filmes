class Film < ApplicationRecord
  belongs_to :genre
  has_many :comments, dependent: :destroy

  
  def self.created_at
  	where('created_at <= ?', Time.now).order('created_at desc')
  end

  def self.search(search)
  	if search
		where(["name LIKE ?","%#{search}%"]).order('id DESC')
  	else
  		all
  	end
  end

end


