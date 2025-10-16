<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="SmartBank.Services" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>خدماتنا</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.rtl.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }
        .page-header {
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('images/services-bg.jpg') center/cover;
            color: white;
            text-align: center;
            padding: 100px 20px;
        }
        .page-header h1 { font-size: 2.8rem; font-weight: bold; }
        .service-icon { font-size: 3rem; color: #0d6efd; }
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
                        <li class="nav-item"><a class="nav-link" href="Index.aspx">الرئيسية</a></li>
                        <li class="nav-item"><a class="nav-link active" href="Services.aspx">الخدمات</a></li>
                        <li class="nav-item"><a class="nav-link" href="Branches.aspx">الفروع</a></li>
                        <li class="nav-item"><a class="nav-link" href="Contactus.aspx">اتصل بنا</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- رأس الصفحة -->
        <header class="page-header mt-5">
            <h1>خدماتنا المصرفية</h1>
            <p class="lead mt-3">نقدم مجموعة متكاملة من الحلول المالية التي تلبي احتياجاتكم اليومية والمستقبلية.</p>
        </header>

        <!-- قائمة الخدمات -->
        <section class="container py-5">
            <div class="row g-4">

                <!-- الخدمة 1 -->
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 shadow-sm text-center p-4">
                        <i class="bi bi-credit-card service-icon mb-3"></i>
                        <h4 class="fw-bold">خدمة البطاقات المصرفية</h4>
                        <p class="text-muted">
                            إمكانية إصدار بطاقات ائتمان وسحب فوري، مع مراقبة العمليات في الوقت الحقيقي.
                        </p>
                    </div>
                </div>

                <!-- الخدمة 2 -->
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 shadow-sm text-center p-4">
                        <i class="bi bi-phone service-icon mb-3"></i>
                        <h4 class="fw-bold">الخدمات المصرفية عبر الهاتف</h4>
                        <p class="text-muted">
                            تطبيق مخصص يتيح للمستخدمين تنفيذ العمليات المالية بسهولة وأمان من هواتفهم.
                        </p>
                    </div>
                </div>

                <!-- الخدمة 3 -->
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 shadow-sm text-center p-4">
                        <i class="bi bi-cash-coin service-icon mb-3"></i>
                        <h4 class="fw-bold">القروض الشخصية</h4>
                        <p class="text-muted">
                            تمويل مرن وسريع بشروط ميسرة لتلبية احتياجات الأفراد والمشاريع الصغيرة.
                        </p>
                    </div>
                </div>

                <!-- الخدمة 4 -->
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 shadow-sm text-center p-4">
                        <i class="bi bi-piggy-bank service-icon mb-3"></i>
                        <h4 class="fw-bold">حسابات التوفير</h4>
                        <p class="text-muted">
                            وفر أموالك واحصل على عوائد مميزة مع حرية السحب والإيداع في أي وقت.
                        </p>
                    </div>
                </div>

                <!-- الخدمة 5 -->
                <div class="col-md-6 col-lg-4">
                    <div class="card h-100 shadow-sm text-center p-4">
                        <i class="bi bi-globe service-icon mb-3"></i>
                        <h4 class="fw-bold">الخدمات الإلكترونية عبر الإنترنت</h4>
                        <p class="text-muted">
                            منصة آمنة لإدارة الحسابات، تحويل الأموال، ودفع الفواتير إلكترونيًا دون الحاجة لزيارة الفرع.
                        </p>
                    </div>
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