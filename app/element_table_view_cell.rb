class ElementTableViewCell < UITableViewCell

  # From the NICell protocol (optional)
  # def self.heightForObject(object, atIndexPath: indexPath, tableView: tableView)
  #   75 
  # end

  # From the NICell protocol (required)
  # Receives the model object, ElementViewModel in our case, that contains the
  # data for the cell. Update the cell UI elements with the new data.
  def shouldUpdateCellWithObject(object)
    textLabel.text = "#{object.atomicNumber} - #{object.symbol}"
    textLabel.font = UIFont.boldSystemFontOfSize(13)
    textLabel.textColor = UIColor.blackColor
    textLabel.backgroundColor = UIColor.clearColor

    detailTextLabel.text = object.name 
    detailTextLabel.textColor = UIColor.blackColor
    detailTextLabel.backgroundColor = UIColor.clearColor
    return true
  end
end

