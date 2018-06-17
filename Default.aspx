﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>GreenSock: TimelineMax In Action</title>
 
<link href="js/jquery/css/ui-lightness/jquery-ui-1.9.1.custom.css" rel="stylesheet" type="text/css">
<style>
body {
    background-color: #000;
    color:#fff;
}
#demo {
    width: 692px;
    height: 100px;
    background-color: #333;
    padding: 8px;
}
#demoBackground {
    position: relative;
    background-color: #000;
    overflow: hidden;
    width: 692px;
    height: 100px;
    visibility:hidden;
}
#logo {
    position: absolute;
    background: url(img/logo_black.jpg) no-repeat;
    height: 60px;
    width: 60px;
    top: 6px;
}
.sliderHolder{
    margin-top:16px;
    float:left;
    width:280px;
     
}
.sliderHolder p{
    margin:0px;
    font-size:14px;
}
.slider {
    width: 270px;
    margin: 4px 0px 8px 6px;    
}
#txtContainer {
    position: absolute;
    left: 55px;
    top: 14px;
}
.txt {
    font: 36px monospace;
    position: absolute;
    color: #afafaf;
    font-weight: bold;
    left: 0px;
    top: 0;
}
</style>
</head>
 
<body>
<div id="demo">
  <div id="demoBackground">
    <div id="logo"></div>
    <div id="txtContainer"></div>
  </div>
</div>
 
<div class="sliderHolder">
  <p class="output">progress(): <span id="progressValue"></span><span  style="float:right;">time(): <span id="timeValue"></span></span></p>
  <div id="progressSlider" class="slider"></div>
</div>
 
<div class="sliderHolder" style="margin-left:80px;">
  <p class="output">totalProgress(): <span id="totalProgressValue"></span><span style="float:right;">totalTime(): <span id="totalTimeValue"></span></span></p>
  <div id="totalProgressSlider" class="slider"></div>
</div>
 
<input type="button" id="restartBtn" style="margin:30px;" value="restart()">    
 
<script type="text/javascript" src="js/greensock/TweenMax.min.js"></script>
<!-- scripts for jQuery UI slider component -->
<script src="js/jquery/jquery-1.8.2.js"></script>
<script src="js/jquery/jquery-ui-1.9.1.custom.min.js"></script>
<!-- script for making jQuery UI components respond to touch input -->
<script src="js/jquery/jquery.ui.touch-punch.js"></script>
 
<script>
 
$(window).load(function() {
    var logo = $("#logo"),
        progressValue = $("#progressValue"),
        totalProgressValue = $("#totalProgressValue"),
        timeValue = $("#timeValue"),
        totalTimeValue = $("#totalTimeValue"),
        restartBtn = $("#restartBtn"),
        txtContainer = $("#txtContainer"),
        tl, 
        progressSlider, 
        totalProgressSlider, 
        txt;
     
        /* config sliders */
     
        progressSlider = $("#progressSlider").slider({
            range: false,
            min: 0,
            max: 100,
            step:.1,
            slide: function ( event, ui ) {
                tl.pause();
                tl.progress( ui.value/100 );
            }
        });
         
        totalProgressSlider = $("#totalProgressSlider").slider({
            range: false,
            min: 0,
            max: 100,
            step:.1,
            slide: function ( event, ui ) {
                tl.totalProgress( ui.value/100 ).pause();
            }
        });        
         
     
      
     /* build DOM elements*/
      
    function splitText(phrase) {
        var prevLetter, sentence,
            sentence = phrase.split("");
        $.each(sentence, function(index, val) {
            if(val === " "){
                val = "&nbsp;";
            }
            var letter = $("<div/>", {
                        id : "txt" + index
            }).addClass('txt').html(val).appendTo(txtContainer);
     
            if(prevLetter) {
                $(letter).css("left", ($(prevLetter).position().left + $(letter).width()) + "px");
            };
            prevLetter = letter;
        });
        txt = $(".txt");
    }
       
    function buildTimeline() {
         
        //note this timeline uses 3D transforms which will only work in recent versions of Safari, Chrome, and FireFox. IE10 will support 3D transforms as well. All other browsers simply will not show those properties being tweened. 
         
        TweenLite.set(txtContainer, {perspective:500});
         
        tl = new TimelineMax({onUpdate:updateUI, repeat:2, repeatDelay:1, yoyo:true});
        tl.from(logo, 0.5, {left:'-=60px', ease:Back.easeOut});    
        tl.staggerFrom(txt, 0.4, {alpha:0}, 0.06, "textEffect");
        tl.staggerFrom(txt, 0.8, {rotationY:"-270deg", top:80, transformOrigin: "50% 50% -80"}, ease:Back.easeOut, 0.06, "textEffect");
        tl.staggerTo(txt, 0.6, {rotationX:"360deg", color:"#90e500", transformOrigin:"50% 50% 10"}, 0.02);    
    } 
      
    /* callbacks */
     
    function updateUI() {
        //change slider value
        progressSlider.slider("value", tl.progress() *100);
        totalProgressSlider.slider("value", tl.totalProgress() *100);
         
        //update display of values
        progressValue.html(tl.progress().toFixed(2));
        totalProgressValue.html(tl.totalProgress().toFixed(2));
        timeValue.html(tl.time().toFixed(2));
        totalTimeValue.html(tl.totalTime().toFixed(2));
    }                   
               
    restartBtn.click(function() {
        //Start playing from a progress of 0.
        tl.restart();
    });
     
    function init() {
        splitText("We Hope You Enjoyed the Tour");
        buildTimeline();
        //show the demoBackground div after DOM is ready and all images loaded
        TweenLite.set($("#demoBackground"), {visibility:"visible"});
    }
        
    init();
});
 
</script>
</body>
</html>