class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	validates :description, presence: true
	validates :description, length: { minimum: 6, too_short: "must have at least %{count} lettertjes" }
	validates :image, presence: true
end
