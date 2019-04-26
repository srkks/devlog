<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>Devlog</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive Resume/CV／Portfolio Template">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
    <!-- 파비콘은 나중에 적절한 것으로 추가하자. -->
    <!-- <link rel="shortcut icon" href="favicon.ico">   -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- FontAwesome JS-->
    <script defer src="https://use.fontawesome.com/releases/v5.8.0/js/all.js" integrity="sha384-ukiibbYjFS/1dhODSWD+PrZ6+CGCgf8VbyUH7bQQNUulL+2r59uGYToovytTf4Xm" crossorigin="anonymous"></script>
    <!-- Global CSS -->
    <link rel="stylesheet" href="<c:url value='/resources/assets/plugins/bootstrap/css/bootstrap.min.css'/>"/>   
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="<c:url value='/resources/assets/css/theme-3.css'/>"/>
</head> 

<body>
    
    <header class="header">
        <div class="top-bar container-fluid"> <!--증명사진 위쪽 배경 div-->
            <div class="actions">
                <a class="btn d-none d-md-inline-block" href="mailto:srkks37@gmail.com"><i class="fas fa-paper-plane" aria-hidden="true"></i> Hire Me!</a>
                <a class="btn" href="<c:url value='/resources/resume/입사지원서_김기성.docx'/>/" download="입사지원서_김기성.docx"><i class="fas fa-download" aria-hidden="true"></i> Download My Resume</a>
            </div><!--//actions-->
            <ul class="social list-inline">
                <li class="list-inline-item"><a href="https://www.youtube.com/c/11mydecember" target="_blank"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
                <li class="list-inline-item"><a href="https://www.instagram.com/my_december1211/?hl=ko" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                <li class="list-inline-item"><a href="https://www.facebook.com/srkks37" target="_blank"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
            </ul><!--//social-->
        </div><!--//top-bar-->
        
        <div class="intro">
            <div class="container text-center">
                <img class="profile-image" src="<c:url value='/resources/assets/images/profile-image.jpg'/>"/>
                <h1 class="name" style="font-family:'KOMACON';">김기성</h1>
                <div class="title" style="font-family: 'KOMACON';">Full Stack Developer</div>
                <div class="profile">
                    <p style="font-family: 'KOMACON'; font-weight:bold;">Java, CSS, Oracle</p>
                </div><!--//profile-->
            </div><!--//container-->
        </div><!--//intro-->
        
        <div class="contact-info">
            <div class="container text-center">
                <ul class="list-inline">
                    <li class="email list-inline-item"><i class="fas fa-envelope"></i><a href="mailto:srkks37@gmail.com">srkks37@gmail.com</a></li>
                    <li class="list-inline-item"><i class="fas fa-phone"></i> <a href="tel: 0123456789">010-2924-5310</a></li>
                    <li class="website list-inline-item"><i class="fas fa-globe"></i><a href="http://develop-kim.com" target="_blank">http://develop-kim.com</a></li>
                </ul>
            </div><!--//container-->
        </div><!--//contact-info-->
        
        <div class="page-nav-space-holder d-none d-md-block">
            <div id="page-nav-wrapper" class="page-nav-wrapper text-center">
                <div class="container">
                    <ul id="page-nav" class="nav page-nav list-inline">
                        
                        <li class="nav-item"><a class="scrollto nav-link" href="#education-section">Education</a></li>
                        <li class="nav-item"><a class="scrollto nav-link" href="#skills-section">Skills</a></li>
                        <li class="nav-item"><a class="scrollto nav-link" href="#testimonials-section">Who am I?</a></li>
                        <li class="nav-item"><a class="scrollto nav-link" href="#portfolio-section">Portfolio</a></li>
                        <li class="nav-item"><a class="scrollto nav-link" href="#contact-section">Contact</a></li>
                    </ul><!--//page-nav-->
                </div>
            </div><!--//page-nav-wrapper-->
        </div>
        
    </header><!--//header-->
    
    <div class="wrapper container">

        
        <section id="education-section" class="education-section section">
            <h2 class="section-title">Education</h2>
            <div class="row">
                <div class="item col-12 col-md-4">
                    <div class="item-inner">
                        <h3 class="degree">JAVA 프레임워크 개발자 양성과정</h3>
                        <div class="education-body">
                            KH정보교육원
                        </div><!--//education-body-->
                        <div class="time">2018.08.01 - 2019.02.27</div>
                        <div class="desc">
                            * JAVA : <br>
                            Servlet/JSP, jdbc<br>
                            Struts, Spring Framework
                            Mybatis, Ajax<br>
                            * HTML, CSS JavaScript, Oracle
                        </div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-12 col-md-4">
                    <div class="item-inner">
                        <h3 class="degree">Administration</h3>
                        <div class="education-body">
                            웅지세무대학
                        </div><!--//education-body-->
                        <div class="time">2006.03 - 2013.02</div>
                        <div class="desc">
                            행정학 전공
                            
                        </div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item col-12 col-md-4">
                    <div class="item-inner">
                        <h3 class="degree">Foreign Language Class</h3>
                        <div class="education-body">
                            부천 북 고등학교
                        </div><!--//education-body-->
                        <div class="time">2003.03 - 2006.02</div>
                        <div class="desc">
                            
                        </div>
                    </div><!--//item-inner-->
                </div><!--//item-->
                
            </div><!--//row-->
        </section><!--//section-->
        
        
        <section id="skills-section" class="skills-section section text-center">
            <h2 class="section-title">Professional Skills</h2>
            <div class="top-skills">
                <h3 class="subtitle">Top Skills</h3>
                <div class="row">
                    <div class="item col-12 col-md-4">
                        <div class="item-inner">
                            <div class="chart-easy-pie text-center">
                                <div class="chart-theme-1 chart" data-percent="75"><span>75</span>%</div>
                            </div>
                            <h4 class="skill-name">JAVA</h4>
                            <div class="level">Novice</div>
                            <div class="desc">
                                    간단한 컨트롤러 구현 및 코드 분석 가능<br>
                                (OOP를 알면 알수록 조립하는 느낌이 납니다.<br> 마치 제가 좋아하는 프라모델 조립같은.)
                                
                            </div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-12 col-md-4">
                        <div class="item-inner">
                            <div class="chart-easy-pie text-center">
                                <div class="chart-theme-1 chart" data-percent="70"><span>70</span>%</div>
                            </div>
                            <h4 class="skill-name">JavaScript & jQuery</h4>
                            <div class="level">Novice</div>
                            <div class="desc">
                                생성자를 이용한 함수 구현 가능
                            </div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                    <div class="item col-12 col-md-4">
                        <div class="item-inner">
                            <div class="chart-easy-pie text-center">
                                <div class="chart-theme-1 chart" data-percent="60"><span>60</span>%</div>
                            </div>
                            <h4 class="skill-name">Oracle</h4>
                            <div class="level">Novice</div>
                            <div class="desc">
                                Join문, 간단한 서브쿼리 및 함수 구현 가능
                            </div>
                        </div><!--//item-inner-->
                    </div><!--//item-->
                </div><!--//row-->
            </div><!--//top-skills-->
            
            <div class="other-skills">
                <h3 class="subtitle">Other Skills & Tools</h3>
                <div class="misc-skills">
                    <span class="skill-tag">HTML5</span>
                    <span class="skill-tag">CSS3</span>
                    <span class="skill-tag">STS</span>
                    <span class="skill-tag">VS Code</span>
                    <span class="skill-tag">Git(간단한 pull-push)</span>
                    <br>
                    <span class="skill-tag">Sql Developer</span>
                    <span class="skill-tag">English</span>
                </div>
            </div><!--//other-skills-->
            
        </section><!--//skills-section-->
        
        <section id="testimonials-section" class="testimonials-section section">
            <h2 class="section-title"><span style="font-family: 'HangeulNuri-Bold';">Why be developer & Who Am I?</span></h2>
            
            <div id="testimonials-carousel" class="testimonials-carousel carousel slide" data-interval="8000">
                
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#testimonials-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#testimonials-carousel" data-slide-to="1"></li>

                </ol>
                
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item carousel-item active">
                        <blockquote class="quote">      
                            <p style="font-family: 'BMHANNAAir'; font-size:17px;"><span class="icon-holder"><i class="fas fa-quote-left"></i></span>                            
                            어느날 웹개발자 친구가 개발한 사이트를 보고나서, 클라이언트가 원하는 것과 제가 하고 싶은 것을
                        구현할 수 있는 '개발'이라는 것이 정말 매력적으로 다가왔습니다. 교육원에 다니고 나서도 계속적으로 동영상 강의를 듣고 'Do it 시리즈'나 '코드로 배우는
                       스프링 웹 프로젝트' 같은 서적들을 구매하여<span style="font-weight:bold;"> JAVA, JavaScript, Oracle, Spring에 대한 이해와 기술을 지속적으로 쌓아왔습니다.<br>
                    또한 AWS EC2와 RDS 프리티어를 신청하여 웹 상에 개인 사이트를 배포&운영</span>하고있습니다.<br><br>
                <center>- Page 1 -</center></p>
                        </blockquote>    
                        <div class="source">
                            <div class="name"></div>
                            <div class="position"></div>
                        </div><!--//source-->   
                                                       
                    </div><!--//item-->
                    <div class="item carousel-item">
                        <blockquote class="quote">
                            <p style="font-family: 'BMHANNAAir'; font-size:17px;"><span class="icon-holder"><i class="fas fa-quote-left"></i></span> 
                            개발자는 컴퓨터와의 대화만 중요하다고 생각할 수 있지만 결국엔 조직의 한 구성원으로 '사람'과의 소통이 매우 중요하다고 생각합니다.
                            좋은 관계속에 있을 때 좋은 코드도 나올 수 있다고 생각합니다. 이런 마음가짐으로 열정을 가지고 팀 프로젝트를 한 끝에 교육원에서 1위팀을 하고 수료하게 되었습니다.
                           이런 팀 안에서 늦게 출발했음에도 한몫을 할 수 있도록 부단히 노력해왔습니다.<br><br>
                       <center>-Page 2-</center> </p>
                            
                        </blockquote>
                        <div class="source">
                            <div class="name"></div>
                            <div class="position"></div>
                        </div><!--//source-->   
               
                    </div><!--//item-->
                                        
                </div><!--//carousel-inner-->
            </div><!--//testimonials-carousel-->
            
        </section><!--//section-->
        
        
        <section id="portfolio-section" class="portfolio-section section">
            <h2 class="section-title">Portfolio</h2>
            <ul id="filters" class="filters clearfix">
                <li class="type active" data-filter="*">All</li>
                <li class="type" data-filter=".backend">Back-end</li>
                <li class="type" data-filter=".frontend">Front-end</li>
            </ul><!--//filters-->
            <div class="items-wrapper isotope row">
                <div class="item frontend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-1.PNG'/>"/>
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="https://developpr.org/" target="_blank">DevelopPR</a></h3>
                            <div class="meta">JAVA</div>
                            <div class="action"><a href="https://developpr.org/" target="_blank">KH정보교육원<br>팀 프로젝트</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="https://developpr.org/" target="_blank"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item backend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-2.jpg'/>"/>
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Project Lorem Ipsum</a></h3>
                            <div class="meta">Django</div>
                            <div class="action"><a href="#">View on Github</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item backend frontend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-3.jpg'/>/">
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Project Lorem Ipsum</a></h3>
                            <div class="meta">Django/JavaScript</div>
                            <div class="action"><a href="#">View on Github</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item frontend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-4.jpg'/>/">
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Music App</a></h3>
                            <div class="meta">JavaScript</div>
                            <div class="action"><a href="#"></a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item backend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-5.jpg'/>/">
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Board</a></h3>
                            <div class="meta">Java</div>
                            <div class="action"><a href="#">View on Github</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                <div class="item backend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-6.jpg'/>/">
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Project Lorem Ipsum</a></h3>
                            <div class="meta">JavaScript</div>
                            <div class="action"><a href="#">View on Github</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                
                <div class="item frontend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-7.jpg'/>/">
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Project Lorem Ipsum</a></h3>
                            <div class="meta">HTML/AngularJS</div>
                            <div class="action"><a href="#">View on Github</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                
                <div class="item frontend backend col-lg-3 col-6">
                    <div class="item-inner">
                        <figure class="figure">
                            <img class="img-fluid" src="<c:url value='/resources/assets/images/portfolio/portfolio-8.jpg'/>/">
                        </figure>
                        <div class="content text-left">
                            <h3 class="sub-title"><a href="#">Project Lorem Ipsum</a></h3>
                            <div class="meta">Python/AngularJS</div>
                            <div class="action"><a href="#">View on Github</a></div>
                        </div><!--//content-->    
                        <a class="link-mask" href="#"></a>              
                    </div><!--//item-inner-->
                </div><!--//item-->
                
            </div><!--//item-wrapper-->
            
        </section><!--//section-->
        
        <section id="contact-section" class="contact-section section">
            <h2 class="section-title">Get in Touch</h2>
            <div class="intro">
                <img class="profile-image" src="<c:url value='/resources/assets/images/profile-image.jpg'/>/">
                <div class="dialog">
                    <p>코딩이 정말재미있습니다.<br> 끈기와 열정, 성실함을<br> 갖춘 개발자를 찾으신다면<br>
                        바로 여기에 있습니다.
                    </p>
                    <p><strong>I can help with the following:</strong></p>
                    <ul class="list-unstyled service-list">
                        <li><i class="fas fa-check" aria-hidden="true"></i> Web/Back-end development with JAVA</li>
                        <li><i class="fas fa-check" aria-hidden="true"></i> Simple Front-end development</li>
                        
                    </ul>
                    <p>Drop me a line at <a href="mailto:srkks37@gmail.com">srkks37@gmail.com</a> or call me at <a href="tel:01029245310">010-2924-5310</a></p>
                    <ul class="social list-inline">
                        <li class="list-inline-item"><a href="https://www.youtube.com/c/11mydecember" target="_blank"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
                <li class="list-inline-item"><a href="https://www.instagram.com/my_december1211/?hl=ko" target="_blank"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                <li class="list-inline-item"><a href="https://www.facebook.com/srkks37" target="_blank"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                        
                    </ul><!--//social-->
                </div><!--//diaplog-->
            </div><!--//intro-->

        </section><!--//section-->
        
    </div><!--//wrapper-->
    
    <footer class="footer text-center">
        <div class="container">
            <small class="copyright"><a href="http://themes.3rdwavemedia.com/" target="_blank">.</a></small>
        </div><!--//container-->
    </footer>
    
    
    <div id="config-panel" class="config-panel d-none d-lg-block">
        <div class="panel-inner">
            <a id="config-trigger" class="config-trigger config-panel-hide" href="#"><i class="fas fa-cog mx-auto"></i></a>
            <h5 class="panel-title">Choose Colour</h5>
            <ul id="color-options" class="list-unstyled list-inline">
                <li class="theme-1 active list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-1.css'/>" data-chart="#00BCD4" href="#"></a></li>
                <li class="theme-2  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-2.css'/>" data-chart="#03A9F4" href="#"></a></li>
                <li class="theme-3  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-3.css'/>" data-chart="#009688" href="#"></a></li>
                <li class="theme-4  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-4.css'/>" data-chart="#4CAF50" href="#"></a></li>
                <li class="theme-5  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-5.css'/>/" data-chart="#8BC34A" href="#"></a></li>
                <li class="theme-6  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-6.css'/>/" data-chart="#C0CA33" href="#"></a></li>
                <li class="theme-7  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-7.css'/>/" data-chart="#FFC107" href="#"></a></li>
                <li class="theme-8  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-8.css'/>/" data-chart="#FF9800" href="#"></a></li>
                <li class="theme-9  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-9.css'/>/" data-chart="#FF5722" href="#"></a></li>
                <li class="theme-10  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-10.css'/>/" data-chart="#795548" href="#"></a></li>
                <li class="theme-11  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-11.css'/>/" data-chart="#607D8B" href="#"></a></li>
                <li class="theme-12  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-12.css'/>/" data-chart="#673AB7" href="#"></a></li>
                <li class="theme-13  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-13.css'/>/" data-chart="#3F51B5" href="#"></a></li>
                <li class="theme-14  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-14.css'/>/" data-chart="#2196F3" href="#"></a></li>
                <li class="theme-15  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-15.css'/>/" data-chart="#9C27B0" href="#"></a></li>
                <li class="theme-16  list-inline-item"><a data-style="<c:url value='/resources/assets/css/theme-16.css'/>/" data-chart="#E91E63" href="#"></a></li>
            </ul>
            <a id="config-close" class="close" href="#"><i class="fas fa-times-circle"></i></a>
        </div><!--//panel-inner-->
    </div><!--//configure-panel-->
    
    <!-- Javascript -->          
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/jquery-3.3.1.min.js'/>"/></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/popper.min.js'/>/"></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/bootstrap/js/bootstrap.min.js'/>"/></script>  
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/back-to-top.js'/>"/></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js'/>"/></script> 
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/easy-pie-chart/dist/jquery.easypiechart.min.js'/>"/></script>
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/imagesloaded.pkgd.min.js'/>"/></script> 
    <script type="text/javascript" src="<c:url value='/resources/assets/plugins/isotope.pkgd.min.js'/>"/></script>  

    <!-- custom js -->
    <script type="text/javascript" src="<c:url value='/resources/assets/js/main.js'/>"/></script>
    
    <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
    <script src="<c:url value='/resources/assets/js/demo/style-switcher.js'/>"/></script>     
    

</body>
</html> 

