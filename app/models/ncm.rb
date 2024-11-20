class Ncm < ApplicationRecord
  include ActiveModel::Attributes

  validates :codigo, presence: true, length: { minimum: 8, maximum: 8 }
  validates :descricao, presence: true, length: {  maximum: 120 }

  attribute :ativa, :boolean, default: true
end
