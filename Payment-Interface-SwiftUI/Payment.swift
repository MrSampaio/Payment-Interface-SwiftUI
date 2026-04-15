import SwiftUI

struct Payment<LastPage: View>: View {
    @State var isSelectted_aVista: Bool = false
    @State var isSelectted_Parcelar: Bool = false
    @State var aVistaColor: Color = Color.cartaoIndex02
    @State var ParcelarColor: Color = Color.verdeEscuro

    var lastPage: LastPage
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    
                    VStack(spacing: 40){
                        HStack{
                            Back_Button(destino: lastPage)
                            //teste
                            Spacer()
                        }
                            
                        Text("Conta")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom("Helvetica", size: 34))
                            .padding(.top, 10)
                            .bold()
                            
                        VStack{
                            Text("Total a pagar")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("R$ 36,90")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(Font.custom("Helvetica", size: 28))
                                .bold()
                        }
                        
                    }  .frame(maxWidth: 317, alignment: .leading)
                        .padding(10)
                        .padding(.top, 50)
                    
                    
                    Spacer()
                    VStack{
                        Text("Quem vai receber?")
                            .frame(maxWidth: 317, alignment: .leading)
                            .font(Font.custom("Helvetica", size: 22))
                            .bold()
                        
                        VStack(spacing: 15){
                            HStack{
                                Text("Nome")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                Spacer()
                                Text("Fulano")
                            }
                            
                            HStack{
                                Text("CPF/CNPJ")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                    .frame(width: .infinity)
                                Spacer()
                                Text("XXX.XXX.XXX-XX")
                            }
                            HStack{
                                Text("Instituição")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                Spacer()
                                Text("Wolf Bank")
                            }
                            HStack{
                                Text("Chave")
                                    .font(Font.custom("Helvetica", size: 18))
                                    .bold()
                                Spacer()
                                Text("CNPJ")
                            }
                        }.frame(width: 317, height: 164)
                            .padding(.top, 5)
                            
                    }.padding(30)
                    VStack{
                        HStack{
                            
                            Spacer()
                            Button{
                                isSelectted_Parcelar = false
                                
                                if(!isSelectted_Parcelar){
                                    ParcelarColor = Color.verdeEscuro
                                    aVistaColor = .cartaoIndex02
                                }
                                
                            }label: {
                                Text("À Vista")
                                    .font(Font.custom("Helvetica",  size: 22))
                                    .bold()
                            }.frame(width: 131, height: 39)
                                .background(aVistaColor)
                                .cornerRadius(40)
                            
                            Spacer()
                            Button{
                                isSelectted_Parcelar = true;
                                if(isSelectted_Parcelar){
                                    isSelectted_Parcelar = true;
                                    ParcelarColor = .cartaoIndex02
                                    aVistaColor = Color.verdeEscuro
                                }
                            }label: {
                                Text("Parcelar")
                                    .font(Font.custom("Helvetica",  size: 22))
                                    .bold()
                            }
                            .frame(width: 131, height: 39)
                            .background(ParcelarColor)
                                .cornerRadius(40)
                            
                            Spacer()
                        }.frame(width: 287, height: 53)
                            .foregroundStyle(Color.white)
                            .background(Color.verdeEscuro)
                            .cornerRadius(40)
                        Spacer()
                    }.padding(.top, 20)
                    
                    if(isSelectted_Parcelar){
                        Installment()
                            .padding(.top, 28)
                            .padding(.bottom, 31)
                    }
                    
                }
                
                
            }
            
            
            VStack{
                Continue_Button(destino: Confirm_Payment(), texto: "Continuar")
            }
            
            .frame(width: 402 , height: 109.3)
            .background(Color.cinzaFundoBotoes)
            
            .clipShape(
                    UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
                )
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    NavigationStack{
        Payment(lastPage: HomeView())
    }
    
}
