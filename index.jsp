<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="database.DatabaseConnection" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product Management Dashboard</title>
</head>
<body>
    <h1>Product Management Dashboard</h1>
    <a href="addProduct.jsp">Add Product</a>
    <a href="viewProducts">View Products</a>

    <h3>Add Product Form</h3>
    <form action="addProduct" method="post">
        <input type="text" name="name" placeholder="Product Name" required><br>
        <input type="text" name="category" placeholder="Category" required><br>
        <input type="number" name="price" placeholder="Price" required><br>
        <input type="number" name="stock" placeholder="Stock Quantity" required><br>
        <input type="submit" value="Add Product">
    </form>

    <h3>Product List</h3>
    <form action="searchProducts" method="get">
        <input type="text" name="query" placeholder="Search by name or category">
        <input type="submit" value="Search">
    </form>
    <jsp:include page="viewProducts.jsp" />
</body>
</html>
