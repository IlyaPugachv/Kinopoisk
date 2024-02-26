import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        let vc1 = HomeVC()
        let vc2 = Settings()
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        nav1.tabBarItem = UITabBarItem(title: "Ring", image: UIImage(systemName: "suit.diamond"), tag: 1)
        
        nav1.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2], animated: true)
        
    }
}
