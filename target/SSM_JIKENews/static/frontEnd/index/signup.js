$(function () {
    $("#form").submit(function () {
        var name = $("#name").val();
        var pass = $("#pass").val();
        var ipass = $("#ipass").val();
        if (name === null) {
            alert("账号不能为空");
            return false;
        }
        if (name.length <= 3) {
            alert("账号格式不正确！");
            return false;
        }
        if (pass === null) {
            alert("密码不能为空");
            return false;
        }
        if (pass.length <= 6) {
            console.log(pass.length);
            alert("密码长度不够！");
            return false;
        }
        if (pass !== ipass) {
            alert("两次密码输入不正确");
            return false;
        }
        $.ajax({
            url:"signup",
            type:"post",
            data:{userName:name,password:pass},
            success:function (data) {
                console.log(data)
                if(data.code === 200){
                    window.location.href = "http://localhost:8080/SSM_JIKENews_war_exploded/";
                }else {
                    alert(data.data);
                }
            }
        })
        return false;
    })
})