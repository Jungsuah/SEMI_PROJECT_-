<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String path = request.getContextPath(); %>
  

    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>회원가입</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="<%=path %>/resources/icon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=path %>/resources/icon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=path %>/resources/icon/favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#5bbad5" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#766df4">
    <meta name="theme-color" content="#ffffff">
    <!-- Page loading styles-->
    
    <style>
        .page-loading {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            -webkit-transition: all .4s .2s ease-in-out;
            transition: all .4s .2s ease-in-out;
            background-color: #fff;
            opacity: 0;
            visibility: hidden;
            z-index: 9999;
        }
        
        .page-loading.active {
            opacity: 1;
            visibility: visible;
        }
        
        .page-loading-inner {
            position: absolute;
            top: 50%;
            left: 0;
            width: 100%;
            text-align: center;
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
            -webkit-transition: opacity .2s ease-in-out;
            transition: opacity .2s ease-in-out;
            opacity: 0;
        }
        
        .page-loading.active>.page-loading-inner {
            opacity: 1;
        }
        
        .page-loading-inner>span {
            display: block;
            font-size: 1rem;
            font-weight: normal;
            color: #666276;
            ;
        }
        
        .page-spinner {
            display: inline-block;
            width: 2.75rem;
            height: 2.75rem;
            margin-bottom: .75rem;
            vertical-align: text-bottom;
            border: .15em solid #bbb7c5;
            border-right-color: transparent;
            border-radius: 50%;
            -webkit-animation: spinner .75s linear infinite;
            animation: spinner .75s linear infinite;
        }
        
        @-webkit-keyframes spinner {
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
        
        @keyframes spinner {
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
    </style>
    
    <!-- Page loading scripts-->
    <script>
        (function() {
            window.onload = function() {
                var preloader = document.querySelector('.page-loading');
                preloader.classList.remove('active');
                setTimeout(function() {
                    preloader.remove();
                }, 2000);
            };
        })();
    </script>
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="<%=path %>/resources/vendor/simplebar/dist/simplebar.min.css" />
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=path %>/resources/css/theme.min.css">
</head>
<!-- Body-->

<body class="bg-secondary">
    <!-- Page loading spinner-->
    <div class="page-loading active">
        <div class="page-loading-inner">
            <div class="page-spinner"></div><span>Loading...</span>
        </div>
    </div>
    <main class="page-wrapper">
        <!-- Page content-->
        <div class="container-fluid d-flex h-100 align-items-center justify-content-center py-4 py-sm-5">
            <div class="card card-body" style="max-width: 940px"><a class="position-absolute top-0 end-0 nav-link fs-sm py-1 px-2 mt-3 me-3" href="#" onclick="window.history.go(-1); return false;"><i class="fi-arrow-long-left fs-base me-2"></i>Go back</a>
                <div class="row mx-0 align-items-center">
                    <div class="col-md-6 border-end-md p-2 p-sm-5">
                        <h2 class="h3 mb-4 mb-sm-5">회원가입<br>
                            <p style="color: grey; font-size: 20px; margin-top: 3%;">안녕하세요 사뿐사뿐 입니다</p>
                        </h2>
                        <ul class="list-unstyled mb-4 mb-sm-5">
                            <li class="d-flex mb-2"><i class="fi-check-circle mt-1 me-2" style="color: #B0C729;"></i><span>사뿐사뿐에서 소개하는 아름다운 우리 문화재</span></li>
                            <li class="d-flex mb-2"><i class="fi-check-circle mt-1 me-2" style="color: #B0C729;"></i><span>사뿐사뿐 회원들과 함께 나누는 추억</span></li>
                            <li class="d-flex mb-0"><i class="fi-check-circle mt-1 me-2" style="color: #B0C729;"></i><span>사뿐사뿐과 함께하는 스탬프 투어</span></li>
                        </ul><img class="d-block mx-auto" src="<%=path %>/resources/img/semi-img/00.signup.main.png" width="344" alt="Illustartion">
                        <div class="mt-sm-4 pt-md-3">계정이 있으신가요? <a href="<%=path %>/views/member/signIn.jsp" style="color: #8957BD;"><b>로그인</b></a></div>
                    </div>

                    <div class="col-md-6 px-2 pt-2 pb-4 px-sm-5 pb-sm-5 pt-md-5"><a class="btn btn-outline-info w-100 mb-3" href="https://accounts.google.com/"><i class="fi-google fs-lg me-1"></i>Sign in with Google</a><a class="btn btn-outline-info w-100 mb-3" href="https://ko-kr.facebook.com/login"><i class="fi-facebook fs-lg me-1"></i>Sign in with Facebook</a>
                        <div class="d-flex align-items-center py-3 mb-3">
                            <hr class="w-100">
                            <div class="px-3">Or</div>
                            <hr class="w-100">
                        </div>
                        <form class="needs-validation" novalidate name="memberEnrollFrm" action="<%=request.getContextPath()%>/member/enroll" method="POST">
                            <div class="mb-4">
                                <label class="form-label" for="signup-name">이름</label>
                                <input class="form-control" type="text" name="userName" id="signup-name" placeholder="이름" required>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="signup-email">이메일</label>
                                <input class="form-control" type="email" name="userId" id="signup-email" placeholder="이메일" required>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="signup-password">비밀번호 <span class='fs-sm text-muted'> (숫자,영문 혼합 8자리 이상) </span></label>
                                <div class="password-toggle">
                                    <input class="form-control" type="password" name="userPwd" id="signup-password" minlength="8" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                                </div>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="signup-password-confirm">비밀번호 재입력</label>
                                <div class="password-toggle">
                                    <input class="form-control" type="password" id="signup-password-confirm" minlength="8" required>
                                    <label class="password-toggle-btn" aria-label="Show/hide password">
                      <input class="password-toggle-check" type="checkbox"><span class="password-toggle-indicator"></span>
                    </label>
                                </div>
                            </div>
                            <div class="form-check mb-4">
                                <input class="form-check-input" type="checkbox" id="agree-to-terms" required>
                                <label class="form-check-label" for="agree-to-terms">사뿐사뿐 <a href='#' style="color: #8957BD;">이용약관</a> 및 <a href='#'  style="color: #8957BD;">개인정보보호정책</a>에<br>동의합니다.</label>
                            </div>
                            <button class="btn btn-lg w-100" style="background-color: #8957BD; color: #fff;" type="submit" herf="index.do">Sign up         </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="<%=path %>/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<%=path %>/resources/vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="<%=path %>/resources/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="<%=path %>/resources/js/theme.min.js"></script>
</body>

</html>