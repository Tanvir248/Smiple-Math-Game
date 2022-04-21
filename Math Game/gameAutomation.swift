//
//  gameAutomation.swift
//  Math Game
//
//  Created by Tanvir Rahman on 22.04.2022.
//

import SwiftUI

struct gameAutomation: View {
    @State private var correctAnswer = 0
    @State private var choiceArray: [Int] = [0, 1, 2, 3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var tabcount = 0
    @State private var difficulty = 100
    @State private var score = 0

    var body: some View {
        ZStack{
                Text("Total : \(tabcount)")
                
                   .frame(width: 125, height: 25 , alignment: .center)
                   .background(.blue.opacity(0.4))
                   .cornerRadius(10)
                   .position(x: 45, y: 60)
                    
            VStack {
                
            Text("\(firstNumber) + \(secondNumber)")
                .frame(width: 280, height: 62, alignment: .center)
                .font(.system(size: 30, weight: .bold, design: .default))
            HStack(spacing: 50){
                ForEach(0..<2) { index in
                    
                    Button {
                    ansIsCorrect(answer: choiceArray[index])
                        generateAnswers()
                        countingTab(generate1: 1)
                        }label: {
                            optionButton(number: choiceArray[index])
                           
                    }
                }
            }
            HStack(spacing: 50){
                ForEach(2..<4) { index in
                    
                    Button {
                    ansIsCorrect(answer: choiceArray[index])
                        generateAnswers()
                        countingTab(generate1: 1)
                        }label: {
                            optionButton(number: choiceArray[index])
                          
                    }
                }
            }
                
                
            Text("Score: \(score)")
                .frame(width: 180, height: 40, alignment: .center)
                .font(.system(size: 20))
                .foregroundColor(.red)
                
                
        }
        }
        
    }
    func ansIsCorrect(answer: Int){
        let isCorrect = answer == correctAnswer ? true : false
        if isCorrect {
            self.score += 1
        }else {
            self.score -= 1
        }
    }
    func generateAnswers() {
        firstNumber = Int.random(in: 0...(difficulty/2))
        secondNumber = Int.random(in: 0...(difficulty/2))
        var answerList = [Int]()
        correctAnswer = firstNumber + secondNumber
        for _ in 0...2 {
            answerList.append(Int.random(in: 0...difficulty))
            
        }
        answerList.append(correctAnswer)
        
//        for i in 0...3 {
//            print("Before Shuffled: ")
//            print(answerList[i])
//        }
        choiceArray = answerList.shuffled()
//
//        for i in 0...3 {
//            print("After Shuffled: ")
//            print(answerList[i])
//        }
    }
    func countingTab(generate1: Int){
        tabcount += 1
    }
}

struct gameAutomation_Previews: PreviewProvider {
    static var previews: some View {
        gameAutomation()
    }
}
