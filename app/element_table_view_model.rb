class ElementTableViewModel < NITableViewModel

  # NITableViewModel already implements the UITableViewDataSource protocol and so is able to
  # fulfill the obligations of the dataSource.
  
  # As in the UITableViewDelegate protocol
  def tableView(tableView, heightForRowAtIndexPath: indexPath)
    75
  end

  # As in the UITableViewDelegate protocol
  def tableView(tableView, didSelectRowAtIndexPath: indexPath)
    object = self.objectAtIndexPath(indexPath)
    av = UIAlertView.alloc.initWithTitle(
      "You clicked #{object.name}",
      message: "Its symbol is '#{object.symbol}'",
      delegate: nil,
      cancelButtonTitle: "Ok",
      otherButtonTitles: nil)
    av.show

    # Delesect it now, so it's not "sticky"
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
  end
end
