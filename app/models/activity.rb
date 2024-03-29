# encoding: utf-8
class Activity < ActiveRecord::Base
	belongs_to :club
	validates :club_id, :title, :description, :start_date, :finish_date, :address, presence: {message: "alanı boş bırakılamaz"}
	validates :avatar, presence: {message: "yüklenmesi zorunludur."} , on: :create
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "omu.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
