//
//  TransformationView.swift
//  Aladin
//
//  Created by KEVIN on 23/02/2023.
//

import SwiftUI

struct TransformationView: View {
    
    @Binding var transformed: Bool
    
    var falseValue: String
    var trueValue: String
    
    var body: some View {
        Button {
            transformed.toggle()
        } label: {
            Image(transformed ? trueValue : falseValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
        }

    }
}

struct TransformationView_Previews: PreviewProvider {
    static var previews: some View {
        TransformationView(
            transformed: .constant(false),
            falseValue: "aladin",
            trueValue: "ali")
    }
}
