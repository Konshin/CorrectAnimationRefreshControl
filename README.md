# CorrectAnimationRefreshControl

[![Version](https://img.shields.io/cocoapods/v/CorrectAnimationRefreshControl.svg?style=flat)](https://cocoapods.org/pods/CorrectAnimationRefreshControl)
[![License](https://img.shields.io/cocoapods/l/CorrectAnimationRefreshControl.svg?style=flat)](https://cocoapods.org/pods/CorrectAnimationRefreshControl)
[![Platform](https://img.shields.io/cocoapods/p/CorrectAnimationRefreshControl.svg?style=flat)](https://cocoapods.org/pods/CorrectAnimationRefreshControl)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
- iOS 9.0+
- Swift 4.0+

## Installation

CorrectAnimationRefreshControl is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CorrectAnimationRefreshControl'
```

## Usage

```swift
import CorrectAnimationRefreshControl

final class MyViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.refreshControl = CorrectAnimationRefreshControl()
        self.tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: .valueChanged)
    }
    
    @objc private func refresh() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [weak tableView] in
            tableView?.refreshControl?.endRefreshing()
        }
    }

}
```

## Author

konshin, bodro92@yandex.ru

## License

CorrectAnimationRefreshControl is available under the MIT license. See the LICENSE file for more info.
