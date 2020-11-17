

$(function () {

    var pageNum = start();

    /**
     * 导航栏
     */
    $(".nav.navbar-nav > li").click(function () {
        $(".nav.navbar-nav > .active").attr("class"," ")
        $(this).attr("class","active")
        $(".list-group-item.active").attr("class","list-group-item")
        $(".list-group.side-bar.hidden-xs > a:first").attr("class","list-group-item active")
        var pageNum = 1;
        $(".news-list").empty()
        var type = $(this).text()
        if(type === "首页"){
            news("", pageNum)
            hotnews("")
        }else {
            news(type, pageNum)
            hotnews(type)
        }

    })

    /**
     * 侧边导航栏
     */
    $(".list-group.side-bar.hidden-xs > a").click(function () {
        var pageNum = 1;
        $(".news-list").empty()
        $(".list-group-item.active").attr("class","list-group-item")
        $(this).attr("class","list-group-item active")
        var type = $(this).text()
        if (type === "综合"){
            if($(".nav.navbar-nav > .active").text() === "首页"){
                news("", pageNum)
                hotnews("")
            }else {
                type = $(".nav.navbar-nav > .active").text()
                news(type, pageNum)
                hotnews(type)
            }
        }else {
            news(type, pageNum)
            hotnews(type)
        }

    })


    //下拉更新
    $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();    //滚动条距离顶部的高度
        var scrollHeight = $(document).height();   //当前页面的总高度
        var clientHeight = $(this).height();    //当前可视的页面高度
        // console.log("top:"+scrollTop+",doc:"+scrollHeight+",client:"+clientHeight);
        if(scrollTop + clientHeight >= scrollHeight){   //距离顶部+当前高度 >=文档总高度 即代表滑动到底部
            //滚动条到达底部
            pageNum ++
            var type = $(".list-group-item.active").text()
            if (type === "综合") {
                if ($(".nav.navbar-nav > .active").text() === "首页") {
                    news("", pageNum)
                }else {
                    type = $(".nav.navbar-nav > .active").text()
                    news(type, pageNum)
                }
            }else {
                news(type, pageNum)
            }

        }

    });

    //搜一下
    $(".form-control").keypress(function (e) {
        if (e.which === 13) {
            var wd = $(".form-control").val()
            window.open("https://www.baidu.com/s?wd=" + wd)
        }
    });

    //回到顶部TOP按钮
    new Top({dImg:"static/frontEnd/img/up-d.png",th:300, hImg:"static/frontEnd/img/up-h.png"})

})



function news(type, pageNum){
    $.ajax({
        type:"post",
        url:"getListForNav",
        dataType:"json",
        data:{pageNum:pageNum, type:type},
        success:function (data) {
            console.log(data)
            var title = data.data[0]
            var img = data.data[1]
            var html = ""
            $.each(title,function (index,value) {
                html += "<div class=\"news-list-item clearfix\">\n" +
                    "                    <div class=\"col-xs-5\">\n" +
                    "                        <img src=\""+img[index].img+"\">\n" +
                    "                    </div>\n" +
                    "                    <div class=\"col-xs-7\">\n" +
                    "                        <a href=\"front/news\" class=\"title\">"+value.title+"</a>\n" +
                    "                        <div class=\"info\">\n" +
                    "                            <span class=\"avatar\"><img src=\"static/frontEnd/img/logo.png\"></span>\n" +
                    // "                            <span>王花花</span>•\n" +
                    // "                            <span>25k评论</span>•\n" +
                    "                            <span>"+getDateDiff(value.pubdate)+"</span>\n" +
                    "                        </div>\n" +
                    "                    </div>\n" +
                    "                </div>"
            })
            $(".news-list").append(html)
        }
    })
}

function newsImg(pageNum) {
    var imgList = []
    $.ajax({
        async:false,
        type:"post",
        url:"getNewsImgList",
        dataType:"json",
        data:{pageNum:pageNum},
        success:function (data) {
            console.log(data)
            imgList = data.data.rows
        }
    })
    return imgList
}

function hotnews(type) {
    var num = Math.floor(Math.random() * 3) + 1
    $.ajax({
        type:"post",
        url:"getListForNav",
        dataType:"json",
        data:{pageNum:num, type:type},
        success:function (data) {
            var list = $(".card-body > .list")
            list.empty()
            var html = ""
            $.each(data.data[0],function (index, value) {
                html += "<div class=\"item\">\n" +
                    "                            <a class=\"title\" href=\"#\">"+value.title+"</a>\n" +
                    "                            <div class=\"desc\">"+getDateDiff(value.pubdate)+"</div>\n" +
                    "                        </div>"
            })
            list.append(html)
        }
    })
}

function getDateDiff(dateStr) {
    var publishTime = getDateTimeStamp(dateStr) / 1000,
        d_seconds,
        d_minutes,
        d_hours,
        d_days,
        timeNow = parseInt(new Date().getTime() / 1000),
        d,

        date = new Date(publishTime * 1000),
        Y = date.getFullYear(),
        M = date.getMonth() + 1,
        D = date.getDate(),
        H = date.getHours(),
        m = date.getMinutes(),
        s = date.getSeconds();
    //小于10的在前面补0
    if (M < 10) {
        M = '0' + M;
    }
    if (D < 10) {
        D = '0' + D;
    }
    if (H < 10) {
        H = '0' + H;
    }
    if (m < 10) {
        m = '0' + m;
    }
    if (s < 10) {
        s = '0' + s;
    }

    d = timeNow - publishTime;
    d_days = parseInt(d / 86400);
    d_hours = parseInt(d / 3600);
    d_minutes = parseInt(d / 60);
    d_seconds = parseInt(d);

    if (d_days > 0 && d_days < 3) {
        return d_days + '天前';
    } else if (d_days <= 0 && d_hours > 0) {
        return d_hours + '小时前';
    } else if (d_hours <= 0 && d_minutes > 0) {
        return d_minutes + '分钟前';
    } else if (d_seconds < 60) {
        if (d_seconds <= 0) {
            return '刚刚';
        } else {
            return d_seconds + '秒前';
        }
    } else if (d_days >= 3 && d_days < 30) {
        return M + '-' + D + ' ' + H + ':' + m;
    } else if (d_days >= 30) {
        return Y + '-' + M + '-' + D + ' ' + H + ':' + m;
    }
}

function getDateTimeStamp(dateStr) {
    // 如果时间格式为2020/07/09 21:43:19.000  需要去掉.000 不然ios和firefox会有问题
    return Date.parse(dateStr.replace(/-/gi, "/"));
}　

function start() {
    var pageNum = 1
    $(".news-list").empty()
    news("", pageNum)
    hotnews("")
    return pageNum
}


