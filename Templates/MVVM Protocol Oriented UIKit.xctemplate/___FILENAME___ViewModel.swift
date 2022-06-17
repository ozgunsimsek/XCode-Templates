___FILEHEADER___

import UIKit

final class ___VARIABLE_productName___ViewModel : ___VARIABLE_productName___ViewModelProtocol {
    
    weak var delegate: ___VARIABLE_productName___ViewModelDelegate?
    
    init() {
        
    }
    
    private func notify(_ output: ___VARIABLE_productName___ViewModelOutput) {
        self.delegate?.handleOutput(output)
    }
}
