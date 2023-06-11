
import SwiftUI

struct MyCertificateView: View {
    
    @State private var showCertificate = false
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .frame(width: 390, height: 150)
                    .foregroundColor(Color.topBgGray)
                    .ignoresSafeArea()
                HStack{
                    VStack(alignment: .leading){
                        Text(showCertificate ? "코로나 19 예방접종 내역" : "본인인증 수단이 추가되었습니다!" )
                            .font(.system(size: 16))
                            .foregroundColor(Color.topDarkGray)
                        ZStack{
                            RoundedRectangle(cornerRadius: 13.5)
                                .stroke(Color.topStrokeGray)
                                .frame(width: 75, height: 26)
                                .opacity(showCertificate ? 0.0 : 1.0)
                            RoundedRectangle(cornerRadius: 13.5)
                                .fill(Color.topBlue)
                                .frame(width: 75, height: 26)
                                .opacity(showCertificate ? 1.0 : 0.0)
                        }
                        
                    }
                    .padding(.leading , 32)
                    .offset(y: 72)
                    Spacer()
                }
                .ignoresSafeArea()
            }
            .ignoresSafeArea()
            Spacer()
            ZStack(alignment: .bottom){
                Rectangle()
                    .fill(showCertificate ? Color.bottomBoxIndigoBlue : Color.bottomBoxGray)
                    .frame(width: 271, height: 467)
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 271, height: 118)
                VStack(alignment: .leading){
                    ZStack{
                        Text("본인인증 증명서")
                            .font(.system(size: 28))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 52)
                            .opacity(showCertificate ? 0.0 : 1.0)
                        Text("코로나19 \n예방접종 증명서")
                            .font(.system(size: 28))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 52)
                            .opacity(showCertificate ? 1.0 : 0.0)
                    }
                    .frame(width: 225)
                    ZStack{
                        Button(action: {
                            self.showCertificate.toggle()
                        }) {
                            Text("본인인증하기")
                                .fontWeight(.semibold)
                        }
                        .frame(width: 197, height: 47)
                        .background(Color.buttonBlue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .opacity(showCertificate ? 0.0 : 1.0)
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("접종 차수")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                Text("1차")
                                    .font(.system(size: 28))
                                    .fontWeight(.semibold)
                            }
                            Spacer()
                            VStack(alignment: .leading){
                                Text("백신 제조사")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                                Text("화이자")
                                    .font(.system(size: 14))
                                    .fontWeight(.medium)
                            }
                            .padding(.trailing, 10)
                        }
                        .frame(width: 225)
                        .padding(.bottom, 32)
                        .opacity(showCertificate ? 1.0 : 0.0)
                    }
                    .frame(width: 271, height: 118)
                }
            }
            .onAppear {
                 showCertificate = false
             }
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: Color.black.opacity(0.12), radius: 12, x:1, y:1)
            .offset(y: -30)
            Spacer()
        }
    }
}


struct MyCertificateView_Previews: PreviewProvider {
    static var previews: some View {
        MyCertificateView()
    }
}
