# 4차산업혁명 선도인재 양성 프로젝트 과정

---
## 1. Week 1 Day 8: 

***

### facebook-board


##### Posts controller

index

new

create

show

edit

update

destroy



##### Post model

string, title

string, content



모든 form은 form_tag

모든 링크는<a>는 link_to로



##### ex)

old : /photo/create/1

사진1개, 모든 사진 보는 경로가 같다

GET /photos 모든사진

POST /photos 1개생성



resources :posts

rake :routes



Prefix = new_post

```ruby
<%= link_to "게시믈 쓰기", new_post_path %>	
```

새로운 method 호출

```ruby
<%= link_to "삭제", post_path(@post.id), method: "delete" %>	
```

redirect_to 3개다 같음

```ruby
redirect_to "/posts/#{@post.id}"
redirect_to post_path(@post.id)
redirect_to post_path(@post)

redirect_to '/'
redirect_to :root
redirect_to root_path
```



삭제 시 메세지 창 alert

```ruby
<%= link_to "삭제", post_path(@post.id), method: "delete", data: {confirm: "진짜 지울거니?"} %>