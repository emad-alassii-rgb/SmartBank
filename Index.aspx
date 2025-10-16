<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SmartBank.Index" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>الصفحة الرئيسية - البنك الذكي</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('images/bank-bg.jpg') center/cover;
            color: white;
            text-align: center;
            padding: 120px 20px;
        }
        .hero h1 { font-size: 3rem; font-weight: bold; }
        .section-title { text-align: center; margin: 60px 0 30px; }
        .why-icon { font-size: 2rem; color: #0d6efd; }
        footer {
            background-color: #0d6efd;
            color: white;
            padding: 30px 0;
        }
        footer a { color: #fff; text-decoration: none; }
        footer a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- شريط التنقل -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
            <div class="container">
                <a class="navbar-brand fw-bold" href="Index.aspx">البنك الذكي</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item"><a class="nav-link active" href="Index.aspx">الرئيسية</a></li>
                        <li class="nav-item"><a class="nav-link" href="Services.aspx">الخدمات</a></li>
                        <li class="nav-item"><a class="nav-link" href="Branches.aspx">الفروع</a></li>
                        <li class="nav-item"><a class="nav-link" href="Contactus.aspx">اتصل بنا</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- قسم الترحيب -->
        <div class="hero">
            <h1>مرحباً بكم في البنك الذكي</h1>
            <p class="lead mt-3">شريككم الموثوق في الحلول المصرفية الرقمية الحديثة.</p>
            <a href="Services.aspx" class="btn btn-light btn-lg mt-3">استكشف خدماتنا</a>
        </div>

        <!-- قسم التعريف بالبنك -->
        <section class="container my-5">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2>من نحن</h2>
                    <p>
                        يسعى البنك الذكي إلى تقديم خدمات مصرفية رقمية آمنة وسريعة ومبتكرة.
                        رؤيتنا هي تبسيط تجربتكم المالية من خلال أحدث تقنيات الويب.
                    </p>
                </div>
                <div class="col-md-6">
                    <img src="images/about_icon.png" class="img-fluid rounded shadow" alt="عن البنك" />
                </div>
            </div>
        </section>

        <!-- قسم الخدمات -->
        <section class="bg-light py-5">
            <div class="container">
                <h2 class="section-title">خدماتنا</h2>
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm">
                            <div class="card-body text-center">
                                <i class="bi bi-credit-card fs-1 text-primary"></i>
                                <h5 class="card-title mt-3">المدفوعات الإلكترونية</h5>
                                <p class="card-text">نظام دفع آمن وسريع يتيح تتبع العمليات في الوقت الحقيقي.</p>
                                <a href="Services.aspx" class="btn btn-outline-primary">المزيد</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm">
                            <div class="card-body text-center">
                                <i class="bi bi-phone fs-1 text-primary"></i>
                                <h5 class="card-title mt-3">الخدمات المصرفية عبر الهاتف</h5>
                                <p class="card-text">إدارة حساباتك بسهولة في أي وقت ومن أي مكان.</p>
                                <a href="Services.aspx" class="btn btn-outline-primary">المزيد</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 shadow-sm">
                            <div class="card-body text-center">
                                <i class="bi bi-piggy-bank fs-1 text-primary"></i>
                                <h5 class="card-title mt-3">حسابات التوفير</h5>
                                <p class="card-text">افتح حسابات التوفير وابدأ الادخار مع أفضل العوائد.</p>
                                <a href="Services.aspx" class="btn btn-outline-primary">المزيد</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- قسم لماذا نحن -->
        <section class="container my-5">
            <h2 class="section-title">لماذا تختارنا؟</h2>
            <div class="row text-center">
                <div class="col-md-3">
                    <div class="why-icon mb-3"><i class="bi bi-shield-lock"></i></div>
                    <h5>أمان عالي</h5>
                    <p>نضمن حماية بياناتك ومعاملاتك بأعلى معايير الأمان.</p>
                </div>
                <div class="col-md-3">
                    <div class="why-icon mb-3"><i class="bi bi-lightning-charge"></i></div>
                    <h5>خدمات سريعة</h5>
                    <p>استفد من معالجة فورية وسهولة في الوصول إلى الخدمات المصرفية.</p>
                </div>
                <div class="col-md-3">
                    <div class="why-icon mb-3"><i class="bi bi-people"></i></div>
                    <h5>دعم مستمر</h5>
                    <p>فريقنا متاح على مدار الساعة لمساعدتك في أي وقت.</p>
                </div>
                <div class="col-md-3">
                    <div class="why-icon mb-3"><i class="bi bi-geo-alt"></i></div>
                    <h5>انتشار واسع</h5>
                    <p>شبكة فروعنا تغطي معظم المحافظات لتكون أقرب إليك دائماً.</p>
                </div>
            </div>
        </section>

        <!-- تذييل الصفحة -->
        <footer>
            <div class="container text-center">
                <p>للتواصل: info@smartbank.com | +963 11 555 4444</p>
                <p>
                    <a href="#">فيسبوك</a> | <a href="#">لينكدإن</a> | <a href="#">تويتر</a>
                </p>
                <p class="mt-3">© 2025 البنك الذكي. جميع الحقوق محفوظة.</p>
            </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>