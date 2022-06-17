___FILEHEADER___

import UIKit

final class ___VARIABLE_productName___Controller : UIViewController {
    
    var viewModel: ___VARIABLE_productName___ViewModelProtocol!{
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

extension ___VARIABLE_productName___Controller: ___VARIABLE_productName___ViewModelDelegate {
    func handleOutput(_ output: ___VARIABLE_productName___ViewModelOutput) {
      
    }
}

