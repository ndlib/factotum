# We used to depend on currency having this label function which no longer exists, so I'm putting it back in.
Money::Currency.class_eval do
  def label
    "#{iso_code} - #{name}"
  end
end

class Acquisitions::Currency < Money::Currency

  def self.find(*args)
    result = super
    if result.nil?
      raise "Could not find currency #{args.first}"
    end
    Acquisitions::Currency.new(result.id)
  end

  def self.all
    table.collect{|key,data| self.find(key)}.sort{|a,b| a.priority <=> b.priority}
  end
end
