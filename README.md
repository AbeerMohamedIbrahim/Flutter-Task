
# Flutter Product Catalog App

This is a simple Flutter application that displays a product catalog using a modern UI layout. It includes custom product cards, category filtering, and a basic theming structure.

## 📂 Project Structure

```
lib/
│
├── main.dart              # Entry point of the app
├── home_screen.dart       # Main UI screen containing categories and products
├── category_list.dart     # Widget for displaying product categories
├── product_card.dart      # Widget for displaying individual product cards
├── product_model.dart     # Product data model class
├── dummy_data.dart        # Temporary static product and category data
└── app_theme.dart         # Custom theme for the app
```

## 📄 File Descriptions

- **main.dart**: Initializes the app and sets up the MaterialApp with theme and home screen.
- **home_screen.dart**: The main user interface including category filter and product list.
- **category_list.dart**: A horizontal list of categories used for filtering products.
- **product_card.dart**: Reusable card widget that displays a product's image, name, and price.
- **product_model.dart**: Defines the `Product` class used to represent each product.
- **dummy_data.dart**: Contains sample data for both categories and products.
- **app_theme.dart**: Custom theming for colors, text styles, and decoration.

## 🖼 Screenshot

![App Screenshot](screen.png)

