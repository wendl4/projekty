
import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
    }
    
    
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    func doStringContainsNumber( testStr : String) -> Bool{
        
        let numberRegEx  = ".*[0-9]+.*"
        let testCase = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
        let containsNumber = testCase.evaluate(with: testStr)
        
        return containsNumber
    }
    
    func doStringContainsCapital( testStr : String) -> Bool{
        
        let capRegEx  = ".*[A-Z]+.*"
        let testCase = NSPredicate(format:"SELF MATCHES %@", capRegEx)
        let containsNumber = testCase.evaluate(with: testStr)
        
        return containsNumber
    }
    
    
    @IBAction func SignUp(_ sender: UIButton) {
        // kontrola mailu
        if isValidEmail(testStr: self.emailTextField.text!) {
            validationAlert.text = ""
        }
        else {
            validationAlert.text="email format not valid"
        }
        // password hint
        var strength = 2
        if !(doStringContainsNumber(testStr: self.passwordTextField.text!)) {
            strength -= 1
            self.passwordHint.text = " does not contain a number"
        }
        if !(doStringContainsCapital(testStr: self.passwordTextField.text!)) {
            strength -= 1
            self.passwordHint.text = " does not contain capital"
        }
        switch strength {
        case 2 :
            self.passwordHint.text = "strength: High"
        case 1 :
            self.passwordHint.text = "strength: Medium,"+self.passwordHint.text!
        default :
            self.passwordHint.text = "strength: Low,"+self.passwordHint.text!
            
        }
        //vypis na konzolu
        print("mail: "+self.emailTextField.text!)
        print("heslo: "+self.passwordTextField.text!)
    }
    @IBOutlet weak var passwordHint: UILabel! {
        didSet {
            passwordHint.text = ""
        }
    }

    @IBOutlet weak var validationAlert: UILabel! {
        didSet{
            validationAlert.text = ""
        }
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let targetVC = segue.destination as? LoginViewController {
            let mail = self.emailTextField.text
            let pass = self.passwordTextField.text
            targetVC.email = mail
            targetVC.password = pass
        }
    }

}
