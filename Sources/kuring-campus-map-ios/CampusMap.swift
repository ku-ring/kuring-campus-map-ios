//
//  CampusMap.swift
//  KuringCampusMap
//
//  Created by Hamlit Jason on 2022/08/24.
//

import Foundation

public struct CampusMap {
    var title: 학교건물
    var latitudeValue: Double
    var longitudeValue: Double
    
    public enum 학교건물: String {
        case 일감호 // 37.540744, 127.076451
        case 총학생회관 // 37.541875, 127.077966
        case 신공학관 // 37.540550, 127.079335
        case 상허기념도서관 //37.541949, 127.073826
        case 언어교육원 // 37.542532, 127.074653
        case 행정관 // 37.543141, 127.075144
        case 상허연구관 // 37.543986, 127.075273
        case 교육과학관 // 37.544046, 127.074111
        case 경영대학 // 37.544290, 127.076112
        case 대운동장 // 37.544361, 127.078199
        case 새천년기념관 // 37.543583, 127.077467
        case 새천년관대공연장 // 37.543026, 127.077338
        case 해봉부동산학관 // 37.543421, 127.078252
        case 인문학관_연구동 = "인문학관(연구동)" // 37.542763, 127.078153
        case 인문학관_강의동 = "인문학관(강의동)" // 37.542464, 127.078916
        case 제2학생회관 //37.541172, 127.077961
        case 노천극장 // 37.541423, 127.077765
        case 홍예교 // 37.541699, 127.077325
        case 유석창박사의묘 // 37.540581, 127.078127
        case 국제학사 // 37.539819, 127.077310
        case 레이크홀 // 37.539424, 127.077196
        case 비전홀 // 37.539491, 127.078153
        case 프론티어홀 // 37.539601, 127.078978
        case 쿨하우스 // 37.539416, 127.079232
        case 교육연수원 // 37.539183, 127.077977
        case 글로벌홀 // 37.539100, 127.078714
        case 드림홀 // 37.538990, 127.079427
        case 건국사대부속고등학교 //37.540128, 127.080487
        case 이과대학 // 37.541580, 127.080604
        case 공학관 // 37.541634, 127.079371
        case 공과대학A // 37.541745, 127.078793
        case 공과대학B //37.542025, 127.079625
        case 공과대학C //37.541180, 127.079535
        case 중장비실험동 // 37.542356, 127.079973
        case 공예관 // 37.542145, 127.081039
        case 창의관 // 37.541237, 127.081686
        case 건국사대부속중학교 //37.541133, 127.082474
        case 청심대 // 37.542428, 127.076835
        case 법과대학 = "법과대학(종강)" // 37.541720, 127.074831
        case 생명과학관 // 37.541054, 127.074463
        case 동물생명과학관 // 37.540327, 127.074379
        case 입학정보관 // 37.540352, 127.073489
        case 산학협동관 // 37.539673, 127.073180
        case 상허유석창박사동상 // 37.541369, 127.073480
        case 의생명과학연구관 // 37.541411, 127.072308
        case 예술대학 // 37.542913, 127.072917
        case 수의과대학 // 37.539246, 127.074725
        case 와우도 // 37.540094, 127.076545
        case 온실 // 37.544562, 127.073816
        case 황소상 // 37.543128, 127.076179
        case 일우헌 // 37.544856, 127.079519
        case 실내체육관 // 37.544466, 127.079780
        case 상허기념박물관 // 37.543177, 127.075168
        case 건대항쟁기립상 // 37.543819, 127.076423
    }
}

extension CampusMap {
    static let campusMaps: [CampusMap] = [
        CampusMap(title: .일감호, latitudeValue: 37.540744, longitudeValue: 127.076451),
        CampusMap(title: .총학생회관, latitudeValue: 37.541875, longitudeValue: 127.077966),
        CampusMap(title: .신공학관, latitudeValue: 37.540550, longitudeValue: 127.079335),
        CampusMap(title: .상허기념도서관, latitudeValue: 37.541949, longitudeValue: 127.073826),
        CampusMap(title: .언어교육원, latitudeValue: 37.542532, longitudeValue: 127.074653),
        
        CampusMap(title: .행정관, latitudeValue: 37.543141, longitudeValue: 127.075144),
        CampusMap(title: .상허연구관, latitudeValue: 37.543986, longitudeValue: 127.075273),
        CampusMap(title: .교육과학관, latitudeValue: 37.544046, longitudeValue: 127.074111),
        CampusMap(title: .경영대학, latitudeValue: 37.544290, longitudeValue: 127.076112),
        CampusMap(title: .대운동장, latitudeValue: 37.544361, longitudeValue: 127.078199),
        
        CampusMap(title: .새천년기념관, latitudeValue: 37.543583, longitudeValue: 127.077467),
        CampusMap(title: .새천년관대공연장, latitudeValue: 37.543026, longitudeValue: 127.077338),
        CampusMap(title: .해봉부동산학관, latitudeValue: 37.543421, longitudeValue: 127.078252),
        CampusMap(title: .인문학관_연구동, latitudeValue: 37.542763, longitudeValue: 127.078153),
        CampusMap(title: .인문학관_강의동, latitudeValue: 37.542464, longitudeValue: 127.078916),
        
        CampusMap(title: .제2학생회관, latitudeValue: 37.541172, longitudeValue: 127.077961),
        CampusMap(title: .노천극장, latitudeValue: 37.541423, longitudeValue: 127.075144),
        CampusMap(title: .유석창박사의묘, latitudeValue: 37.540581, longitudeValue: 127.078127),
        CampusMap(title: .국제학사, latitudeValue: 37.539819, longitudeValue: 127.077310),
        CampusMap(title: .레이크홀, latitudeValue: 37.539424, longitudeValue: 127.077196),
        
        CampusMap(title: .비전홀, latitudeValue: 37.539491, longitudeValue: 127.078153),
        CampusMap(title: .프론티어홀, latitudeValue: 37.539601, longitudeValue: 127.078978),
        CampusMap(title: .쿨하우스, latitudeValue: 37.539416, longitudeValue: 127.079232),
        CampusMap(title: .교육연수원, latitudeValue: 37.539183, longitudeValue: 127.077977),
        CampusMap(title: .글로벌홀, latitudeValue: 37.539100, longitudeValue: 127.078714),
        
        CampusMap(title: .드림홀, latitudeValue: 37.538990, longitudeValue: 127.079427),
        CampusMap(title: .건국사대부속고등학교, latitudeValue: 37.540128, longitudeValue: 127.080487),
        CampusMap(title: .이과대학, latitudeValue: 37.541580, longitudeValue: 127.080604),
        CampusMap(title: .공학관, latitudeValue: 37.541634, longitudeValue: 127.079371),
        CampusMap(title: .공과대학A, latitudeValue: 37.541745, longitudeValue: 127.078793),
        
        CampusMap(title: .공과대학B, latitudeValue: 37.542025, longitudeValue: 127.079625),
        CampusMap(title: .공과대학C, latitudeValue: 37.541180, longitudeValue: 127.079535),
        CampusMap(title: .중장비실험동, latitudeValue: 37.542356, longitudeValue: 127.079973),
        CampusMap(title: .공예관, latitudeValue: 37.542145, longitudeValue: 127.081039),
        CampusMap(title: .창의관, latitudeValue: 37.541237, longitudeValue: 127.081686),
        
        CampusMap(title: .건국사대부속중학교, latitudeValue: 37.541133, longitudeValue: 127.082474),
        CampusMap(title: .청심대, latitudeValue: 37.542428, longitudeValue: 127.076835),
        CampusMap(title: .법과대학, latitudeValue: 37.541720, longitudeValue: 127.074831),
        CampusMap(title: .생명과학관, latitudeValue: 37.541054, longitudeValue: 127.074463),
        CampusMap(title: .동물생명과학관, latitudeValue: 37.540327, longitudeValue: 127.074379),
        
        CampusMap(title: .입학정보관, latitudeValue: 37.540352, longitudeValue: 127.073489),
        CampusMap(title: .산학협동관, latitudeValue: 37.539673, longitudeValue: 127.073180),
        CampusMap(title: .상허유석창박사동상, latitudeValue: 37.541369, longitudeValue: 127.073480),
        CampusMap(title: .의생명과학연구관, latitudeValue: 37.541411, longitudeValue: 127.072308),
        CampusMap(title: .예술대학, latitudeValue: 37.542913, longitudeValue: 127.072917),
        
        CampusMap(title: .수의과대학, latitudeValue: 37.539246, longitudeValue: 127.074725),
        CampusMap(title: .와우도, latitudeValue: 37.540094, longitudeValue: 127.076545),
        CampusMap(title: .온실, latitudeValue: 37.544562, longitudeValue: 37.544562),
        CampusMap(title: .황소상, latitudeValue: 37.543128, longitudeValue: 127.076179),
        CampusMap(title: .일우헌, latitudeValue: 37.544856, longitudeValue: 127.079519),
        
        CampusMap(title: .실내체육관, latitudeValue: 37.544466, longitudeValue: 127.079780),
        CampusMap(title: .실내체육관, latitudeValue: 37.543177, longitudeValue: 127.075168),
        CampusMap(title: .건대항쟁기립상, latitudeValue: 37.543819, longitudeValue: 127.076423),
    ]
}
