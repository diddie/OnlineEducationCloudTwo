function pokaji() {

    if (window.innerWidth > 600) {
        $("#pole").toggle("slow");
    } else {
        $("#pole").slideToggle("slow");
    }


    if (window.innerWidth > 600) {
        $("#main").toggleClass('isOut')
        isOut = $("#main").hasClass('isOut')
        $("#main").animate({
            marginLeft: isOut ? '270px' : '0'
        }, 200)
    }
}



