<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            border: 1px solid #dee2e6;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
        }
        .form-title {
            margin-bottom: 30px;
            font-weight: bold;
            text-align: center;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .input-file {
            margin-top: 15px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="form-title">Add a New Book</h2>
            <form method="POST" action="/addbook" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="title">Title:</label>
                    <input type="text" class="form-control" id="title" name="title" required>
                </div>

                <div class="form-group">
                    <label for="author">Author:</label>
                    <input type="text" class="form-control" id="author" name="author" required>
                </div>

                <div class="form-group">
                    <label for="isbn">ISBN:</label>
                    <input type="text" class="form-control" id="isbn" name="isbn" required>
                </div>

                <div class="form-group">
                    <label for="publisher">Publisher:</label>
                    <input type="text" class="form-control" id="publisher" name="publisher" required>
                </div>

                <div class="form-group">
                    <label for="genre">Genre:</label>
                    <input type="text" class="form-control" id="genre" name="genre" required>
                </div>

                <div class="form-group">
                    <label for="language">Language:</label>
                    <input type="text" class="form-control" id="language" name="language" required>
                </div>

                <div class="form-group">
                    <label for="numberOfPages">Number of Pages:</label>
                    <input type="number" class="form-control" id="numberOfPages" name="numberOfPages" required>
                </div>

                <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="number" step="0.01" class="form-control" id="price" name="price" required>
                </div>

                <div class="form-group">
                    <label for="description">Description:</label>
                    <textarea class="form-control" id="description" name="description"></textarea>
                </div>

                <div class="form-group">
                    <label for="rating">Rating:</label>
                    <input type="number" step="0.1" class="form-control" id="rating" name="rating">
                </div>

                <div class="form-group">
                    <label for="stockQuantity">Stock Quantity:</label>
                    <input type="number" class="form-control" id="stockQuantity" name="stockQuantity">
                </div>

                <div class="form-group">
                    <label for="coverpage">Cover Page:</label>
                    <input type="file" class="form-control-file" id="coverpage" name="coverpage">
                </div>

                <button type="submit" class="btn btn-primary btn-block">Submit</button>
            </form>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
