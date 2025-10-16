<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SmartBank.Admin" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <title>لوحة الإدارة</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.rtl.min.css" rel="stylesheet" />

    <style>
        body {
            font-family: 'Cairo', sans-serif;
            background-color: #f8f9fa;
        }
        .admin-container {
            margin-top: 50px;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        footer {
            background-color: #0d6efd;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
        .btn-delete {
            background-color: #dc3545;
            border: none;
        }
        .btn-refresh {
            background-color: #0d6efd;
            border: none;
        }
    </style>
</head>

<body>
    <!-- شريط العنوان -->
    <nav class="navbar navbar-dark bg-primary">
        <div class="container-fluid">
            <span class="navbar-brand mb-0 h1">لوحة إدارة البنك الذكي</span>
        </div>
    </nav>
    <form runat="server">
    <div class="container admin-container">
        <div class="card p-4">
            <h3 class="text-center text-primary mb-4">الرسائل الواردة من نموذج "اتصل بنا"</h3>

            <div class="d-flex justify-content-between mb-3">
                <asp:Label ID="lblCount" runat="server" CssClass="fw-bold text-secondary"></asp:Label>
                <asp:Button ID="btnRefresh" runat="server" Text="تحديث البيانات" CssClass="btn btn-refresh text-white px-4" OnClick="btnRefresh_Click" />
            </div>

            <asp:GridView ID="GridViewMessages" runat="server" CssClass="table table-striped table-hover text-center align-middle"
                AutoGenerateColumns="False" DataKeyNames="Id" OnRowDeleting="GridViewMessages_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="رقم" ReadOnly="True" />
                    <asp:BoundField DataField="FullName" HeaderText="الاسم الكامل" />
                    <asp:BoundField DataField="Email" HeaderText="البريد الإلكتروني" />
                    <asp:BoundField DataField="Subject" HeaderText="الموضوع" />
                    <asp:BoundField DataField="Message" HeaderText="الرسالة" />
                    <asp:BoundField DataField="DateSent" HeaderText="تاريخ الإرسال" DataFormatString="{0:yyyy-MM-dd HH:mm}" />
                    <asp:CommandField ShowDeleteButton="True" DeleteText="حذف" ButtonType="Button" ControlStyle-CssClass="btn btn-delete text-white btn-sm" />
                </Columns>
            </asp:GridView>

            <asp:Label ID="lblStatus" runat="server" CssClass="text-success fw-bold d-block text-center mt-3"></asp:Label>
        </div>
    </div>
        </form>
    <footer>
        <p>© 2025 البنك الذكي - لوحة الإدارة</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>