/*
* Copyright (c) 2015 Razeware LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/

import UIKit

class LoginViewController: UIViewController {
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
  }
    
  @IBAction func loginDidTouch(sender: AnyObject) {
    
    // 1) We need to securely log in, currently we just let the user through 😬.
    // 2) We can do this with Firebase! Let's sign up here -> www.firebase.com/account.
    // 3) To install Firebase we'll include it in our Podfile.
    
    self.performSegueWithIdentifier("LoginToChat", sender: nil)
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    super.prepareForSegue(segue, sender: sender)
    let navVc = segue.destinationViewController as! UINavigationController
    let chatVc = navVc.viewControllers.first as! ChatViewController
    
    // 4) Lets replace this generic "SENDERID" with the unique user id provided by Firebase's auth. 🔐
    chatVc.senderId = "SENDERID"
    chatVc.senderDisplayName = "" // Since we are creating an anonomys chat app: no need for display names.
  }
  
}

