<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> 
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){
         $("#nav ul.sub").hide();
         $("#nav ul.menu li").click(function(){
            $("ul",this).slideToggle("fast");
         });
      });
</script>   
<script>
   var prevScrollpos = window.pageYOffset;
   console.log("first Y offset: " + prevScrollpos) // first value : 0
   window.onscroll = headerbarToggle
   
   function headerbarToggle() {
      var headerbar = document.getElementById("headerbar");
      
      var currentScrollpos = window.pageYOffset;
      console.log("current Y offset: " + currentScrollpos)
      if (prevScrollpos < currentScrollpos) {
         headerbar.style.opacity = 0.9;
         headerbar.style.top = 0;

         
      } else {
         headerbar.style.opacity = 1;
         headerbar.style.top = "";
      }
   }
</script>
<script src="https://kit.fontawesome.com/c737e525de.js" crossorigin="anonymous"></script>

<style>
   @font-face {
     font-family: 'Tenada';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-2@1.0/Tenada.woff2') format('woff2');
     font-weight: normal;
     font-style: normal;
   }
   @font-face {
       font-family: 'SUIT-Regular';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
       font-weight: normal;
       font-style: normal;
   }
   
   body {
     background-color:white;
   }
   
   * {
     font-family: 'SUIT-Regular';
   }
      
   .head {
     position: fixed;
     border: 1px solid white;
     height: 70px;
     background-color: white;
     transition: opacity 0.8s;
     width: 1900px;
     z-index: 10;
   }

   
   .logo {
     font-family: 'Tenada';
     margin-left: 30px;
     text-decoration: none;
     font-size: 39px;
     font-weight: bold; 
     color: black;
     margin-top:30px;
     line-height: 115%;
   }
   
   .logoIcon {
         font-size: 1em;
   }
        
     .logo:hover {
        color: black;
     }
     
     .LastHead  {
       display: flex;
       flex-wrap: wrap;
       margin-left: 87%;
      
     }
     .lastHead {
       display: block;
       font-size: 13px;    
       margin-top: 13px;
        
     }
        
     .lastHead:hover{
        color:black;
     }
     
     .like {
       margin-left: 40px;       
     }
         
     .icon {
       font-size: 34px;
       position:relative;
        top: -25px;
        left: 46px;       
     }
     
     .Mypage {
        margin-right: -42px;
     }
     .a-tag3:link {
       text-decoration: none;
     }
     .a-tag3 {
       color: black;
        font-size: 15px;   
     }
  
    
     /* topMenu의 ID를 가진 태그 안에 <ul> 태그 안에 <li> 태그의 스타일을 지정 */
     .topMenu ul li {   
       list-style: none;
       color: hsl(0, 1%, 27%);
       float: right;
       margin-right: 20px;
       margin-top: -10px;
     }
        
     .topMenu {
       position: relative;
       width: 1900px;
       top: -10px;
       right: 120px;   
        
     }
    
     input:-ms-input-placeholder {
        color:black;
     
     }
     
      input::-webkit-input-placeholder {
        color:gray;
     
     }
     
      input::-moz-placeholder {
        color:black;
     
     }
        
     .searchbox {       
        width: 280px;
        height:1px;
        border-bottom: 2px solid black;
        position: relative;
        left : 1485px;
        top: 30px;
        display: block;
        
     }
     
     .search {
       position: absolute;
         top: 0;
        left: 1490px;
        width : 260px;
        border : 0px;
        outline : none;
        display: block;
        
     }
        
  
        #searchBtn {
        position: absolute;
        width : 50px;
        height: 20px;
        border: 0px;       
        outline: none;
        background-color: white;     
        left: 1720px;
        top: 7px;
        display: block;
     }
      
     .fa-magnifying-glass {
        
        margin-top: -10px;
        color: black;
        display: inline;
     }
    
      #box {
        width: 1700px;
        height: auto;
     }
     
     .menuLink:hover{
          color:black;
       }
      
     .user_nickname{
        font-weight: bold;
     }
          
     @font-face {
          font-family: 'SUIT-Regular';
          src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
          font-weight: normal;
          font-style: normal;
      } 
        
      * {
        font-family: 'SUIT-Regular'; font-size: 20px;
      }  
         

      .menu {
        list-style-type: none;
        font-size: 16px;
        margin-left: 300px;
        margin-top: -60px;
        
      }

      .li-title {
        list-style-type: none;
        float:left;
        margin-right: 30px;
        overflow: hidden
        
      }

      .li-data {
        list-style-type: none;       
        margin-top: 0px;      
        margin-left: -50px;
        overflow: hidden;
        
      }

      .a-title {
        text-decoration:none;
        color: black;
        display: block;
        padding-bottom: 15px;
      }
       
       .a-title:hover {color: lightgray;}

      .a-data {
        text-decoration:none;
        color: gray;
        background-color: white;
        display: block;        
        height: 50px;       
        text-align: center;
       
      }
    /*   .a-cloth {
        
         margin-left: -20px;
      }
       */
      .a-data:hover {color: lightgray;}

   
      .fa-angle-down {
        margin-left: 15px;
      }
        
        
        
      #autocomplete {
            width: 300px;
        }
        
        #autocomplete-suggestions {background-color: white;border: 0px solid #ddd;width: 100%;box-sizing: border-box;font-family: sans-serif;z-index:-1;width:280px;max-height: 400px;overflow-y: auto;position: relative;}
        ul {list-style-type: none;padding: 0;margin: 0;}
        .lili, #autocomplete-suggestions div {padding: 8px; z-index:3;}
        .lili:hover {background-color: #ddd;}
        li.hl {background-color: #ddd;}   
      
</style>

 <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/images/ezen.png"/>

</head>
<body onscroll="headerbarToggle()">
      <!-- <div id="box"> -->
       <header>
     
          <nav class="topMenu">
            <ul>
               <c:choose >
              <c:when test="${not empty sessionScope.access_Token}">
              <li><a class="menuLink a-tag3" href="https://kauth.kakao.com/oauth/logout?client_id=539b9f686a3ecf1e986fc50b088309c0&logout_redirect_uri=http://localhost:8888/ezenmarket/logout">카카오 로그아웃</a></li>
              <li><span class="user_nickname">${sessionScope.nickname}</span>님</li>
              </c:when>
              <c:when test="${sessionScope.login eq 'yes' }">
              <li><a class="menuLink a-tag3" href="<%=request.getContextPath() %>/logout">로그아웃</a></li>     
              <li><span class="user_nickname">${sessionScope.nickname}</span>님</li>
              </c:when>

           <c:otherwise>              
              <li><a class="menuLink a-tag3" href="<%=request.getContextPath() %>/signup">회원가입</a></li>
              <li><a class="menuLink a-tag3" href="<%=request.getContextPath() %>/signin">로그인</a></li>
               </c:otherwise>
              </c:choose>
               <li><a class="menuLink a-tag3" href="<%=request.getContextPath() %>/mypage/?user_number=${sessionScope.user_number }">마이페이지</a></li>
              <!--  <i class="fa-regular fa-user icon mypage"></i> -->
            <li><a class="menuLink a-tag3" href="<%=request.getContextPath() %>/register">판매하기</a></li>
           <!--  <i class="fa-solid fa-won-sign icon Like"></i> -->
            </ul>
          </nav>


      <!-- <div style="border: 1px solid white; margin-top: 20px; width: 1900px;"></div> -->
      <hr id="header-hr" style="width: 100%;">
      
        <div id="headerbar" class="head">
            <a class="logo a-tag" href="<%=request.getContextPath()%>">Ezen<i class="fa-brands fa-monero logoIcon"></i>arket</a>
                  
         <!-- 메뉴바 -->
         <div id="nav">
            <ul class="menu">
               <li class="li-title"><a class="a-title" href="<%=request.getContextPath() %>/viewAll">전체보기</a></li>
      
               <li class="li-title li-cloth"><a class="a-title a-cloth" href="#;">패션의류 <i class='fa fa-angle-down'></i></a>
                  <ul class="sub">
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=1">남성의류</a></li>
                     <li  class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=2">여성의류</a></li>
                  </ul>
               </li>
      
                  <li class="li-title"><a class="a-title" href="#;">패션잡화<i class='fa fa-angle-down'></i></a>
                  <ul class="sub">
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=3">신발</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=4">가방</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=5">시계</a></li>
                  </ul>
               </li>
      
                  <li class="li-title"><a class="a-title" href="#;">가구생활<i class='fa fa-angle-down'></i></a>
                  <ul class="sub">
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=6">주방용품</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=7">인테리어</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=8">생필품</a></li>
                  </ul>
               </li>
      
                  <li class="li-title"><a class="a-title" href="#;">취미 컬렉션<i class='fa fa-angle-down'></i></a>
                  <ul class="sub">
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=9">건강용품</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=10">반려용품</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=11">사무용품</a></li>
                  </ul>
               </li>
      
                  <li class="li-title"><a class="a-title" href="#;">스포츠레저<i class='fa fa-angle-down'></i></a>
                  <ul class="sub">
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=12">아웃도어</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=13">운동화</a></li>
                  </ul>
               </li>
      
                  <li class="li-title"><a class="a-title" href="#;">디지털기기<i class='fa fa-angle-down'></i></a>
                  <ul class="sub">
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=14">노트북/PC</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=15">휴대전화</a></li>
                     <li class="li-data"><a class="a-data" href="<%=request.getContextPath() %>/category?category_id=16">주변기기</a></li>
                  </ul>
               </li>
      
                  <li class="li-title"><a class="a-title" href="<%=request.getContextPath() %>/category?category_id=17">기타</a></li>
            </ul>
        
                  
                  
                  
                  
                  
                  
                  
                  
                  
                 
                  <input class="search" type="search" name="title" placeholder="" id="autocomplete-input">
                 <div class="searchbox"><div style="position:absolute;top:1px;left:0;"><div id="autocomplete-suggestions"></div></div></div>
                   
                  <button type="submit" id="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button>
                 
                  <!-- <i class="fa-solid fa-magnifying-glass"></i> -->
           
                 
      </div>
    </div>           
       
        <%--   <div class="LastHead">
            <!-- <div><i class="fa-solid fa-door-open icon"></i><a class="lastHead" href="">채팅 </a></div> -->
            <div><a class="lastHead Mypage a-tag" href="<%=request.getContextPath() %>/mypage/?user_number=${sessionScope.user_number }"><i class="fa-regular fa-user icon mypage"></i>마이페이지</a></div>
            <div><a class="lastHead like a-tag" href="<%=request.getContextPath() %>/register"><i class="fa-solid fa-won-sign icon Like"></i>판매하기</a></div>
          </div>
 --%>
        </header>
   
   
   <script>
   
   const inputArea = document.getElementById("autocomplete-input");
    const suggestionsBox = document.getElementById("autocomplete-suggestions");
    let cache = "";
    suggestionsBox.style.listStyle = 'none';

    function hideSuggestionsBox() {
        suggestionsBox.innerHTML = "";
        suggestionsBox.style.zIndex = -1;
    }

    function fillSearch(suggestions) {
        const suggestionList = suggestions.map(suggestion => '<li class="lili">' + suggestion.value + '</li>');
        suggestionsBox.innerHTML = suggestionList.join("");
        suggestionsBox.style.zIndex = 3;
    }

    function loadData(input) {
        const url = 'https://completion.amazon.com/api/2017/suggestions?session-id=135-3077052-6015425&customer-id=&request-id=DMRETXPQ3PZJQ5TKYSWX&page-type=Gateway&lop=en_US&site-variant=desktop&client-info=amazon-search-ui&mid=ATVPDKIKX0DER&alias=aps&b2b=0&fresh=0&ks=undefined&prefix=' + input + '&event=onFocusWithSearchTerm&limit=11&fb=1&suggestion-type=KEYWORD&suggestion-type=WIDGET&_=1615280967091';

        if (cache === url) return;
        else {
            cache = url;
            fetch(url)
                .then((res) => res.json())
                .then(res => fillSearch(res.suggestions))
        }
    }

    inputArea.oninput = function () {
        const input = this.value;
        if (input.length === 0) {
            hideSuggestionsBox();
            return;
        }
        loadData(input);
    };

    suggestionsBox.onclick = function (e) {
        // if clicked on a suggestion, select it
        if (e.target.className === "lili") {
            inputArea.value = e.target.innerHTML;
            hideSuggestionsBox();
        }
    }

    let suggestionHighlighted = -1;

    inputArea.onkeydown = function (e) {
        const suggestionElements = suggestionsBox.querySelectorAll(".lili");

        for(let i = 0; i < suggestionElements.length; i++){
            suggestionElements[i].value
        }

        // down key is pressed
        if (e.keyCode === 40) {
            e.preventDefault();
            if (suggestionHighlighted === suggestionElements.length - 1) {
                return;
            }
            suggestionHighlighted++;
            suggestionElements[suggestionHighlighted].classList.add("hl");
            if (suggestionHighlighted > 0) {
                suggestionElements[suggestionHighlighted - 1].classList.remove("hl");
            }
        }

        // up key is pressed
        if (e.keyCode === 38) {
            e.preventDefault();
            if (suggestionHighlighted === -1) {
                return;
            }
            suggestionElements[suggestionHighlighted].classList.remove("hl");
            suggestionHighlighted--;
            if (suggestionHighlighted > -1) {
                suggestionElements[suggestionHighlighted].classList.add("hl");
            }
        }

        // enter key is pressed
        if (e.keyCode === 13) {
              
           if(suggestionHighlighted == -1){
              let value = inputArea.value.trim();
                if (value) {
                  window.location.href = '<%=request.getContextPath() %>/searchPagenation?title=' + value;
                };
           }
           
              if(suggestionElements.length == 0){
                 let value = inputArea.value.trim();
                if (value) {
                  window.location.href = '<%=request.getContextPath() %>/searchPagenation?title=' + value;
                };
              }
           
            if(suggestionsBox.style.zIndex == -1){
               let value = inputArea.value.trim();
                if (value) {
                  window.location.href = '<%=request.getContextPath() %>/searchPagenation?title=' + value;
                }
            } else if (suggestionHighlighted > -1) {
                inputArea.value = suggestionElements[suggestionHighlighted].innerHTML;
                hideSuggestionsBox();
                suggestionHighlighted = -1;
            }
            
        }
    };

    inputArea.onblur = function () {
        setTimeout(() => {
            hideSuggestionsBox();
            suggestionHighlighted = -1;
        }, 100);
    };
    
  

    

    </script>

</body>
</html>