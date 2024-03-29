//
//  SecondPlayerQuestionVC.swift
//  ThinkUp DrinkUp
//
//  Created by adam mcbride on 5/2/16.
//  Copyright © 2016 adam mcbride. All rights reserved.
//

import UIKit

class SecondPlayerQuestionVC: UIViewController, UITextViewDelegate {

     @IBOutlet weak var SubjectPlayerName: UILabel!
     @IBOutlet weak var QuestionBox: UITextView!
     @IBOutlet weak var AnswerBox2: UITextView!
     @IBOutlet weak var CurrentRoundNumber: UITextField!
     @IBAction func CommitAnswer2AndContinue(_ sender: AnyObject) {
          // commit answer 2 and continue
          
          let answer2 = AnswerBox2.text
          
          playerAnswers[1] = answer2!
     }
     
    override func viewDidLoad() {
        super.viewDidLoad()
          QuestionBox.text = questions[roundNumber]
          SubjectPlayerName.text = "About: " + playerNames[0]
        // Do any additional setup after loading the view.
     
          // code to make the keyboard dissmissable in the answerbox
          // first, change the Return key to a Done key
          AnswerBox2.returnKeyType = UIReturnKeyType.done
          AnswerBox2.delegate = self

          // the round number need to be converted from Int to String and set +1 due to indexing from 0
          let thisRoundNumber = String(roundNumber + 1)
          CurrentRoundNumber.text = "Round: " + thisRoundNumber
     }
     
     // code to make the keyboard dissmissable in the answerbox
     // now, we make it so when a new line is detected in the text box, the app will dismiss the keyboard instead
     func textView(_ AnswerBox2: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
          if (text == "\n") {
               AnswerBox2.resignFirstResponder()
          }
          return true
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
     // questions array
     
     var questions:[String] = [
          "" + playerNames[0] + " is given a ridiculous superpower. What is it?",
          "If " + playerNames[0] + " won the lottery, what would be the first thing they would buy?",
          "What is " + playerNames[0] + "'s secret weapon?",
          "" + playerNames[0] + " is on Jeopardy!, but all the categories are ridiculous subjects. What’s his/her best-performing category?",
          "What do you think is " + playerNames[0] + "’s greatest fear?",
          "Was " + playerNames[0] + " a ‘licker’, a ‘biter’, or a ‘picker’ as a child?",
          "What do you think is " + playerNames[0] + "’s best skill or talent?",
          "If " + playerNames[0] + " was going to have sex in public, where would it be?",
          "What is the most embarrassing thing you know about " + playerNames[0] + "?",
          "What is the most inappropriate thing you’ve seen " + playerNames[0] + " do?",
          "At what type of competition would " + playerNames[0] + " excel?",
          "What fictional character is " + playerNames[0] + " most like?",
          "You and " + playerNames[0] + " decide to skip school for the day. What do you go do?",
          "If " + playerNames[0] + " were a Bond villain, which one would they be?",
          "If you were a waiter and " + playerNames[0] + " was rude to you, what would you do to their food?",
          "You and " + playerNames[0] + " get pulled over, and the cop finds a bag of weed in the center console. Do you own own up to it, or do you blame it on " + playerNames[0] + "?",
          "What terrible band do you think " + playerNames[0] + " secretly likes?",
          "If " + playerNames[0] + " was a Game of Thrones character, which one would they be?",
          "" + playerNames[0] + ": Star Trek or Star Wars?",
          "What is " + playerNames[0] + "'s disgusting guilty pleasure?",
          "If " + playerNames[0] + " was at a TSA checkpoint and found they had a small bag of weed in their pocket right before going through the X-Ray machine, what would they do?",
          "What its " + playerNames[0] + "’s secret fetish?",
          "You and " + playerNames[0] + " are stranded on a desert island. You find a huge coconut. Do you share it or hoard it?",
          "" + playerNames[0] + " accidentally texts a nude pic to his/her boss. What's their next text?",
          "The Joker has kidnapped " + playerNames[0] + ". Which Batman would you want to save him/her? West, Keaton, Kilmer, Clooney, Bale, or Affleck?"
     ]
}
