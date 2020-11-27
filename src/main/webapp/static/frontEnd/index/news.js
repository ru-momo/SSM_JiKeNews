$(function () {


    var test = window.location.href;
    var id = test.split("?id=")[1];
    $(".side-bar-card").eq(1).empty();

    $.ajax({
        url: "getNewsInfo",
        type: "post",
        data: {id: id},
        success: function (data) {
            console.log(data);
            var v = data.data;
            var img = v[1].img;
            img = img.split(";");
            var count = 0;

            $(".news-title").text(v[0].title);
            $(".label.label-default").text(v[0].type);
            $(".news-content").empty();

            var content = v[0].content;
            var list = content.split("\n");

            var html = "<blockquote><p></p></blockquote>";
            $(".news-content").append(html);
            $("blockquote > p").text(v[0].introduction);
            for (var i = 0; i < list.length; i++) {
                if (list[i] === "" && img[count] === undefined) {
                    html = "<br>";
                } else if (list[i] === "" && img[count] !== undefined) {
                    html = "<div><img src='" + img[count] + "'</div>";
                    count++;
                } else {
                    html = "<div>" + list[i] + "</div>";
                }
                $(".news-content").append(html);
            }

            var num = Math.floor(Math.random() * 2) + 1
            $.ajax({
                url : "../getListForNav",
                type: "post",
                data:{pageNum:num, type:v[0].type},
                success:function (data) {
                    console.log(data)
                    var va = data.data;
                    var img2 = va[1];
                    $(".list").eq(0).empty();
                    var html = "";

                    $.each(va[0], function (index, value) {
                        html += "<div class=\"item clearfix\">\n" +
                            "                        <div class=\"col-xs-5 no-padding-h\"><img src='"+img2[index].img+"'></div>\n" +
                            "                        <div class=\"col-xs-7\">\n" +
                            "                            <div class=\"title\"><a href='../front/news?id="+value.id+"' target='_blank'>"+value.title+"</a></div>\n" +
                            "                            <div class=\"desc\">25k阅读•35分钟前发布</div>\n" +
                            "                        </div>\n" +
                            "                    </div>";
                    })
                    $(".list").eq(0).append(html);
                }
            })
        }
    })




})



