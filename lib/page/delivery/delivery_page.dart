// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class DeliveryPage extends StatefulWidget {
//   const DeliveryPage({super.key});
//
//   @override
//   State<DeliveryPage> createState() => _DeliveryPageState();
// }
//
// class _DeliveryPageState extends State<DeliveryPage> {
//   late GoogleMapController mapController;
//
//   // Dữ liệu giả
//   final LatLng customerLocation = LatLng(10.7769, 106.7009); // Vị trí khách hàng (TPHCM)
//   final LatLng shipperLocation = LatLng(10.7712, 106.6983);  // Vị trí shipper (gần đó)
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Theo dõi đơn hàng'),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           mapController = controller;
//         },
//         initialCameraPosition: CameraPosition(
//           target: customerLocation,
//           zoom: 14.5,
//         ),
//         markers: {
//           Marker(
//             markerId: MarkerId('customer'),
//             position: customerLocation,
//             infoWindow: InfoWindow(title: 'Khách hàng'),
//             icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//           ),
//           Marker(
//             markerId: MarkerId('shipper'),
//             position: shipperLocation,
//             infoWindow: InfoWindow(title: 'Shipper'),
//             icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
//           ),
//         },
//       ),
//     );
//   }
// }
