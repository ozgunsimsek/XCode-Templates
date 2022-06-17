___FILEHEADER___

import UIKit

protocol ___VARIABLE_productName___ViewModelProtocol {
    var delegate : ___VARIABLE_productName___ViewModelDelegate? { get set }
}

enum ___VARIABLE_productName___ViewModelOutput {
    
}

protocol ___VARIABLE_productName___ViewModelDelegate: AnyObject {
    func handleOutput(_ output: ___VARIABLE_productName___ViewModelOutput)
}
