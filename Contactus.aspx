<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="SmartBank.Contactusaspx" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <title>اتصل بنا</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.rtl.min.css" rel="stylesheet" />
    <style>
        body { font-family: 'Cairo', sans-serif; background: #f8f9fa; }
        .contact-form {
            background: white; padding: 30px; border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        footer {
            background-color: #0d6efd; color: white; text-align: center; padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>

<body>
    <!-- شريط التنقل -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
            <div class="container">
                <a class="navbar-brand fw-bold" href="Index.aspx">البنك الذكي</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item"><a class="nav-link" href="Index.aspx">الرئيسية</a></li>
                        <li class="nav-item"><a class="nav-link" href="Services.aspx">الخدمات</a></li>
                        <li class="nav-item"><a class="nav-link" href="Branches.aspx">الفروع</a></li>
                        <li class="nav-item"><a class="nav-link active" href="Contactus.aspx">اتصل بنا</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </br>
    </br>
    </br>
    <!-- المحتوى -->
    <div class="container my-5">
        <h2 class="text-center text-primary mb-4">اتصل بنا</h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="contact-form">
                    <form runat="server">
                                            <asp:Label ID="lblMessage" runat="server" CssClass="text-success fw-bold d-block text-center mb-3"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger" HeaderText="الرجاء تصحيح الأخطاء التالية:" />

                    <asp:Panel ID="pnlForm" runat="server">
                        <div class="mb-3">
                            <label for="txtName" class="form-label">الاسم الكامل</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="أدخل اسمك الكامل"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                                ErrorMessage="الاسم مطلوب" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label for="txtEmail" class="form-label">البريد الإلكتروني</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="example@mail.com"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="البريد الإلكتروني مطلوب" CssClass="text-danger"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                ErrorMessage="البريد الإلكتروني غير صالح" CssClass="text-danger"></asp:RegularExpressionValidator>
                        </div>

                        <div class="mb-3">
                            <label for="txtSubject" class="form-label">الموضوع</label>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="موضوع الرسالة"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject"
                                ErrorMessage="الموضوع مطلوب" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="mb-3">
                            <label for="txtMessage" class="form-label">الرسالة</label>
                            <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="أدخل رسالتك هنا"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage"
                                ErrorMessage="الرسالة مطلوبة" CssClass="text-danger"></asp:RequiredFieldValidator>
                        </div>

                        <div class="text-center">
                            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary px-4" Text="إرسال" OnClick="btnSubmit_Click" />
                        </div>
                    </asp:Panel>

                    </form>

                    <div class="map-container mt-5">
                        <h5 class="text-primary mb-3">موقع الإدارة العامة</h5>
                        <iframe src="https://www.google.com/maps?q=Damascus+Damascus+Hotel&output=embed" width="100%" height="350" style="border:0;" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- التذييل -->
    <footer>
        <p>© 2025 البنك المتكامل. جميع الحقوق محفوظة.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>