<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Account Form</title>
    <style>
        /* Reset some default styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global styles */
        body {
            font-family: Arial, sans-serif;
            background-color: rgb(22, 50, 92);
        }

        /* Form container */
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Form styles */
        form {
            display: flex;
            flex-direction: column;
        }

        h1 {
            text-align: center;
            color: rgb(22, 50, 92);
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"],
        select,
        input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        select {
            width: 100%;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 12px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3;
        }

        /* Confirmation message */
        #confirmation {
            text-align: center;
            font-weight: bold;
            margin-top: 10px;
            color: green;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Create a New Account</h1>

        <form id="accountForm" action="#" method="post">
            <label for="cname">Customer Name</label>
            <input type="text" name="cname" id="cname" required>

            <label for="cfname">Father Name</label>
            <input type="text" name="cfname" id="cfname" required>

            <label for="cdob">DOB</label>
            <input type="date" name="cdob" id="cdob" required>

            <label for="cgender">Gender</label>
            <input type="text" name="cgender" id="cgender" required>

            <label for="opdate">Account Opening Date</label>
            <input type="date" name="opdate" id="opdate" required>

            <label for="cadd">Address</label>
            <input type="text" name="cadd" id="cadd" required>

            <label for="ccontact">Contact No.</label>
            <input type="text" name="ccontact" id="ccontact" required>

            <label for="rrole">Role</label>
            <input type="text" name="rrole" id="rrole" required>

            <label for="password">Password</label>
            <input type="password" name="password" id="password" required>

            <label for="secques">Security Question</label>
            <select name="secques" id="secques">
                <option value="birthplace">Birth Place</option>
                <option value="firstSchool">First School</option>
                <option value="bestFriend">Best Friend</option>
            </select>

            <label for="sans">Security Answer</label>
            <input type="text" name="sans" id="sans" required>

            <label for="status">Status</label>
            <select name="status" id="status">
                <option value="Activate Account">Activate Account</option>
            </select>

            <input type="submit" name="b1" value="Save">
            <input type="reset" name="b2" value="Reset">
        </form>

        <div id="confirmation">Account Created Successfully!</div>
    </div>

    <script>
        const form = document.getElementById('accountForm');
        const confirmation = document.getElementById('confirmation');

        form.addEventListener('submit', function (e) {
            e.preventDefault();
            // Simulate form submission and show confirmation
            setTimeout(function () {
                form.reset();
                confirmation.style.display = 'block';
                setTimeout(function () {
                    confirmation.style.display = 'none';
                }, 3000);
            }, 1000);
        });
    </script>
</body>
</html>
