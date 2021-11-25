<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>
        Portfolio of Sihyun Jung
    </title>

    <!-- Chart.js와 jQuery 사용을 위한 스크립트 파일 첨부 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <!-- 스크롤 무빙을 위한 자바스트립트와 스타일시트 -->
    <script src="scroll.js"></script>
    <link type="text/css" rel="stylesheet" href="style.css">

    <!-- 구글 폰트사용을 위한 링크 첨부 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&family=Noto+Serif+KR&display=swap" rel="stylesheet">
</head>


<body>
    <header>
        Who I am?
    </header>

    <!------------------------------Menu(nav)------------------------------->
    <nav id="Menu">
        <aside id="left">
            <ul>
                <li>
                    <div id="first"><button onclick="introMove()">Introduction</button></div>
                </li>
                <li>
                    <div id="second"><button onclick="skillMove()">Skills</button></div>
                </li>
                <li>
                    <div id="third"><button onclick="projectMove()">Projects</button></div>
                </li>
                <li>
                    <div id="fourth"><button onclick="contactMove()">Contact Info</button></div>
                </li>
            </ul>
        </aside>
        <a href="Intro.html">
            <p id="goback"> Please click here<br> to go back to first page. </p>
        </a>
        <nav>

            <section id="main">
                <!------------------------------Introduction------------------------------>
                <div id="intro">
                    <p class="common"><span class="impact"> 소프트웨어 개발자를 꿈꾸는 정보시스템 공학도, </span></p>
                    <p id="name">Sihyun</p>
                    <p id="lastname"> Jung </p>
                    <br><br><br>
                    <p class="common"> <span class="impact">중학교 시절,</span> 봉사활동의 목적으로 정보부장을 맡은 이후로 컴퓨터에 관심이 생겼고, 정신을 차려보니 어느덧 6년째 정보 도우미를 하는 저 자신을 발견했습니다. <br> 그렇게 제 흥미를 끌어냈던 컴퓨터를 더 자세히 공부하고자 정보시스템공학과에 진학하였습니다. <br>하지만 제가 상상했던 것과는 다른 내용에 새내기시절 잠시 방황하기도 했습니다. </p>
                    <p class="common">그럼에도 흘러가는 시간이 아깝다는 생각에 무작정 프로젝트를 시작했습니다. <br> 이름은 <span class="impact">Come Back Home</span>으로, 스토리와 함께 미로를 탈출해야 하는 안드로이드 게임 이었습니다. <br>첫 팀 프로젝트이자, 코딩에 대한 흥미를 되찾아준 프로젝트였습니다. </p>
                    <p class="common"> 위 프로젝트로 교내 소프트웨어경진대회에서 동상을 수상하고, 이후 시야를 넓히기 위해 해외 경험을 해보고자 <span class="impact">2021년 1월,</span> 미국에 교환학생으로 머무르게 되었습니다.
                        <br>그리고 파견과 동시에, 본격적으로 <span class="impact">'알고리즘'</span>이라는 걸 만들어 보고 싶었습니다. 그래서 한국의 동기들과 함께 두 번째로 Time Shelf 프로젝트를 진행했습니다.
                        <br><br>시차가 있어 미팅을 하기 힘들었지만, 알고리즘의 기획부터 슈도코드, 구현까지. 이 모든 경험은 굉장히 값지고 소중했습니다. 이어 2021년 하반기, 교환교인 UNM에서 로보틱스 리서치에 학부 연구생으로 참여하게 되었고, 현재 알고리즘에 대해 공부하며 <span class="impact">나아갈 분야를 탐색하고 있습니다.</span> </p>
                    <br><br>
                </div>

                <!-------------------------Skill (Chart.js를 이용한 그래프로 나타내기)------------------------->
                <div class="content">
                    <p class="topic">Skills</p>
                    <div id="chart">
                        <canvas id="myChart"></canvas>
                    </div>
                    <script>
                        var ctx = document.getElementById('myChart').getContext('2d');
                        var myChart = new Chart(ctx, {
                            type: 'bar',
                            data: {
                                labels: ["C", "C++", "JAVA", "C#", "Python", "HTML", "CSS", "Java Script"],
                                datasets: [{
                                    label: 'Programming Languages',
                                    data: [5, 6, 7, 2, 3, 5, 4, 4],
                                    backgroundColor: [//5 이상일 경우 진한 색 지정.
                                        'rgb(80, 90, 150)',
                                        'rgb(80, 90, 150)',
                                        'rgb(80, 90, 150)',
                                        'rgb(100, 100, 110)',
                                        'rgb(100, 100, 110)',
                                        'rgb(80, 90, 150)',
                                        'rgb(100, 100, 110)',
                                        'rgb(100, 100, 110)'
                                    ],
                                    borderColor: [//5 이상일 경우 진한 색 지정.
                                    	'rgb(80, 90, 150)',
                                        'rgb(80, 90, 150)',
                                        'rgb(80, 90, 150)',
                                        'rgb(100, 100, 110)',
                                        'rgb(100, 100, 110)',
                                        'rgb(80, 90, 150)',
                                        'rgb(100, 100, 110)',
                                        'rgb(100, 100, 110)'
                                    ],
                                    borderWidth: 1
                                }]
                            },
                            options: {
                                maintainAspectRatio: false,
                                scales: {
                                    yAxes: [{
                                        ticks: {
                                            beginAtZero: true,
                                            max: 10 
                                            //최소값:0, 최대값:10
                                        }
                                    }]
                                }
                            }
                        });
                    </script>
                </div>

                <!------------------------------Projects------------------------------>
                <div class="content">
                    <div class="projects">
                        <p class="topic">Projects</p><br>
                        <div class="project"><img border="0" src="images/firstproject.jpg" alt="Backto2000s" width="300" height="170">
                            <div class="common">
                                <p>
                                    <p class="impact">Back to 2000s</p> Website Development <br> 2019.10 - 2019.12
                                    <br> Personal Project <br><br> Role: 기획, 디자인, 구현.
                                </p>
                            </div>
                        </div>
                        <div class="project"><img border="0" src="images/secondproject.jpg" alt="Comebackhome" width="300" height="170">
                            <div class="common">
                                <p>
                                    <p class="impact">Come Back Home</p>Android Game Developmonet<br> 2020.06 - 2020.08<br> Team Project
                                    <br><br>Role: 미로 구조체 기획 및 구현, <br>엔딩씬 기획 및 구현, 그래픽 디자인.
                                </p>
                            </div>
                        </div>
                        <div class="project"><img border="0" src="images/thirdproject.jpg" alt="Timeshelf" width="300" height="170">
                            <div class="common">
                                <p>
                                    <p class="impact">Time Shelf</p> Algorithm Developmonet<br> 2021.01 - 2021.08<br> Team Project
                                    <br><br>Role: 웹사이트에 사용되는 알고리즘 구현, <br>그래픽 디자인(로고 및 이미지 소스).
                                </p>
                            </div>
                        </div>
                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    </div>

                </div>

                <!------------------------------Contact Info------------------------------>
                <div class="content">
                    <div id="contact">
                        <p class="topic">Contact Information</p>
                        <p class="common">Email: 20191036@sungshin.ac.kr</p>
                        <p class="common">위 주소로 이메일을 보내주시거나, 아래 폼을 통해 정보를 남겨주시면 빠른 시일 내에 연락드리도록 하겠습니다.</p>
                        <br><br>
                        <form action="contact.jsp">
                            <fieldset>
                                Name: <input type="text" name="name" maxlength="20"><br><br>
                                Number: <input type="text" name="number" maxlength="20"> &nbsp;&nbsp;
                                Email: <input type="email" name="email" required maxlength="30"><br><br><br>
                                내용: <br><textarea name="content" rows="10" cols="100" maxlength="300"></textarea><br><br>
                                <input type="submit" value="Send" />
                            </fieldset>
                        </form>
                    </div>
                    <br><br><br><br><br><br>
                </div>
                <br>
                <!------------------------------Main요소 끝------------------------------>
            </section>
</body>
</html>