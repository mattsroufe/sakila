module LastNameFilter
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def filter_by(attribute, letter)
      where("#{attribute} LIKE ?", "#{letter}%")
    end
  end
end
