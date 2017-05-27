class Mark < ApplicationRecord
  belongs_to :aula, optional: true, :autosave => true
end
