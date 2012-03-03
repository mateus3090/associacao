class Ocorrencium < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :seguro
  belongs_to :automovel
end
