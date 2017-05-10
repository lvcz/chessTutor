class Aula < ApplicationRecord
  belongs_to :usuario
  validates Nome, presence: true
end
