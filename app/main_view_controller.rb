class MainViewController < UIViewController

  def viewDidLoad 
    super

    # Create a small set of elements to load into our table view
    items = [
      ElementViewModel.new('H',  'Hydrogen', 1),
      ElementViewModel.new('He', 'Helium', 2),
      ElementViewModel.new('Li', 'Lithium', 3),
      ElementViewModel.new('Be', 'Beryllium', 4),
      ElementViewModel.new('B',  'Boron', 5),
      ElementViewModel.new('C',  'Carbon', 6),
      ElementViewModel.new('N',  'Nitrogen', 7),
      ElementViewModel.new('O',  'Oxygen', 8),
      ElementViewModel.new('F',  'Fluorine', 9),
      ElementViewModel.new('Ne', 'Neon', 10),
    ]

    # Use a plain-old UITableViewController with whatever style you prefer
    @tableViewController = UITableViewController.alloc.initWithStyle(UITableViewStylePlain)

    # Create an instance of our custom table view model. Setting the delegate to NICellFactory
    # works because this is a relatively simple case and we're happy with its implementation of
    # tableViewModel:cellForTableView:atIndexPath:withObject:
    @elementTableVM = ElementTableViewModel.alloc.initWithListArray(items, delegate: NICellFactory)

    addChildViewController(@tableViewController)
    view.addSubview(@tableViewController.view)
  end

  def viewWillAppear(animated)
    # Set the table view model as the dataSource and delegate of the table view. The dataSource
    # and delegate can be different objects, but they're combined in this example.
    @tableViewController.tableView.dataSource = @elementTableVM
    @tableViewController.tableView.delegate = @elementTableVM
    @tableViewController.view.frame = [[0, 0], [view.size.width, view.size.height]]
  end

end
