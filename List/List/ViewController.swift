import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func shouldAdd(_ sender: Any) {
        // Create a string from the text field's text, and if the txtfield is empty,
        // set it an empty string
        let text = textField.text ?? ""
        
        // Call the Model's addText method and use the text variable we created above
        Model.shared.add(text)
        // Update the label
        updateViews()
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        // Call the Model's resetItems method
        Model.shared.resetItems()
        // Update the label
        updateViews()
    }
    
    private func updateViews() {
        // Joining all of our Model's item strings together to form one joined string
        let joined = Model.shared.items.joined(separator: "\n")
        // Setting the label's text to our joined string
        label.text = joined
    }
    
    
    

}

