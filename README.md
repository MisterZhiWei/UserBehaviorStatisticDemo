# UserBehaviorStatisticDemo
【中文】
使用说明
1.	添加统计配置
查看Property List.plist文件

trackedPages为普通页面统计，className为统计的页面的控制器类名称，pageName为该页面的汉语名称用于提交给后台作为统计名称使用；
  
trackedEvents为功能使用统计，如按钮点击，手势执行等，className为统计功能的执行类名称（注：如UIButton的执行者类为其添加执行方法中的Target对象的类，通俗的讲就是它的点击方法在哪个类里实现的该类就是它的执行类），selector为统计功能的统计执行方法，eventName为统计功能的汉语名称用于提交后台作为统计名称使用；
	
trackedTabBarEvents为UITabBarViewController的代理执行统计，className为执行其代理的类，该类需要执行其代理方法- (void)tabBarController:(UITabBarController*)tabBarController didSelectViewController:(UIViewController *)viewController;
	
trackedTabBarSubVCEvent为UITabBarViewController的子控制器切换统计，item填写的顺序与实际添加子控制器顺序相同，item中className为子控制器类名称，pageName为该页面的汉语名称用于提交给后台作为统计名称使用。

2.	初始化统计类
在程序启动时初始化统计类，调用方法如下图，需要修改初始化配置时可查看API根据使用需求配置。
    
    // 初始化并配置统计工具
    
    MCUserBehaviorMonitorManager *manager = [MCUserBehaviorMonitorManager shareManager];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *settings = [NSDictionary dictionaryWithContentsOfFile:path];
    [manager setupWithConfiguration:settings];

3.	需要统计UITabBarViewController子控制器切换时的代理实现
需要统计UITabBarViewController子控制器切换时需要在设置UITabBarViewController对象的时候实现其代理方法- (void)tabBarController:(UITabBarController*)tabBarController didSelectViewController:(UIViewController *)viewController;并在配置文件中添加实现类的配置，添加操作可查看使用说明中第一条添加统计配置。

【English】
Instructions

1. add statistical configuration

View the Property List.plist file

TrackedPages for ordinary page statistics, className for statistical page controller class name, pageName is the Chinese name of the page, used to submit to the background as a statistical name;

The use of trackedEvents as a function of statistics, such as button clicks, gesture execution, className statistics for the execution of a function class name (Note: UIButton implementation class to add execution method of the Target object in the class, the popular talk is click on its realization method in the class of the class in which it is executed class), selector statistics statistical function execution method, eventName Chinese name for the statistical function for use as a statistical background name submitted;

The trackedTabBarEvents UITabBarViewController agent performs statistics, className as its proxy class execution, the need to perform the proxy method - (void) tabBarController: (UITabBarController*) tabBarController didSelectViewController: (UIViewController * viewController);

TrackedTabBarSubVCEvent UITabBarViewController sub controller switching statistics, item fill the order and add the same actual controller order, item className is the sub controller class name, the Chinese name for the pageName page for submission to the name used as a statistical background.

2. initialize the statistics class

Initialize the statistics class when the program starts, and call the method as shown below. You need to modify the initialization configuration to view the API configuration according to usage requirements.

    //The initialization and configuration / statistical tools
    MCUserBehaviorMonitorManager *manager = [MCUserBehaviorMonitorManager shareManager];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    NSDictionary *settings = [NSDictionary dictionaryWithContentsOfFile:path];
    [manager setupWithConfiguration:settings];

3.we need to calculate the proxy implementation when the UITabBarViewController sub controller switches

The need for statistical UITabBarViewController switching controller needs to achieve its proxy method when setting the UITabBarViewController object - (void) tabBarController: (UITabBarController*) tabBarController didSelectViewController: (UIViewController * viewController); and add the implementation classes in the configuration file, add operation to view instructions in the first add statistical configuration.
