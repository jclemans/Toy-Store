class ProductUpload

  def initialize(file)
    @file = file
  end

  def parse!
    products_attributes = SmarterCSV.process(@file)
    products_attributes.each do |attributes|
      Product.create(attributes)
    end
  end
end
