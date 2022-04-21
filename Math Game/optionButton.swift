//
//  optionButton.swift
//  Math Game
//
//  Created by Tanvir Rahman on 21.04.2022.
//

import SwiftUI

struct optionButton: View {
    var number: Int
    var body: some View {
        Text("\(number)")
            .frame(width: 120, height: 120)
            .font(.system(size: 40, weight: .medium, design: .default))
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Circle())
    }
}

struct optionButton_Previews: PreviewProvider {
    static var previews: some View {
        optionButton(number: 100)
    }
}
