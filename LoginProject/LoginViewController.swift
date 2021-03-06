
import UIKit

class LoginViewController: UIViewController {
    
    var email: String?
    var password: String?

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
    
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    @IBAction func SignIn(_ sender: UIButton) {
        if isValidEmail(testStr: self.emailField.text!) {
            validationAlert.text = ""
        }
        else {
            validationAlert.text = "email format not valid"
        }
        print("mail: "+self.emailField.text!)
        print("heslo: "+self.passwordField.text!)
    }
    
    @IBOutlet weak var validationAlert: UILabel! {
        didSet {
            validationAlert.text = ""
        }
    }
    
    @IBOutlet weak var emailField: UITextField! {
        didSet {
            emailField.text = email
        }
    }
   
    @IBOutlet weak var passwordField: UITextField! {
        didSet {
            passwordField.text = password
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
