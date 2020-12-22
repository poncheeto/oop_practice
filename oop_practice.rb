class Lion
  def initialize(name)
    @name = name
  end
  
  def return_lions_name
    return(@name)
  end
end

simba = Lion.new("Simba")
simba.return_lions_name