class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    mainViewController = MainViewController.new
    @window.rootViewController = mainViewController
    @window.makeKeyAndVisible
    true
  end
end
