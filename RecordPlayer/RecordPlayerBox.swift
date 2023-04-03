//
//  RecordPlayerBox.swift
//  RecordPlayer
//
//  Created by Can Kanbur on 3.04.2023.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack{
            Rectangle().frame(width: 345,height: 345 ).cornerRadius(10)
            Image("woodGrain").resizable().frame(width: 325,height: 325).shadow(color: .white, radius: 3,x: 0,y: 0)
        }
    }
}

struct RecordPlayerBox_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayerBox()
    }
}
