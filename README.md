# MVC 패턴 기반 점심 메뉴 추천 웹 페이지 구성

### 프로젝트 개요

이 프로젝트는 Servlet과 JSP를 활용하여 MVC 패턴 기반의 점심 메뉴 추천 웹을 구현한 과제입니다.     
사용자가 메뉴 이름, 맵기, 가격 등의 정보를 입력하면 서버가 이를 처리하여 메뉴 목록 페이지에 출력하는 기능을 목표로 합니다.

--- 

### 학습 목표
**1. Servlet/JSP 기반 MVC 패턴 이해**   
Controller(Servlet), View(JSP), Model(Java 클래스) 역할을 분리하여 웹 애플리케이션을 구성합니다.

**2. HTTP 요청과 데이터 전달**     
HTML을 통해 서버로 데이터를 전송하고, request 객체를 통해 JSP로 전달되는 흐름을 이해합니다.

**3. JSP 반복문 출력**     
List 데이터를 JSP에서 반복문으로 출력 방법을 학습합니다.

--- 

### 개발 환경

- Java 17
- Servlet/JSP
- IntelliJ IDEA
- Tomcat 9.0.107

--- 

### 주요 기능

- 메뉴 등록 폼 페이지
  - 사용자가 메뉴 정보를 입력할 수 있는 HTML 폼 제공
  - <form> 태그를 사용해 POST 방식으로 Controller에 데이터 전달

- 메뉴 등록 처리
  - 폼으로 전송된 데이터를 Servlet에서 받아 Service를 통해 메뉴 리스트에 추가
  - 처리 후 RequestDispatcher.forward()로 list.jsp로 이동

- 메뉴 목록 조회 페이지
  - 등록된 메뉴를 List<Menu> 형태로 받아 반복문(for-each)으로 테이블 출력
  - request.getAttribute("menuList")로 데이터를 JSP에서 받아 화면에 렌더링

---

### 폴더 구조
```
📁 LunchMenuMVC
└── 📁 src
    └── 📁 main
        ├── 📁 java
        │   └── 📁 Menu
        │       ├── 📄 Menu.java                
        │       ├── 📄 MenuService.java         
        │       ├── 📄 MenuRegisterController.java 
        │       └── 📄 MenuSearchController.java     
        └── 📁 webapp
            └── 📁 WEB-INF
                └── 📁 jsp
                    ├── 📄 index.jsp  
                    ├── 📄 form.jsp             
                    └── 📄 list.jsp           
```

--- 

### 실행 방법

1. IDE에서 Tomcat 서버 실행
    Edit Configurations 설정 필요
2. 브라우저에서 아래 URL 접속    
   http://localhost:8080/

--- 

### 트러블 슈팅

메뉴 등록 후 RequestDispatcher.forward() 사용 시 menuList를 request에 담지 않아 JSP로 전달되지 않았습니다.    
Controller에서 메뉴 리스트를 받아 request.setAttribute("menuList", menuList)로 JSP에 전달하여 해결했습니다.    
  
[상세 내용은 이곳에서 확인할 수 있습니다](https://j-do-challenge.tistory.com/36)
