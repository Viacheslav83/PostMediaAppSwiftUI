//
//  TextHeaderAndTextFieldView.swift
//  PostMediaAppSwiftUI
//
//  Created by Viacheslav Markov on 15.09.2023.
//

import SwiftUI
import PMModels

struct TextHeaderAndTextFieldView: View {
    let model: TextFieldModel
    @State var textFielText: String = ""
    var body: some View {
        VStack(spacing: 8) {
            HStack(spacing: 8, content: {
                Text(model.headerText ?? "")
                    .multilineTextAlignment(.leading)
                Spacer()
            })
            TextField(model.textFieldType.placeholder, text: $textFielText)
                .padding(8)
                .frame(height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(model.color?.rawValue ?? "gray"), lineWidth: 2)
                )
        }
        .padding()
    }
}

//MARK: - Preview
struct TextHeaderAndTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextHeaderAndTextFieldView(model: TextFieldModel.mockModel)
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
