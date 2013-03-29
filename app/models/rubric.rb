class Rubric < ActiveRecord::Base
  has_ancestry
  attr_accessible :parent_id, :slug, :title
end
