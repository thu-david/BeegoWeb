<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>登录页</title>
    <link
      href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.2.2/css/bootstrap.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <div id="login-form">
      <div class="mb-3">
        <label for="usernameInput" class="form-label">用户名</label>
        <input
          type="text"
          name="username"
          class="form-control"
          id="usernameInput"
        />
      </div>
      <div class="mb-3">
        <label for="passwordInput" class="form-label">密码</label>
        <input
          type="password"
          name="password"
          class="form-control"
          id="passwordInput"
        />
      </div>
      <button type="submit" id="submit" class="btn btn-primary">提交</button>
    </div>

    <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.2.2/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.1/jquery.js"></script>
    <script type="text/javascript">
      $(function (){
        $('#submit').click(function(){
            var username = $('#usernameInput').val()
            var password = $('#passwordInput').val()

            $.ajax({
                url: '/admin/login',
                type: 'post',
                xhrFields: {
                    withCredentials: false
                },
                data: {
                    username: username,
                    password: password
                },
                success: function (response){
                    alert("登录成功")
                },
                error: function (){
                    alert("登录失败")
                }
            })
        })
      });
    </script>
  </body>
</html>