class Usuario < ApplicationRecord
  has_many :aulas
  validates :nome, presence: true
end
