import SwiftUI

struct VistaModal: View {
    
    @Environment(\.presentationMode) var back
    
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            VStack {
                
                Text("Estas en una pantalla modal")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .multilineTextAlignment(.center)
                
                Button("Cerrar") {
                    back.wrappedValue.dismiss()
                }
                .padding()
                .padding([.leading, .trailing], 40)
                .background(.white)
                .foregroundColor(.black)
                
            }
        }
    }
}

struct VistaModal_Previews: PreviewProvider {
    static var previews: some View {
        VistaModal()
    }
}
