class Micromessage < ActiveRecord::Base
	belongs_to :user

	validates :contenu, :length => { :maximum => 140 }
end
