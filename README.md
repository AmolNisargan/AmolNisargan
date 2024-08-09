
# Inventory Management System

The Inventory Management System is a web-based application designed to manage inventory-related tasks within a store or mall. It enables administrators to perform various operations such as adding new products, updating product information, deleting products, and viewing product details. The system aims to streamline inventory stock and ordering processes, improving efficiency in managing product data.

## Key Features

- **User Authentication**: The system ensures that only authorized personnel can access and manage inventory data. Administrators can log in with their credentials to access the system.
  
- **Product CRUD Operations**: 
  - **Create**: Add new products to the inventory.
  - **Read**: View detailed information about products.
  - **Update**: Modify existing product details.
  - **Delete**: Remove products from the inventory.

## Technology Stack

- **Backend**: 
  - **Spring Boot**: Provides the framework for building the backend of the application.
  - **MySQL**: Used as the backend database to store inventory and order-related information such as product and order details.
  
- **Frontend**:
  - **Servlets**: Handle HTTP requests and responses, processing user inputs, interacting with the database, and generating dynamic content.
  - **JSP (JavaServer Pages)**: Create dynamic web pages that display product data and interact with users, separating presentation logic from business logic.

## Installation and Setup

### Prerequisites

- **Java 8 or higher**
- **Apache Maven**
- **MySQL Server**
- **Tomcat Server** (or any other Servlet container)

### Steps to Set Up

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/inventory-management-system.git
   cd inventory-management-system
   ```

2. **Set up the MySQL database**:
   - Create a new MySQL database for the application.
   - Update the database configuration in `application.properties` file:
     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/inventory_db2
     spring.datasource.username=your-username
     spring.datasource.password=your-password
     spring.jpa.hibernate.ddl-auto=update
     ```

3. **Build the project**:
   ```bash
   mvn clean install
   ```

4. **Deploy the application**:
   - Deploy the generated `.war` file to your Tomcat server or any other Servlet container.
   - Access the application at `http://localhost:8080/inventory-management-system`.

## Usage

- **Login**: Access the login page and enter your credentials to manage the inventory.
- **Manage Products**: Use the interface to add, view, update, or delete products from the inventory.

## Contributing

If you'd like to contribute to this project, please fork the repository and use a feature branch. Pull requests are welcome.

## License

This project is licensed under the MIT License.

---

## Contact

For any inquiries or support, please contact [Amol Nisargan] at [nisargan.ap@gmail.com].



![image](https://github.com/user-attachments/assets/7fbc13bf-3338-4510-a899-e32e8441f744)

![image](https://github.com/user-attachments/assets/411aab79-ef44-4927-bd10-3a99e39d2723)

![image](https://github.com/user-attachments/assets/f228d943-54bb-4f8d-9a56-92fc4f349378)

![image](https://github.com/user-attachments/assets/729b0ebf-82bd-4eff-96ee-e414e7e951d3)

![image](https://github.com/user-attachments/assets/3c69ae41-0edc-47ae-bdfe-5c8829007ba3)

![image](https://github.com/user-attachments/assets/18a863b8-3c5b-4886-8a5d-206f69da69ef)

![image](https://github.com/user-attachments/assets/57a3ca42-6c68-4fca-b8f9-920557879ab8)

![image](https://github.com/user-attachments/assets/ce9725ef-0df1-46dc-ba82-d51f821447e9)

![image](https://github.com/user-attachments/assets/ff6dcd3f-a766-4030-8878-6371bd6f6408)

![image](https://github.com/user-attachments/assets/7ea9d923-4e5a-4d30-8340-da6be36ca1ce)

![image](https://github.com/user-attachments/assets/fdec0d97-9b01-474d-86aa-85a8781f9aba)

![image](https://github.com/user-attachments/assets/4e2c0c36-742a-44f2-b52b-98d78fbd05da)

![image](https://github.com/user-attachments/assets/01e8d90e-ff6a-4991-a1cb-3fbd46850363)

![image](https://github.com/user-attachments/assets/faa3289b-327d-4db0-8e04-4311207465f4)

![image](https://github.com/user-attachments/assets/f3964442-fd87-47d5-8576-f889dd702f39)













