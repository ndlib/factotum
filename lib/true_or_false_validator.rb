class TrueOrFalseValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << (options[:message] || "must be true or false") unless value === true || value === false
  end
end
