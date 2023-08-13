class ApplicationFacade

  attr_accessor :facades_list 
  def initialize(list=[])
    self.facades_list = list
  end

  def to_json(params={})
    facades_list.each_with_object({}) do |facade, hash|
      hash.merge!(facade.to_h)
    end.to_json
  end
end