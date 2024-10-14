
# Handicraft Store

## Project Overview
The **Handicraft Store** project is an online platform designed to showcase and sell a diverse range of handmade crafts from artisans around the world. This store provides a unique marketplace where customers can discover high-quality, authentic handcrafted items while supporting local artisans and preserving traditional crafts.

The aim of the **Handicraft Store** is to create an engaging, user-friendly platform that connects artisans and buyers, promoting the preservation of handmade art.

## Features
- **Browse Products:** Users can browse through a catalog of various handmade products with details like price, description, and artisan information.
- **Search and Filter:** Customers can search for products and apply filters based on categories, price range, and location.
- **User Accounts:** Users can create accounts, log in, and manage their profiles.
- **Shopping Cart:** Customers can add items to the cart, review their selections, and proceed to checkout.
- **Admin Dashboard:** Admins can manage product listings, view sales, and update inventory.

## Technologies Used
- **Frontend:**
  - HTML
  - CSS
  - JavaScript
- **Backend:**
  - Java
  - JSP (JavaServer Pages)
  - Servlet
- **Database:**
  - MySQL



## Installation

### Prerequisites
- A Java Development Kit (JDK) installed
- A servlet container like **Apache Tomcat**
- **MySQL** or another relational database management system
- A Hibernate setup for ORM (Object-Relational Mapping) if needed

### Setup Instructions
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/handicraft-store.git
   ```

2. Import the project into your preferred IDE (e.g., Eclipse or IntelliJ IDEA).

3. Configure the database:
   - Create a database in MySQL to store product and user data.
   - Update the database configuration in `dbconfig.jsp` with your MySQL connection details:
     ```jsp
     <%! 
     String dbUrl = "jdbc:mysql://localhost:3306/handicraft_db";
     String dbUser = "your-username";
     String dbPassword = "your-password";
     %>
     ```

4. Start the server:
   - Deploy the project on Apache Tomcat or another servlet container.

5. Access the application:
   - Open your browser and go to `http://localhost:8080/handicraft-store`.

## Usage
- Browse and purchase handmade products.
- Manage your user account and view order history.
- Admin users can manage products, inventory, and sales reports.


## Contributing
Contributions are welcome! If you have any suggestions or ideas for new features, feel free to fork the repository and submit a pull request.

### Steps to Contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add your feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a Pull Request.

## Contact
For any inquiries, feel free to reach out:
- **Email:** pratikshakatkade1108@gmail.com

