# Usage

- Run the `Install` script, the templates will be imported into Xcode
- When you try to add `New File`, you will see the templates under the `My Templates` section

# Templates

- [MVVM Protocol Oriented UIKit](#mvvm-protocol-oriented-uikit)

## MVVM Protocol Oriented UIKit
  
#### Controller
```swift
final class TemplateController : BaseViewController {
    
    var viewModel: TemplateViewModelProtocol!{
        didSet{
            viewModel.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    private func setupViews() {

    }
}

extension TemplateController: TemplateViewModelDelegate {
    func handleOutput(_ output: TemplateViewModelOutput) {
      
    }
}

```
  
#### View Model
```swift
final class TemplateViewModel : TemplateViewModelProtocol {
    
    weak var delegate: TemplateViewModelDelegate?
    
    init() {
        
    }
    
    private func notify(_ output: TemplateViewModelOutput) {
        self.delegate?.handleOutput(output)
    }
}

```

#### Contracts
```swift
protocol TemplateViewModelProtocol {
    var delegate : TemplateViewModelDelegate? { get set }
}

enum TemplateViewModelOutput {
    
}

protocol TemplateViewModelDelegate: AnyObject {
    func handleOutput(_ output: TemplateViewModelOutput)
}
```


#### Builder
```swift
final class TemplateBuilder {
    static func create() -> TemplateController {
        let vc = TemplateController()
        let viewModel = TemplateViewModel()
        vc.viewModel = viewModel
        return vc
    }
}
```
