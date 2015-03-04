class Whereabout < NSManagedObject
  def self.entity
    @entity ||= begin
      # Create the entity for our Whereabout class. The entity has 3 properties. CoreData will appropriately define accessor methods for the properties.
      entity = NSEntityDescription.alloc.init
      entity.name = 'Whereabout'
      entity.managedObjectClassName = 'Whereabout'
      entity.properties = 
        ['creation_date', NSDateAttributeType,
         'latitude', NSDoubleAttributeType,
         'longitude', NSDoubleAttributeType].each_slice(2).map do |name, type|
            property = NSAttributeDescription.alloc.init
            property.name = name
            property.attributeType = type
            property.optional = false
            property
          end
      entity
    end
  end 
end
