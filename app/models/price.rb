class Price < ApplicationRecord
  belongs_to :product
  enum market_type: { gros: "gros", distributeur: "distributeur" }
end
