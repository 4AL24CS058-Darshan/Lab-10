<!DOCTYPE html>
<html>
<head>
    <title>Student Result Form</title>

    <script>
        function validateForm() {
            let form = document.forms["studentForm"];

            let fields = ["roll", "name", "s1", "s2", "s3", "s4", "s5"];

            for (let i = 0; i < fields.length; i++) {
                if (form[fields[i]].value == "") {
                    alert("All fields are required!");
                    return false;
                }
            }

            for (let i = 1; i <= 5; i++) {
                let mark = parseInt(form["s" + i].value);
                if (mark < 0 || mark > 100) {
                    alert("Marks must be between 0 and 100");
                    return false;
                }
            }

            return true;
        }
    </script>

</head>
<body>

<h2>Student Result Entry</h2>

<form name="studentForm" action="ResultServlet" method="post"
      onsubmit="return validateForm();">

    Roll No: <input type="text" name="roll"><br><br>

    Name: <input type="text" name="name"><br><br>

    Sub1: <input type="number" name="s1"><br><br>
    Sub2: <input type="number" name="s2"><br><br>
    Sub3: <input type="number" name="s3"><br><br>
    Sub4: <input type="number" name="s4"><br><br>
    Sub5: <input type="number" name="s5"><br><br>

    <input type="submit" value="Calculate Result">

</form>

</body>
</html>