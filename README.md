# 🛍️ ShopZen - Flutter eCommerce App

Welcome to **ShopZen**, a modern and responsive Flutter eCommerce application designed to deliver a smooth and intuitive shopping experience. Built using **Flutter** with **Supabase**, **BLoC**, and *Clean Architecture principles*, ShopZen is tailored for both developers and users who value performance and design.

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/7dWXOJUUv6Q" frameborder="0" allowfullscreen></iframe>

## 🚀 Features

* 🔐 Firebase Authentication (Email + Password)
* 🛒 Product browsing with dynamic categories
* ❤️ Wishlist / Saved Items
* 🧺 Cart Management with real-time total calculation
* 📦 Order flow simulation (Add to cart → Checkout)
* 🎨 Light/Dark Theme Switch
* 🌍 Multi-language support (English & Arabic)
* 🔔 Toast and snackbar notifications
* 💾 Caching using SharedPreferences

---

## 📸 Screenshots

<table>
  <tr>
    <td><b>Splash Screen</b></td>
    <td><b>Onboarding</b></td>
    <td><b>Sign In</b></td>
    <td><b>Sign Up</b></td>
  </tr>
  <tr>
    <td><img src="assets/screen_shots/splash_screen.png" width="200"/></td>
    <td><img src="assets/screen_shots/onboarding.png" width="200"/></td>
    <td><img src="assets/screen_shots/sign_in.png" width="200"/></td>
    <td><img src="assets/screen_shots/sign_up.png" width="200"/></td>
  </tr>
</table>

<table>
  <tr>
    <td><b>Home</b></td>
    <td><b>View All</b></td>
    <td><b>Product Details</b></td>
    <td><b>Cart</b></td>
  </tr>
  <tr>
    <td><img src="assets/screen_shots/home.png" width="200"/></td>
    <td><img src="assets/screen_shots/view_all.png" width="200"/></td>
    <td><img src="assets/screen_shots/product_details.png" width="200"/></td>
    <td><img src="assets/screen_shots/cart.png" width="200"/></td>
  </tr>
</table>

<table>
  <tr>
    <td><b>Checkout</b></td>
    <td><b>Saved Items</b></td>
    <td><b>Search</b></td>
    <td><b>Account (EN)</b></td>
  </tr>
  <tr>
    <td><img src="assets/screen_shots/check_out.png" width="200"/></td>
    <td><img src="assets/screen_shots/saved_items.png" width="200"/></td>
    <td><img src="assets/screen_shots/search.png" width="200"/></td>
    <td><img src="assets/screen_shots/account_en.png" width="200"/></td>
  </tr>
</table>

<table>
  <tr>
    <td><b>Account (AR)</b></td>
  </tr>
  <tr>
    <td><img src="assets/screen_shots/account_ar.png" width="200"/></td>
  </tr>
</table>




> 📁 You can add your screenshots in the `/screenshots` folder.

---

## 🧩 Tech Stack

* **Flutter** (Latest Stable)
* **Firebase Auth**
* **Supabase** (for data)
* **BLoC** for State Management
* **GoRouter** for Routing
* **SharedPreferences** for Local Storage
* **Flutter SVG** + **Cached Network Image** for Media Handling

---

## 🛠️ Installation & Run Locally

### Prerequisites:

* Flutter SDK (>=3.10.0)
* Dart SDK (comes with Flutter)
* Git

### Steps:

```bash
# 1. Clone the repository
$ git clone https://github.com/Abdelrhman-Tec/ShopZen.git
$ cd ShopZen

# 2. Install dependencies
$ flutter pub get

# 3. Run on connected device or emulator
$ flutter run
```

---

## 📁 Project Structure

```
lib/
├── config/
│   ├── routes/              # GoRouter setup
│   ├── cache/               # SharedPreferences helper
│   └── theme/               # Theme & language cubits
├── core/                   # App-level shared components (colors, widgets, etc.)
├── features/
│   ├── auth/               # Sign In / Sign Up / Cubit
│   ├── home/               # Home screen & product listing
│   ├── cart/               # Cart logic
│   └── saved_items/        # Wishlist logic
├── main.dart               # Entry point
```

---

## 🔧 Execution Plan

![Architecture](assets/diagrams/diagram-export-7-3-2025-6_37_33-PM.png)

## 🤝 Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

---

## 📄 License

MIT License. See `LICENSE` file.

---

Made with ❤️ by [Abdelrhman Nada](https://github.com/Abdelrhman-Tec)
