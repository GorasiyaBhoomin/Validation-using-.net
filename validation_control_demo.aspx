<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Control Demo</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            box-sizing: border-box;
        }

        form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        /* Title */
        p {
            font-size: 24px;
            text-align: center;
            margin-bottom: 30px;
            color: #4CAF50;
        }

        /* Input Fields */
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        /* Validation Messages */
        .validation-message {
            color: red;
            font-size: 12px;
        }

        /* Error Messages */
        .error-message {
            color: red;
            font-size: 14px;
        }

        /* Buttons */
        input[type="button"], button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        input[type="button"]:hover, button:hover {
            background-color: #45a049;
        }

        /* Validation Summary */
        .validation-summary {
            color: red;
            margin-top: 20px;
            font-size: 14px;
        }

        /* Extra spacing between fields */
        .field {
            margin-bottom: 20px;
        }

        .required-field {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <p>VALIDATION CONTROL DEMO</p>

            <div class="field">
                <label for="name">NAME:</label>
                <asp:TextBox ID="name" runat="server" Height="19px" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="NAME IS REQUIRED" ControlToValidate="name" ForeColor="Red" />
            </div>

            <div class="field">
                <label for="age">AGE:</label>
                <asp:TextBox ID="age" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="AGE MUST BE GREATER 10 AND LESS THAN 50" ControlToValidate="age" ForeColor="Red" MaximumValue="50" MinimumValue="10" Type="Integer" />
            </div>

            <div class="field">
                <label for="email">EMAIL:</label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="EMAIL IS NOT IN FORMAT" ControlToValidate="email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            </div>

            <div class="field">
                <label for="pass">PASSWORD:</label>
                <asp:TextBox ID="pass" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Enter the password" ForeColor="Red" />
            </div>

            <div class="field">
                <label for="cf_pass">CONFIRM PASSWORD:</label>
                <asp:TextBox ID="cf_pass" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="pass" ControlToValidate="cf_pass" ForeColor="Red" />
            </div>

            <div class="validation-summary">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </div>

            <div class="field">
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </div>
        </div>
    </form>
</body>
</html>
