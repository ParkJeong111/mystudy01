<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<head>
	<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"> <!-- 추가 폰트 Poppins -->
	<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet"><!--  메인 폰트  Do Hyeon -->
	
<style>
.pieBackground {
    background-color: rgba(240, 240, 240, 1);
    position: absolute;
    width: 20em;
    height: 20em;
    border-radius: 20em;
    box-shadow: -1px 1px 3px #000;
}

.container {
    width: 100%;
    background: #f2f2f2;
    border-radius: 4em;
    border: 0.5em solid rgba(80, 58, 13, 1);
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    box-shadow: inset 0 0 3em #333, 0 0 3em #333;
}

.pieContainer {
    width: 20em;
    height: 20em;
    position: relative;
    transform: rotate(0deg);
    font-size: 1.25em;
}
.pie {
    box-shadow: inset 0 0 1em #000;
    border: solid .1em #FFF;
    position: absolute;
    width: 20em;
    height: 20em;
    border-radius: 20em;
    clip: rect(0px, 10em, 10em, 0px);
    z-index: 30;
}
.hold {
    position: absolute;
    clip: rect(0, 20em, 20em, 10em);
    width: 20em;
    height: 20em;
    border-radius: 20em;
    z-index: 20;
}

.num {
    position: absolute;
    top: 0.4em;
    color: rgba(255, 255, 255, 1);
    z-index: 40;
    left: 10.28em;
    text-align: center;
    font-family: "Times New Roman", Times, serif;
    font-weight: 700;
}

.redbg {
    background: #a90329;
 /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjYTkwMzI5IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNDQlIiBzdG9wLWNvbG9yPSIjOGYwMjIyIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzZkMDAxOSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
    background: -moz-linear-gradient(-45deg,  #a90329 0%, #8f0222 44%, #6d0019 100%);
 /* FF3.6+ */
    background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#a90329), color-stop(44%,#8f0222), color-stop(100%,#6d0019));
 /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(-45deg,  #a90329 0%,#8f0222 44%,#6d0019 100%);
 /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(-45deg,  #a90329 0%,#8f0222 44%,#6d0019 100%);
 /* Opera 11.10+ */
    background: -ms-linear-gradient(-45deg,  #a90329 0%,#8f0222 44%,#6d0019 100%);
 /* IE10+ */
    background: linear-gradient(135deg,  #a90329 0%,#8f0222 44%,#6d0019 100%);
 /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#a90329', endColorstr='#6d0019',GradientType=1 );
 /* IE6-8 fallback on horizontal gradient */;
}

.greybg {
    background: #7d7e7d;
 /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPHJhZGlhbEdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgY3g9IjUwJSIgY3k9IjUwJSIgcj0iNzUlIj4KICAgIDxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiM3ZDdlN2QiIHN0b3Atb3BhY2l0eT0iMSIvPgogICAgPHN0b3Agb2Zmc2V0PSI3MCUiIHN0b3AtY29sb3I9IiMwMDAwMDAiIHN0b3Atb3BhY2l0eT0iMSIvPgogICAgPHN0b3Agb2Zmc2V0PSIxMDAlIiBzdG9wLWNvbG9yPSIjMGUwZTBlIiBzdG9wLW9wYWNpdHk9IjEiLz4KICA8L3JhZGlhbEdyYWRpZW50PgogIDxyZWN0IHg9Ii01MCIgeT0iLTUwIiB3aWR0aD0iMTAxIiBoZWlnaHQ9IjEwMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
    background: -moz-radial-gradient(center, ellipse cover,  #7d7e7d 0%, #000000 70%, #0e0e0e 100%);
 /* FF3.6+ */
    background: -webkit-gradient(radial, center center, 0px, center center, 100%, color-stop(0%,#7d7e7d), color-stop(70%,#000000), color-stop(100%,#0e0e0e));
 /* Chrome,Safari4+ */
    background: -webkit-radial-gradient(center, ellipse cover,  #7d7e7d 0%,#000000 70%,#0e0e0e 100%);
 /* Chrome10+,Safari5.1+ */
    background: -o-radial-gradient(center, ellipse cover,  #7d7e7d 0%,#000000 70%,#0e0e0e 100%);
 /* Opera 12+ */
    background: -ms-radial-gradient(center, ellipse cover,  #7d7e7d 0%,#000000 70%,#0e0e0e 100%);
 /* IE10+ */
    background: radial-gradient(ellipse at center,  #7d7e7d 0%,#000000 70%,#0e0e0e 100%);
 /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7d7e7d', endColorstr='#0e0e0e',GradientType=1 );
 /* IE6-8 fallback on horizontal gradient */;
}

.grey2bg {
background: #45484d; /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjNDU0ODRkIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzAwMDAwMCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
background: -moz-linear-gradient(-45deg,  #45484d 0%, #000000 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#45484d), color-stop(100%,#000000)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(-45deg,  #45484d 0%,#000000 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(-45deg,  #45484d 0%,#000000 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(-45deg,  #45484d 0%,#000000 100%); /* IE10+ */
background: linear-gradient(135deg,  #45484d 0%,#000000 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#45484d', endColorstr='#000000',GradientType=1 ); /* IE6-8 fallback on horizontal gradient */

}

.greenbg {
    background: #bfd255;
 /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjYmZkMjU1IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTAlIiBzdG9wLWNvbG9yPSIjOGViOTJhIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjNzJhYTAwIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzllY2IyZCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
    background: -moz-linear-gradient(-45deg,  #bfd255 0%, #8eb92a 50%, #72aa00 51%, #9ecb2d 100%);
 /* FF3.6+ */
    background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#bfd255), color-stop(50%,#8eb92a), color-stop(51%,#72aa00), color-stop(100%,#9ecb2d));
 /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(-45deg,  #bfd255 0%,#8eb92a 50%,#72aa00 51%,#9ecb2d 100%);
 /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(-45deg,  #bfd255 0%,#8eb92a 50%,#72aa00 51%,#9ecb2d 100%);
 /* Opera 11.10+ */
    background: -ms-linear-gradient(-45deg,  #bfd255 0%,#8eb92a 50%,#72aa00 51%,#9ecb2d 100%);
 /* IE10+ */
    background: linear-gradient(135deg,  #bfd255 0%,#8eb92a 50%,#72aa00 51%,#9ecb2d 100%);
 /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#bfd255', endColorstr='#9ecb2d',GradientType=1 );
 /* IE6-8 fallback on horizontal gradient */;
}

.silverbg {
    background: #e2e2e2;
 /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjZTJlMmUyIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTAlIiBzdG9wLWNvbG9yPSIjZGJkYmRiIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjZDFkMWQxIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2ZlZmVmZSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
    background: -moz-linear-gradient(-45deg,  #e2e2e2 0%, #dbdbdb 50%, #d1d1d1 51%, #fefefe 100%);
 /* FF3.6+ */
    background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#e2e2e2), color-stop(50%,#dbdbdb), color-stop(51%,#d1d1d1), color-stop(100%,#fefefe));
 /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(-45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(-45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* Opera 11.10+ */
    background: -ms-linear-gradient(-45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* IE10+ */
    background: linear-gradient(135deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2e2e2', endColorstr='#fefefe',GradientType=1 );
 /* IE6-8 fallback on horizontal gradient */;
}

.platebg {
    position: absolute;
    z-index: 50;
    background: rgba(51, 29, 1, 1);
    width: 19em;
    height: 19em;
    border-radius: 19em;
    left: 3em;
    top: 3em;
    box-shadow: inset 0 0 1em rgba(0, 0, 0, 1);
}

.platetop {
    position: absolute;
    background: none repeat scroll 0% 0% rgba(237, 217, 167, 1);
    width: 15em;
    height: 15em;
    z-index: 60;
    border-radius: 15em;
    left: 5em;
    top: 5em;
    box-shadow: 0px 0px 0.6em rgba(0, 0, 0, 0.3), -1.5em -1.5em 4em rgba(90, 71, 17, 1) inset;
}

.spinner {

    float: left;
    position: relative;
    background-color: #F85959;
    height: 25em;
    width: 25em;
    border-radius: 25em;
    border: solid 2em rgba(41, 25, 6, 1);
    box-shadow: 0 0 1em rgba(42, 40, 40, 1);
    font-size: 1em;
}

.ball {
    position: absolute;
    position: absolute;
    z-index: 80;
    width: 2em;
    height: 18.5em;
    left: 11.5em;
    top: 3.2em;
    transform: rotate(360deg);
}

.ball span {
    display: block;
    background-color: rgba(255, 255, 255, 1);
    border-radius: 50%;
    width: 1.5em;
    height: 1.5em;
    margin: auto;
    box-shadow: inset -.5em -.5em 1em rgba(183, 183, 183, 1),0 0 2em #000;
}
.topnodebox {
    position: absolute;
    left: 9.9em;
    top: 9.9em;
    z-index: 150;
}

.topnode {
    position: relative;
    width: 5em;
    height: 5em;
    z-index: 100;
    border-radius: 10em;
    border: 0.1em solid #A8A8A8;
    box-shadow: 0px 0px 2em rgba(0, 0, 0, 0.5);
}

.topnodebox span {
    position: absolute;
    z-index: 90;
    border-radius: .5em;
    border: solid .1em rgba(168, 168, 168, 1);
    box-shadow: 0 0 2em rgba(0, 0, 0, .5);
}

.top {
    height: 5em;
    width: 1em;
    left: 2em;
    top: -4em;
}

.right {
    height: 1em;
    width: 5em;
    top: 2em;
    left: 4em;
}

.down {
    height: 5em;
    width: 1em;
    left: 2em;
    top: 4em;
}

.left {
    height: 1em;
    width: 5em;
    top: 2em;
    left: -4em;
}

.silvernode {
    width: 2em;
    height: 2em;
    position: absolute;
    z-index: 110;
    border-radius: 2em;
    left: 1.5em;
    top: 1.5em;
    border: solid .1em rgba(189, 189, 189, 1);
    box-shadow: 0 0 1em rgba(0, 0, 0, .5);
    background: #e2e2e2;
 /* Old browsers */
/* IE9 SVG, needs conditional override of 'filter' to 'none' */
    background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMTAwJSIgeDI9IjEwMCUiIHkyPSIwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjZTJlMmUyIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTAlIiBzdG9wLWNvbG9yPSIjZGJkYmRiIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjZDFkMWQxIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2ZlZmVmZSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
    background: -moz-linear-gradient(45deg,  #e2e2e2 0%, #dbdbdb 50%, #d1d1d1 51%, #fefefe 100%);
 /* FF3.6+ */
    background: -webkit-gradient(linear, left bottom, right top, color-stop(0%,#e2e2e2), color-stop(50%,#dbdbdb), color-stop(51%,#d1d1d1), color-stop(100%,#fefefe));
 /* Chrome,Safari4+ */
    background: -webkit-linear-gradient(45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* Chrome10+,Safari5.1+ */
    background: -o-linear-gradient(45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* Opera 11.10+ */
    background: -ms-linear-gradient(45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* IE10+ */
    background: linear-gradient(45deg,  #e2e2e2 0%,#dbdbdb 50%,#d1d1d1 51%,#fefefe 100%);
 /* W3C */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e2e2e2', endColorstr='#fefefe',GradientType=1 );
 /* IE6-8 fallback on horizontal gradient */;
}
.gamebutton {
width: 5em;
height: 3em;
background: none repeat scroll 0% 0% rgba(93, 65, 23, 1);
color: #fff;
text-align: center;
cursor: pointer;
line-height: 3em;
border-radius: 1em;
margin: .2em;
float: left;
box-shadow: 0 0 1em #333;
border-bottom: solid .1em rgba(0, 0, 0, 1);
}

.gamebutton:hover, .gamebutton:active{
box-shadow: inset 0 0 .5em #333;
border-bottom: none;
}

.backgr { 
max-width: 1400px; 
max-height: 1400px; 
left: 0; 
right: 0; 
top: 0; 
bottom: 0; 
margin: auto; 
overflow: auto; 
position: fixed; 
}
body{font-family: Do Hyeon}

</style>

<div class="spinner">
		<div class="ball"><span></span></div>
		<div class="platebg"></div>
		<div class="platetop"></div>
		<div id="toppart" class="topnodebox">
			<div class="silvernode"></div>
			<div class="topnode silverbg"></div>
			<span class="top silverbg"></span>
			<span class="right silverbg"></span>
			<span class="down silverbg"></span>
			<span class="left silverbg"></span>
		</div>
		<div id="rcircle" class="pieContainer">
			<div class="pieBackground"></div>
		</div>
		<div id="btnSpin" class="gamebutton">Spin</div>
	</div>
	</div>
	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src='${pageContext.request.contextPath}/resources/js/jquery.keyframes.min_.js'></script>
<script>
$('#btnSpin').click

var rotationsTime = 8;
var wheelSpinTime = 6;
var ballSpinTime = 5;
var numorder = [0, 32, 15, 19, 4, 21, 2, 25, 17, 34, 6, 27, 13, 36, 11, 30, 8, 23, 10, 5, 24, 16, 33, 1, 20, 14, 31, 9, 22, 18, 29, 7, 28, 12, 35, 3, 26];
var numred = [32, 19, 21, 25, 34, 27, 36, 30, 23, 5, 16, 1, 14, 9, 18, 7, 12, 3];
var numblack = [15, 4, 2, 17, 6, 13, 11, 8, 10, 24, 33, 20, 31, 22, 29, 28, 35, 26];
var numgreen = [0];
var numbg = $('.pieContainer');
var ballbg = $('.ball');
var btnSpin = $('#btnSpin');
var toppart = $("#toppart");
var pfx = $.keyframe.getVendorPrefix();
var transform = pfx + 'transform';
var rinner = $("#rcircle");
var numberLoc = [];

createWheel();
function createWheel() {
    var temparc = 360 / numorder.length;
    for (var i = 0; i < numorder.length; i++) {


        numberLoc[numorder[i]] = [];
        numberLoc[numorder[i]][0] = i * temparc;
        numberLoc[numorder[i]][1] = (i * temparc) + temparc;

        newSlice = document.createElement("div");
        $(newSlice).addClass("hold");
        newHold = document.createElement("div");
        $(newHold).addClass("pie");
        newNumber = document.createElement("div");
        $(newNumber).addClass("num");

        newNumber.innerHTML = numorder[i];
        $(newSlice).attr('id', 'rSlice' + i);
        $(newSlice).css('transform', 'rotate(' + numberLoc[numorder[i]][0] + 'deg)');
        
        $(newHold).css('transform', 'rotate(9.73deg)');
        $(newHold).css('-webkit-transform', 'rotate(9.73deg)');

        if ($.inArray(numorder[i], numgreen) > -1) {
            $(newHold).addClass("greenbg");
        } else if ($.inArray(numorder[i], numred) > -1) {
            $(newHold).addClass("redbg");
        } else if ($.inArray(numorder[i], numblack) > -1) {
            $(newHold).addClass("greybg");
        }

        $(newNumber).appendTo(newSlice);
        $(newHold).appendTo(newSlice);
        $(newSlice).appendTo(rinner);
    }
    //console.log(numberLoc);

}

btnSpin.click(function() {
	var result = Math.floor(Math.random() * 36) + 1;
    if($( "input" ).val()==""){
      var rndNum = Math.floor((Math.random() * 34) + 0);
    }else{
      var rndNum = result;
      
    }
    
    
	setInterval(() => {
		var point = result * 10;
		alert("당첨된포인트 값은 "+point+" 입니다. 확인 시 메인화면으로 이동합니다.");
		location.href = 'gameresult?res='+point;
		window.close();
	}, 9000);
    
    winningNum = rndNum;
    spinTo(winningNum);

});

$("#btnb").click(function(){
  $(".spinner").css("font-size","+=.3em");
});
$("#btns").click(function(){
  $(".spinner").css("font-size","-=.3em");
});

function resetAni() {

    animationPlayState = "animation-play-state";
    playStateRunning = "running";

    $(ballbg).css(pfx + animationPlayState, playStateRunning).css(pfx + "animation", "none");

    $(numbg).css(pfx + animationPlayState, playStateRunning).css(pfx + "animation", "none");
    $(toppart).css(pfx + animationPlayState, playStateRunning).css(pfx + "animation", "none");

    $("#rotate2").html("");
    $("#rotate").html("");

}

function spinTo(num) {
    //get location
    var temp = numberLoc[num][0] + 4;

    //randomize
    var rndSpace = Math.floor((Math.random() * 360) + 1);

    resetAni();
    setTimeout(function () {
        bgrotateTo(rndSpace);
        ballrotateTo(rndSpace + temp);
    }, 500);

}

function ballrotateTo(deg) {
    var temptime = (rotationsTime * 1000);
    var dest = (-360 * ballSpinTime) - (360 - deg);

    $.keyframe.define({
        name: 'rotate2',
        from: {
            transform: 'rotate(0deg)'
        },
        to: {
            transform: 'rotate(' + dest + 'deg)'
        }
    });

    $(ballbg).playKeyframe({
        name: 'rotate2', // name of the keyframe you want to bind to the selected element
        duration: temptime, // [optional, default: 0, in ms] how long you want it to last in milliseconds
        timingFunction: 'ease-in-out', // [optional, default: ease] specifies the speed curve of the animation
        complete: function () {
            //finishSpin();
        } //[optional]  Function fired after the animation is complete. If repeat is infinite, the function will be fired every time the animation is restarted.
    });

}

function bgrotateTo(deg) {
    var dest = 360 * wheelSpinTime + deg;
    var temptime = (rotationsTime * 1000) - 1000;



    $.keyframe.define({
        name: 'rotate',
        from: {
            transform: 'rotate(0deg)'
        },
        to: {
            transform: 'rotate(' + dest + 'deg)'
        }
    });

    $(numbg).playKeyframe({
        name: 'rotate', // name of the keyframe you want to bind to the selected element
        duration: temptime, // [optional, default: 0, in ms] how long you want it to last in milliseconds
        timingFunction: 'ease-in-out', // [optional, default: ease] specifies the speed curve of the animation
        complete: function () {
        } //[optional]  Function fired after the animation is complete. If repeat is infinite, the function will be fired every time the animation is restarted.
    });

    $(toppart).playKeyframe({
        name: 'rotate', // name of the keyframe you want to bind to the selected element
        duration: temptime, // [optional, default: 0, in ms] how long you want it to last in milliseconds
        timingFunction: 'ease-in-out', // [optional, default: ease] specifies the speed curve of the animation
        complete: function () {

        } //[optional]  Function fired after the animation is complete. If repeat is infinite, the function will be fired every time the animation is restarted.
    });


}
</script>