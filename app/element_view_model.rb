class ElementViewModel

  # Our model data
  attr_accessor :symbol, :name, :atomicNumber

  def initialize(symbol, name, number)
    @symbol = symbol
    @name = name
    @atomicNumber = number
    self
  end

  # From the NICellObject protocol
  # The Nimbus table view cell factory, NICellFactory, calls this to
  # determine what class to create for an instance of this model class
  def cellClass
    ElementTableViewCell
  end

  # From the NICellObject protocol
  # NICellFactory calls cellStyle to determine what style to apply for
  # cells created for instances of this class
  def cellStyle
    UITableViewCellStyleSubtitle
  end
end
