class ApplicationRepository
  attr_accessor :repository_model
  def initialize(params = {})
    self.repository_model = params.fetch(:repository_model,
       self.class.to_s.gsub('Repository', '')
      ).constantize
  end


  class_eval do 
    define_method :find do |id| 
      repository_model.find_by(id: id)
    end

    define_method :add do |params = {}|
      repository_model.create(params)
    end
  end

  class << self
    delegate :find, :create, to: :new
  end
end