class Aula < ApplicationRecord
 has_many :marks , dependent: :destroy
  accepts_nested_attributes_for :marks, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
  
end
