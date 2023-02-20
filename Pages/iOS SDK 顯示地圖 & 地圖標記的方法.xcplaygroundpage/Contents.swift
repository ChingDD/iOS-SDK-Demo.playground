//: [Previous](@previous)
//import跟地圖有關的功能
import MapKit
import PlaygroundSupport
//利用MKMapview產生跟地圖有關的畫面
let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 1000, height: 1000))
//要告訴地圖顯示的區域多大：center為中心點、latitudinalMeters為中心點南北延伸出去的公尺數、longitudinalMeters為中心點東西延伸出去的公尺數
mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.800374, longitude: 120.978128), latitudinalMeters: 800, longitudinalMeters: 800)
//留下地圖上有興趣的地方，可利用Array標出複數有興趣的地方
mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.cafe])
PlaygroundPage.current.liveView = mapView

//利用MKPointAnnotation可生成有註解地點功能的東西
let sakura1 = MKPointAnnotation()
//屬性coordinate輸入東西的經緯度
sakura1.coordinate = CLLocationCoordinate2D(latitude: 24.800374, longitude: 120.978128)
//輸入東西的標題
sakura1.title = "新竹公園"
//輸入東西的副標題
sakura1.subtitle = "櫻花公園"
//須將註解的地方加入，才可在地圖上顯示
mapView.addAnnotation(sakura1)
//使playground的頁面可以顯示地圖
PlaygroundPage.current.liveView = mapView
//: [Next](@next)
