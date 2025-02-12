# Food Family

Food Family is a **Flutter-based** mobile application that allows users to order food from nearby restaurants with dynamic recommendations and seamless navigation.

## Features
- **Location-Based Recommendations**: Dynamic food and restaurant suggestions based on user location.
- **Restaurant & Food Discovery**: Explore food categories and get recommendations within the delivery radius.
- **Distance & Delivery Calculation**:
  - Calculate distance between the client and restaurant.
  - Estimate delivery time and price.
  - Navigate using maps from client’s location to the restaurant.
- **Secure Authentication**:
  - Email verification system.
  - Phone number verification.
- **Payment System**: Secure transactions between clients and admins.
- **Ratings & Reviews**: Users can rate restaurant experience, delivery service, and food quality.
- **Advanced Address System**: Uses multiple **map APIs** for precise address retrieval and delivery location.

## Tech Stack
### Frontend
- **Flutter**
- **State Management**: GetX

### Backend
- **Node.js**
- **MongoDB**
- **Firebase**

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/Ariful2016/Food-Family.git
   cd Food-Family
   ```
2. Install dependencies:
   ```sh
   flutter pub get
   ```
3. Run the application:
   ```sh
   flutter run
   ```

## Dependencies
The project utilizes the following Flutter packages:

```yaml
cupertino_icons: ^1.0.2
google_maps_flutter: ^2.5.0
flutter_polyline_points: ^2.0.0
geolocator: ^7.0.3
geocoding: ^2.0.0
flutter_screenutil: ^5.9.0
google_fonts: ^6.1.0
get: ^4.6.6
flutter_vector_icons: ^2.0.0
cached_network_image: ^3.3.0
flutter_rating_bar: ^4.0.1
flutter_hooks: ^0.20.3
http: ^1.1.0
shimmer: ^3.0.0
glass: ^1.0.2+1
flutter_svg: ^2.0.9
lottie: ^2.7.0
get_storage: ^2.1.1
webview_flutter: ^4.4.2
webview_flutter_android: ^3.12.1
webview_flutter_wkwebview: ^3.9.4
device_preview: ^1.1.0
otp_text_field: ^1.1.3
firebase_auth: ^4.15.2
firebase_core: ^2.24.2
country_picker: ^2.0.23
```

## Usage
- Open the app to explore nearby restaurants and food options.
- Select a restaurant and place an order.
- View estimated delivery time and track the order.
- Securely make payments and rate the experience.

## GitHub Repository
[GitHub - Food Family](https://github.com/Ariful2016/Food-Family)

## Git Tags
```sh
git tag -a v1.0.0 -m "Initial release"
git push origin v1.0.0
```

---
Developed with ❤️ using Flutter, Node.js, and Firebase. Happy Coding! 🚀

