<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Branches.aspx.cs" Inherits="SmartBank.Branches" %>

<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
    <meta charset="utf-8" />
    <title>فروع البنك</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.rtl.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: 'Cairo', sans-serif;
        }
        .branch-card {
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 12px;
            overflow: hidden;
            transition: 0.3s;
        }
        .branch-card:hover {
            transform: translateY(-5px);
        }
        iframe {
            width: 100%;
            height: 250px;
            border: 0;
            border-top: 1px solid #ddd;
        }
        footer {
            background-color: #0d6efd;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 40px;
        }
    </style>
</head>

<body>
    <!-- شريط التنقل -->
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
    </br>
    </br>
    </br>
    <!-- المحتوى الرئيسي -->
    <div class="container my-5">
        <h2 class="text-center mb-4 text-primary" >فروعنا في المحافظات السورية</h2>
        <div class="row g-4">

            <!-- فرع دمشق - المزة -->
            <div class="col-md-6">
                <div class="branch-card p-3">
                    <h5 class="text-primary">فرع دمشق - المزة</h5>
                    <p>العنوان: دمشق، حي المزة الغربية، بجانب السفارة اللبنانية.</p>
                    <iframe src="https://www.google.com/maps?q=Damascus+Mezza&output=embed"></iframe>
                </div>
            </div>

            <!-- فرع دمشق - الحمرا -->
            <div class="col-md-6">
                <div class="branch-card p-3">
                    <h5 class="text-primary">فرع دمشق - الحمرا</h5>
                    <p>العنوان: دمشق، شارع الحمرا، مقابل فندق الشام.</p>
                    <iframe src="https://www.google.com/maps?q=Damascus+Damascus+Hotel&output=embed"></iframe>
                </div>
            </div>

            <!-- فرع دمشق - برامكة -->
            <div class="col-md-6">
                <div class="branch-card p-3">
                    <h5 class="text-primary">فرع دمشق - البرامكة</h5>
                    <p>العنوان: دمشق، البرامكة، بالقرب من جامعة دمشق.</p>
                    <iframe src="https://www.google.com/maps?q=Damascus+Baramkeh&output=embed"></iframe>
                </div>
            </div>

            <!-- فرع حمص -->
            <div class="col-md-6">
                <div class="branch-card p-3">
                    <h5 class="text-primary">فرع حمص</h5>
                    <p>العنوان: حمص، شارع الدبلان الرئيسي.</p>
                    <iframe src="https://www.google.com/maps?q=Homs+Syria&output=embed"></iframe>
                </div>
            </div>

            <!-- فرع حلب -->
            <div class="col-md-6">
                <div class="branch-card p-3">
                    <h5 class="text-primary">فرع حلب</h5>
                    <p>العنوان: حلب، ساحة سعد الله الجابري.</p>
                    <iframe src="https://www.google.com/maps?q=Aleppo+Syria&output=embed"></iframe>
                </div>
            </div>

            <!-- فرع درعا -->
            <div class="col-md-6">
                <div class="branch-card p-3">
                    <h5 class="text-primary">فرع درعا</h5>
                    <p>العنوان: درعا، شارع الثورة الرئيسي.</p>
                    <iframe src="https://www.google.com/maps?q=Daraa+Syria&output=embed"></iframe>
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