class Acquisitions::Currency < Money::Currency

  def label
    "#{iso_code} - #{name}"
  end

  def self.find(*args)
    result = super
    if result.nil?
      raise "Could not find currency #{args.first}"
    end
    result
  end

  def self.all
    table.collect{|key,data| find(key)}.sort{|a,b| a.priority <=> b.priority}
  end
end
