class Move < ApplicationRecord
  belongs_to :aula,optional: true
  has_ancestry
end
