<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Job Seeker Portal</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link href="{{ asset("bower_components/AdminLTE/bootstrap/css/bootstrap.min.css") }}" rel="stylesheet" type="text/css" />

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

  <!-- Theme style -->
   <link href="{{ asset("bower_components/AdminLTE/dist/css/AdminLTE.min.css")}}" rel="stylesheet" type="text/css" />

   <link href="{{ asset("/bower_components/AdminLTE/dist/css/AdminLTE.css")}}" rel="stylesheet" type="text/css" />

  <!-- iCheck -->
  <link href="{{ asset("bower_components/AdminLTE/plugins/iCheck/square/blue.css")}}" rel="stylesheet" type="text/css" />
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect.
  -->
   
  

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <![endif]-->
</head>
<body class="hold-transition register-page">
<div class="register-box">
  
  <!--center><img src="{{ asset("/bower_components/AdminLTE/dist/img/logo.png") }}" class="img-circle" width="80px" height="80px"></center-->
  <div class="register-logo">

          
    <a href="/"><b>Job Seekers Portal</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="register-box-body">
    <p class="register-box-msg">Register Here</p>

    @if ($message = Session::get('success'))

    <div class="alert alert-success alert-block">

    <button type="button" class="close" data-dismiss="alert">×</button> 

        <strong>{{ $message }}</strong>

   </div>

@endif
@if ($message = Session::get('error'))

<div class="alert alert-danger alert-block">

  <button type="button" class="close" data-dismiss="alert">×</button> 

        <strong>{{ $message }}</strong>

</div>

@endif

    <form action="{{ route('register') }}" method="post">
      @csrf
      <div class="form-group has-feedback">
        <input type="text" name="username" value="{{ old('username') }}"class="form-control"  placeholder="Username">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
         @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
      </div>
      <div class="form-group has-feedback">
        <input type="email"  name="email" value="{{ old('email') }}" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
         @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
      </div>
       <div class="form-group has-feedback">
        <input type="text"  name="firstname" value="{{ old('firstname') }}" class="form-control" placeholder="First name">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
         @error('firstname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
      </div>
       <div class="form-group has-feedback">
        <input type="text"  name="lastname" value="{{ old('lastname') }}" class="form-control" placeholder="Last name">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
         @error('lastname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" name="password" value="{{ old('password') }}" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        @error('lastname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password_confirmation" class="form-control" placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <select type="password" class="form-control" name="role" value="{{ old('role') }}" placeholder="Employeer/Employee">
            <option value="none">Please Select Account</option>
                                        <option value="employeer">Employeer</option>
                                        <option value="user">Employee</option>
                                    </select>
        
        @error('role')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> I agree to the <a href="#">terms</a>
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
        Google+</a>
    </div>

    <a href="{{ route('login') }}" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<script src="{{ asset("/bower_components/AdminLTE/plugins/jQuery/jquery-2.2.3.min.js")}}"></script>

<!-- Bootstrap 3.3.6 -->
<script src="{{ asset("/bower_components/AdminLTE/bootstrap/js/bootstrap.min.js")}}"></script>
<!-- iCheck -->
<script src="{{ asset("/bower_components/AdminLTE/plugins/iCheck/icheck.min.js")}}"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
