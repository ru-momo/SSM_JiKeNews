

$(function () {

    var pageNum = start();
    $(".list-group.side-bar.hidden-xs > a").click(function () {
        var pageNum = 1;
        $(".news-list").empty()
        $(".list-group-item.active").attr("class","list-group-item")
        $(this).attr("class","list-group-item active")
        var imgList = newsImg(pageNum)
        news(pageNum, imgList)
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
            var imgList = newsImg(pageNum)
            news(pageNum, imgList)
        }

    });

    //搜一下
    $(".form-control").keypress(function (e) {
        if (e.which === 13) {
            var wd = $(".form-control").val()
            window.open("https://www.baidu.com/s?wd=" + wd)
        }
    });

})



function news(pageNum, imgList){
    $.ajax({
        type:"post",
        url:"getNewsList",
        dataType:"json",
        data:{pageNum:pageNum},
        success:function (data) {
            console.log(data)
            var html = ""
            $.each(data.data.rows,function (index,value) {
                html += "<div class=\"news-list-item clearfix\">\n" +
                    "                    <div class=\"col-xs-5\">\n" +
                    "                        <img src=\""+imgList[index].img+"\">\n" +
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

function hotnews() {
    var num = Math.floor(Math.random() * 10) + 1
    $.ajax({
        type:"post",
        url:"getNewsList",
        dataType:"json",
        data:{pageNum:num},
        success:function (data) {
            var list = $(".card-body > .list")
            list.empty()
            var html = ""
            $.each(data.data.rows,function (index, value) {
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
    var imgList = newsImg(pageNum)
    news(pageNum, imgList)
    hotnews()
    return pageNum
}


