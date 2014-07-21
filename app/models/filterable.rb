module Filterable
  extend ActiveSupport::Concern

  included do
    scope :filter, ->(attribute, letter) { where("#{attribute} LIKE '#{letter}%'") if letter.present? }
  end
end
