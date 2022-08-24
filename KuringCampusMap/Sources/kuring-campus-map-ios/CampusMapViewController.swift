//
//  CampusMapViewController.swift
//  KuringCampusMap
//
//  Created by Hamlit Jason on 2022/08/24.
//

import UIKit
import MapKit
import SnapKit

public class CampusMapViewController: UIViewController {
    
    /// 학교 건물 정보
    public let campusMaps: [CampusMap] = CampusMap.campusMaps
    
    public let locationManager = CLLocationManager()
    public lazy var mapView = MKMapView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMapView()
        setupAnnotation()
    }
    
    func setupMapView() {
        view.addSubview(mapView)
        mapView.delegate = self
        mapView.userTrackingMode = .followWithHeading
        
        mapView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    /// 핀 위치를 세팅
    func setupAnnotation() {
        campusMaps.forEach { building in
            let latitudeValue: Double = building.latitudeValue
            let longitudeValue: Double = building.longitudeValue
            let title: String = building.title.rawValue
            addAnnotation(latitudeValue: latitudeValue, longitudeValue: longitudeValue, delta: 0.1, title: title, subtitle: "")
        }
        
        /// 초기 좌표는 일감호의 좌표
        let center = CLLocationCoordinate2D(latitude: 37.540744, longitude: 127.076451)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        mapView.setRegion(MKCoordinateRegion(center: center, span: span), animated: true)
    }
}

extension CampusMapViewController {
    /// 위도와 경도로 원하는 위치를 표시하고, 위치를 반환
    func goLocation(
        latitudeValue: CLLocationDegrees,
        longitudeValue: CLLocationDegrees,
        delta span: Double
    ) -> CLLocationCoordinate2D {
        
        let location = CLLocationCoordinate2DMake(latitudeValue, longitudeValue)
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let region = MKCoordinateRegion(center: location, span: spanValue)
        
        mapView.setRegion(region, animated: true)
        
        return location
    }
    
    /// 위치가 업데이트 되었을 때 지도에 나타내기 위한 메서드
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        
        _ = goLocation(
            latitudeValue: location.coordinate.latitude,
            longitudeValue: location.coordinate.longitude,
            delta: 0.01
        )
        
        CLGeocoder().reverseGeocodeLocation(location) { placemarks, error -> Void in
            let placemark = placemarks?.first
            let country = placemark?.country
            var address: String = country!
            if placemark?.locality != nil {
                address += " "
                address += placemark!.thoroughfare!
            }
        }
        
        locationManager.stopUpdatingLocation()
    }
    
    /// 어노테이션을 추가
    func addAnnotation(
        latitudeValue: CLLocationDegrees,
        longitudeValue: CLLocationDegrees,
        delta span: Double,
        title: String,
        subtitle: String
    ) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = goLocation(latitudeValue: latitudeValue, longitudeValue: longitudeValue, delta: span)
        
        annotation.title = title
        annotation.subtitle = subtitle
        mapView.addAnnotation(annotation)
    }
}

extension CampusMapViewController: MKMapViewDelegate {
    /// 맵뷰에서 annotation을 선택했을 때
    public func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let annotation = view.annotation!
        
        mapView.setCenter(annotation.coordinate, animated: true)
    }
}
