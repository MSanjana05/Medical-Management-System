<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Medical Management</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
 
  <link href="${pageContext.request.contextPath}/css/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <!-- Main CSS File -->
  <script>
  window.onload = function() {
    var link = document.createElement("link");
    link.href = "<%= request.getContextPath() %>/css/main.css";
      link.rel = "stylesheet";
    document.head.appendChild(link);
  }
</script>
</head>
<body class="index-page">
  <header id="header" class="header sticky-top">
    <div class="topbar d-flex align-items-center">       <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items
        -center">
        </div>
        <div class="social-links d-none d-md-flex align-items-center">
         <b><a class="cta-btn d-none d-sm-block" href="${pageContext.request.contextPath}/login" style="color: darkred;">Admin Portal</a></b>
</div>
      </div>
    </div><!-- End Top Bar -->
    <div class="branding d-flex align-items-center">
      <div class="container position-relative d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center me-auto">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          <!-- <img src="assets/img/logo.png" alt=""> -->
          <h1 class="sitename">GREENSOFTLABS</h1>
        </a>
        <nav id="navmenu" class="navmenu">
          <ul>
            <li><a href="#hero" class="active">Home<br></a></li>
            <li><a href="survey.jsp">Survey</a></li>
            <li><a href="#departments">Departments</a></li>
            <li><a href="#doctors">Doctors</a></li>
            <li><a href="${pageContext.request.contextPath}/FeedbackServlet" id="feedbackLink">Feedback</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
        </nav>
        <a class="cta-btn d-none d-sm-block" href="<%= request.getContextPath() %>/AppointmentServlet">Make an Appointment</a>
      </div>
    </div>
  </header>  
</body>
  <main class="main">
    <!-- Hero Section -->
    <section id="hero" class="hero section light-background">
      <img src="${pageContext.request.contextPath}/css/img/hero-bg.jpg" alt="" data-aos="fade-in">
      <div class="container position-relative">
        <div class="welcome position-relative" data-aos="fade-down" data-aos-delay="100">
          <h2>WELCOME TO GREENSOFTLABS</h2>
          <p>We are team of experienced and highly qualified doctors, specialists, nurses, and support staff who are dedicated to providing exceptional care.</p>
        </div><!-- End Welcome -->
        <div class="content row gy-4">
          <div class="col-lg-4 d-flex align-items-stretch">
            <div class="why-box" data-aos="zoom-out" data-aos-delay="200">
              <h3>Why Choose Greensoftlabs</h3>
              <p>
                we offer a wide range of medical services under one roof, from primary care and specialized treatments to advanced diagnostic procedures and emergency care. Our multidisciplinary approach ensures that all your healthcare needs are met with seamless coordination and expertise.
              </p>
              <div class="text-center">
                <a href="#about" class="more-btn"><span>Learn More</span> <i class="bi bi-chevron-right"></i></a>
              </div>
            </div>
          </div><!-- End Why Box -->
          <div class="col-lg-8 d-flex align-items-stretch">
            <div class="d-flex flex-column justify-content-center">
              <div class="row gy-4">
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box" data-aos="zoom-out" data-aos-delay="300">
                    <i class="bi bi-clipboard-data"></i>
                    <h4>Focus on Safety and Quality</h4>
                    <p>We adhere to the strictest safety standards and protocols to ensure a safe environment for our patients and staff. Our commitment to quality care is reflected in our continuous efforts to improve and innovate in every aspect of healthcare delivery</p>
                  </div>
                </div><!-- End Icon Box -->
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box" data-aos="zoom-out" data-aos-delay="400">
                    <i class="bi bi-gem"></i>
                    <h4>State-of-the-Art Facilities</h4>
                    <p>We are equipped with the latest medical technology and facilities to ensure accurate diagnoses and effective treatments. From advanced imaging equipment to modern surgical suites, our hospital is designed to offer the best in medical care.</p>
                  </div>
                </div><!-- End Icon Box -->
                <div class="col-xl-4 d-flex align-items-stretch">
                  <div class="icon-box" data-aos="zoom-out" data-aos-delay="500">
                    <i class="bi bi-inboxes"></i>
                    <h4>Patient-Centered Approach</h4>
                    <p>we put our patients at the center of everything we do. We believe in a personalized approach to healthcare, where each patient is treated with the utmost respect and attention. </p>
                  </div>
                </div><!-- End Icon Box -->
              </div>
            </div>
          </div>
        </div><!-- End  Content-->
      </div>
    </section><!-- /Hero Section -->
    <!-- About Section -->
    <section id="about" class="about section">

      <div class="container">

        <div class="row gy-4 gx-5">

          <div class="col-lg-6 position-relative align-self-start" data-aos="fade-up" data-aos-delay="200">
            <img src="${pageContext.request.contextPath}/css/img/about.jpg" class="img-fluid" alt="">
          
          </div>

          <div class="col-lg-6 content" data-aos="fade-up" data-aos-delay="100">
            <h3>About Us</h3>
            <p>
              We believe in fostering a healing environment where patients feel safe, supported, and empowered throughout their healthcare journey. Our commitment to quality, safety, and innovation drives us to continuously improve our services and exceed our patient's expectations.
            </p>
            <ul>
              <li>
                <i class="fa-solid fa-vial-circle-check"></i>
                <div>
                  <h5>Our Mission</h5>
                  <p>Our mission is to provide high-quality, compassionate healthcare that enhances the lives of our patients and their families. We are dedicated to excellence in all aspects of our services, ensuring that every patient receives the best possible care with dignity and respect.</p>
                </div>
              </li>
              <li>
                <i class="fa-solid fa-pump-medical"></i>
                <div>
                  <h5>Our Vision</h5>
                  <p>Our vision is to be the leading healthcare provider in our region, known for our commitment to quality, innovation, and patient-centered care. We strive to build a healthier community by offering comprehensive medical services and promoting wellness and preventive care</p>
                </div>
              </li>
              <li>
                <i class="fa-solid fa-heart-circle-xmark"></i>
                <div>
                  <h5>Our Values</h5>
                  <p>Our medical team is committed to ongoing education and staying updated with the latest advancements in medicine to provide the most effective treatments.</p>
                </div>
              </li>
            </ul>
          </div>
        </div>
<!-- brx  
SU -->
      </div>
    </section><!-- /About Section -->
  <!-- Departments Section -->
    <section id="departments" class="departments section">
      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Departments</h2>
        <p>At our healthcare facility, we offer a wide range of specialized medical services designed to cater to the diverse needs of our patients.</p>
      </div><!-- End Section Title -->
      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="row">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link active show" data-bs-toggle="tab" href="#departments-tab-1">Cardiology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#departments-tab-2">Neurology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#departments-tab-3">Hepatology</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#departments-tab-4">Pediatrics</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-bs-toggle="tab" href="#departments-tab-5">Eye Care</a>
              </li>
            </ul>
          </div>
          <div class="col-lg-9 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="departments-tab-1">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Cardiology</h3>
                    <p class="fst-italic">Heart Health Specialists</p>
                    <p>Our team of cardiologists offers a full range of services, including heart screenings, echocardiograms, stress tests, and advanced treatments for heart conditions. We are committed to promoting heart health through preventive care and patient education.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/css/img/departments-1.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="img">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Neurology</h3>
                    <p class="fst-italic">Specialized Care for Neurological Conditions</p>
                    <p>Utilizing advanced diagnostic tools and the latest treatment methods, we aim to provide comprehensive and effective care tailored to each patient's needs.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/css/img/departments-2.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="departments-tab-3">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Hepatology</h3>
                    <p class="fst-italic">Expert Care for Liver Health</p>
                    <p>We offer advanced diagnostic services, including liver biopsies and imaging studies, as well as the latest treatment options to ensure the best outcomes for our patients.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/css/img/departments-3.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="departments-tab-4">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Pediatrics</h3>
                    <p class="fst-italic">Comprehensive Care for Children</p>
                    <p>Our pediatricians are dedicated to addressing the unique healthcare needs of young patients, offering services such as routine check-ups, vaccinations, growth and development assessments, and treatment for a variety of childhood illnesses. We strive to create a nurturing environment where children feel safe and supported.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/css/img/departments-4.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
              <div class="tab-pane" id="departments-tab-5">
                <div class="row">
                  <div class="col-lg-8 details order-2 order-lg-1">
                    <h3>Eyecare</h3>
                    <p class="fst-italic">
                      Advanced Vision and Eye Health Services</p>
                    <p>We also offer a range of corrective vision options, including glasses, contact lenses, and laser eye surgery, to help our patients achieve optimal vision.</p>
                  </div>
                  <div class="col-lg-4 text-center order-1 order-lg-2">
                    <img src="${pageContext.request.contextPath}/css/img/departments-5.jpg" alt="" class="img-fluid">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
     </div>

    </section><!-- /Departments Section -->

    <!-- Doctors Section -->
    <section id="doctors" class="doctors section">
      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Doctors</h2>
        <p>Meet Our Team of Expert Medical Professionals</p>
      </div><!-- End Section Title -->
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
            <div class="team-member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/css/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Walter White</h4>
                <span>Pediatrics</span>
                <p> Dedicated pediatrician with a passion for child health provides expert care for infants, children, and adolescents, focusing on preventive health, immunizations, and managing childhood illnesses in a nurturing and friendly environment.</p>
                <div class="social">
                  
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""> <i class="bi bi-linkedin"></i> </a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
            <div class="team-member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/css/img/doctors/doctors-2.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Sarah Jhonson</h4>
                <span>Ophthalmology</span>
                <p>With expertise in diagnosing and treating a wide range of eye conditions, including cataracts, glaucoma, and macular degeneration,dedicated to helping patients maintain optimal eye health and vision.</p>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""> <i class="bi bi-linkedin"></i> </a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
            <div class="team-member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/css/img/doctors/doctors-3.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>William Anderson</h4>
                <span>Cardiology</span>
                <p>Dedicated to improving heart health through comprehensive care, advanced diagnostics, and cutting-edge treatments.believes in a patient-centered approach, working closely with each patient to develop personalized treatment plans that promote heart health and overall well-being.</p>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi b
                    fi-instagram"></i></a>
                  <a href=""> <i class="bi bi-linkedin"></i> </a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
            <div class="team-member d-flex align-items-start">
              <div class="pic"><img src="${pageContext.request.contextPath}/css/img/doctors/doctors-4.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Amanda Jepson</h4>
                <span>Neurosurgeon</span>
                <p>Specializing in preventive medicine and chronic disease management,works closely with patients to develop personalized health plans that promote overall wellness.</p>
                <div class="social">
                  <a href=""><i class="bi bi-twitter-x"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""> <i class="bi bi-linkedin"></i> </a>
                </div>
              </div>
            </div>
          </div><!-- End Team Member -->

        </div>

      </div>

    </section><!-- /Doctors Section -->
 <!--  -->
    <section id="contact" class="contact section">
      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Contact</h2>
        <p>We are dedicated to providing excellent medical care and customer service.</p>
      </div><!-- End Section Title -->
    
      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4 justify-content-between"> <!-- Added flex utility class -->
          <!-- Location Info -->
          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
            <i class="bi bi-geo-alt flex-shrink-0"></i>
            <div>
              <h3>Location</h3>
              <p>No.29, 8th Cross East, Thillainagar Trichy 620018</p>
            </div>
          </div><!-- End Info Item -->
    
          <!-- Call Us Info -->
          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
            <i class="bi bi-telephone flex-shrink-0"></i>
            <div>
              <h3>Call Us</h3>
              <p>+91 7200047270</p>
            </div>
            
          </div><!-- End Info Item -->
    
          <!-- Email Us Info -->
          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="500">
            <i class="bi bi-envelope flex-shrink-0"></i>
            <div>
              <h3>Email Us</h3>
              <p>greensoftgroups@gmail.com</p>
            </div>
          </div><!-- End Info Item -->
        </div>
      </div>
    </section><!-- /Contact Section -->
    <!-- /Contact Section -->
  </main>
  <footer id="footer" class="footer light-background">
    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.html" class="logo d-flex align-items-center">
            <span class="sitename">Greensoftlabs</span>
          </a>
          <div class="footer-contact pt-3">
            <p>No.29, 8th Cross East, Thillainagar</p>
            <p>Trichy,620018</p>
            <p class="mt-3"><strong>Phone:</strong> <span>+91 7200047270</span></p>
            <p><strong>Email:</strong> <span>greensoftgroups@gmail.com</span></p>
          </div>
          <div class="social-links d-flex mt-4">
            <a href=""><i class="bi bi-twitter-x"></i></a>
            <a href=""><i class="bi bi-facebook"></i></a>
            <a href=""><i class="bi bi-instagram"></i></a>
            <a href=""><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><a href="#hero">Home</a></li>
            <li><a href="#about">About us</a></li>
            <li><a href="#services">Services</a></li>
      
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Patient Services</h4>
          <ul>
            <li><a href="#">Medical Record</a></li>
            <li><a href="#">E Prescription</a></li>
            <li><a href="#">Feedback</a></li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-3 footer-links">
          <h4>Our Doctors</h4>
          <ul>
            <li><a href="#departments">Departments</a></li>
            <li><a href="#doctors">Doctor info</a></li>
            <li><a href="#appointment">Book Appointment</a></li>
          </ul>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <span>Copyright</span> <strong class="px-1 sitename">GreenSoftLabs</strong> <span>All Rights Reserved</span></p>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you've purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
      
      </div>
    </div>
  </footer>
  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
 
  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/css/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/css/vendor/php-email-form/validate.js"></script>
  <script src="${pageContext.request.contextPath}/css/vendor/aos/aos.js"></script>
  <script src="${pageContext.request.contextPath}/css/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="${pageContext.request.contextPath}/css/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="${pageContext.request.contextPath}/css/vendor/swiper/swiper-bundle.min.js"></script>
 <!-- Main JS File -->
  <script src="${pageContext.request.contextPath}/css/main.js"></script>
</body>
</html>