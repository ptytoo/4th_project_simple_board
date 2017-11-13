간단한 게시판 만들기

Model

- Post 모델
  - string title
  - string content
-  User 모델
  - string email
  - string password

Controller

- Post controller
  - post#index => 모든 게시글을 보여준다.
  - post#new => 새로운 게시글을 만드는 폼을 보여준다.
  - post#create => new에서 작성한 글을 쓴다.(==디비에 저장한다.)
  - post#show => post/show/:id  해당하는 글 한개만 보여준다.
-  user controller
  - user#index => 모든 유저를 보여준다.
  - user#new => 새로운 유저를 만드는 폼을 보여준다 (회원가입)
  - user#create => new에서 작성한 회원 정보를 디비에 저장한다.
  - user#show => /user/show/:id  해당하는 유저 1명만 보여준다.
