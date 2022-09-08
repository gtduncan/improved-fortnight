class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  def name
    self.object.sweet.name
  end
end
