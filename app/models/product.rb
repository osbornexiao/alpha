class Product < ActiveRecord::Base
  attr_accessible :brand_name, :category, :mtype, :spec, :status
  validates_presence_of :brand_name, :category, :mtype, :spec, :message => "can't be blank" 
  validates_inclusion_of :status, :in => ["onsell","soldout"],:message => "should be onsell or soldout"
end
