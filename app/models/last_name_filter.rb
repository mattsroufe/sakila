module LastNameFilter
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def filter_by_last_name(letter)
      where("last_name LIKE ?", "#{letter}%")
    end
  end
end
