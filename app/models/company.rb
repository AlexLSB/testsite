class Company < ActiveRecord::Base
  has_ancestry
  attr_accessible :adress, :email, :name, :rubric, :tel, :parent_id
end
