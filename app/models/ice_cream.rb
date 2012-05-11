class IceCream < Neo4j::Rails::Model
  property :flavour
  validates_presence_of :flavour
end