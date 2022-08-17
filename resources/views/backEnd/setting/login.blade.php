<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin Login :: Login</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('backEnd/')}}/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{asset('backEnd/')}}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('backEnd/')}}/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>



<body class="hold-transition login-page">
    
<div class="login-box">
  <div class="login-logo">
      <img src="https://zuri.express/uploads/logo/zuri-logo-removebg-preview.png" alt="www.zuri.express" style="width:250px;height:75px;"><br>
    <a href="{{url('https://zuri.express/login')}}" target="_blank"><h1 style="font-size:150%;">Admin Login</h1></a>
  </div>
  
  
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg"><b>Please Enter Your Login Details</b></p>

      <form action="{{url('login')}}" method="post">
        @csrf
        <div class="input-group mb-3">
          <input type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
          @if ($errors->has('email'))
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" value="{{ old('password') }}"  name="password" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          
          <!-- /.col -->
          <div class="col-4">
            <button onclick="move()" type="submit" class="button" style="vertical-align:middle"><span>Login </span></button>
            
 
            
          </div>

          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
    
        <!--Prgresss Bar--------------------------------------------------------------------------------------->    
         <div id="myProgress">
          <div id="myBar">10%</div>
        </div>
     
    
  </div>
  

  <button class="btn btn-success" onclick=" window.open('https://zuri.express/merchant/login','_blank')">Merchant</button>
  <button class="btn btn-success" onclick=" window.open('https://zuri.express/deliveryman/login','_blank')">Deliveryman</button>
  <button class="btn btn-success" onclick=" window.open('https://zuri.express/agent/login')"> &nbsp;Agent&nbsp; </button>
  <button class="btn btn-success" onclick=" window.open('https://zuri.express/webmail','_blank')"> _Mail_ &nbsp;</button>




</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{asset('backEnd/')}}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('backEnd/')}}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>









<!-- Green Button-me-->
<head>
<style>
.button {
  display: inline-block;
  border-radius: 12px;
  background-color: #125c2f;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 23px;
  padding: 4px;
  width: 93px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 5;
  right: 0;
}
</style>
</head>

</body>
</html>












<!--------------------------------Progress Bar------------------------------->


<!DOCTYPE html>
<html>
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 10%;
  height: 30px;
  background-color: #125c2f;
  text-align: center;
  line-height: 30px;
  color: white;
}
</style>
<body>

<!--<h1>JavaScript Progress Bar</h1> -->





<br>

<!-- <button onclick="move()">Click Me</button> -->

<script>
var i = 0;
function move() {
  if (i == 0) {
    i = 1;
    var elem = document.getElementById("myBar");
    var width = 10;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
        elem.innerHTML = width  + "%";
      }
    }
  }
}
</script>

</body>
</html>







<!--Social Media Link-->

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {margin:0;height:2000px;}

.icon-bar {
  position: fixed;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}

.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
  background-color: #125c2f;
}

.facebook {
  background: #3B5998;
  color: white;
}

.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.linkedin {
  background: #007bb5;
  color: white;
}

.youtube {
  background: #bb0000;
  color: white;
}

.content {
  margin-left: 75px;
  font-size: 30px;
}
</style>
<body>

<div class="icon-bar">
  <a href="#" class="facebook"><i class="fa fa-facebook"></i></a> 
  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
  <a href="#" class="google"><i class="fa fa-google"></i></a> 
  <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
  <a href="#" class="youtube"><i class="fa fa-youtube"></i></a> 
</div>

<div class="content">
  <!--<h3>Sticky Social Bar</h3>-->
 

</body>
</html> 


