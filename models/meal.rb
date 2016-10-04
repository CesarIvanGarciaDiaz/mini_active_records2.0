class Meal < MiniActiveRecord::Model

  def self.all
    @consulta="meals"
    super
  end

  def self.create(attributes)
    super
  end

  def self.where(query, *args)
    @consulta="meals"
    super
  end

  def self.find(pk)
    super
  end

  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]

  attr_reader :attributes, :old_attributes

  # e.g., Meal.new(id: 1, name: 'Chicken', created_at: '2012-12-01 05:54:30')
  def initialize(attributes = {})
    @var=self.class
    super
  end

  def chef
    Chef.where('id = ?', self[:chef_id])
  end

  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save
    chef
  end

  def new_record?
    super
  end

  private

  def insert!
    @consulta="meals"
    super
  end

  def update!
    @consulta="meals"
    super
  end
end
