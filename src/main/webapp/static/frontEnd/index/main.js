$(function () {

    var pageindex = 0;

    $(".list-group.side-bar.hidden-xs > a").click(function () {
        $(".col-sm-7").empty()
        $(".list-group-item.active").attr("class","list-group-item")
        $(this).attr("class","list-group-item active")

        $.ajax({
            type:"post",
            url:"getNewsList",
            dataType:"json",
            data:{pageindex:1},
            success:function (data) {
                console.log(data)
            }
        })
    })





    // $(window).scroll(function () {
    //     var srollPos = $(window).scrollTop()+0.5;    //滚动条距顶部距离(页面超出窗口的高度)
    //     if (srollPos>=($(document).height()-$(window).height())) {
    //         pageindex++;
    //         Search(pageindex);
    //     }
    // });
    //
    // function Search(pageindex) {
    //     console.log(pageindex)
    // }
})