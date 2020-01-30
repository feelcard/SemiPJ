# 멀티캠퍼스 IOT과정 1차 세미프로젝트 관련 자료입니다.



## 1.  주제 설정

향후에 제작하게 될 IOT 장비를 판매할 수 있는 쇼핑몰을 제작한다는 컨셉으로 제작하였습니다. 이번 세미프로젝트의 결과물은 앞으로의 프로젝트에서도 지속적으로 사용될 예정입니다. 마지막에는 IOT장비의 관제시스템을 탑제하여 쇼핑몰 사이트를 이용하여 해당하는 장비를 제어할 수 있게 사이트를 구성할 예정입니다.

## 2.   시스템 구조 및 아키텍쳐 설계



![image-20200130111102242](https://user-images.githubusercontent.com/58680504/73420362-93e15f00-4365-11ea-8795-128b155ef602.png)

![image-20200130111217124](https://user-images.githubusercontent.com/58680504/73420363-93e15f00-4365-11ea-8472-bc320c078ac5.png)

## 3.   Database 설계

![image-20200130111224600](https://user-images.githubusercontent.com/58680504/73420365-93e15f00-4365-11ea-9809-a4a75df35d25.png)

## 4.   화면 설계 및 시스템 구축

![image-20200130111317224](https://user-images.githubusercontent.com/58680504/73420366-9479f580-4365-11ea-9bbd-95b23f149525.png)

main.jsp 호출시 해당 화면이 나타나며 화면상단의 shop 태그를 누르면 상품 목록 페이지로 이동합니다.

![image-20200130111847084](https://user-images.githubusercontent.com/58680504/73420367-9479f580-4365-11ea-8b7a-64b17e23db90.png)

 shop.mc를 호출하게 되면 해당 화면이 나타납니다. Pagination을위해 전체목록의 개수를 먼저 db에서 불러오고 전체 개수와 지정된 range를 이용해 pagination합니다 저희 쇼핑몰의 range는 5로 두었으며 한 페이지당 12개의 목록을 불러오기로 정하였습니다.                        

![image-20200130112517140](https://user-images.githubusercontent.com/58680504/73420368-9479f580-4365-11ea-9307-a70ff0379557.png)다음은 정렬을 위해서 정렬 기준을 productlist.jsp에서 dropdown으로 나타내었습니다. pagination을 위해서 정렬마다 각각의 쿼리를 부여하였습니다.

![image-20200130112943060](https://user-images.githubusercontent.com/58680504/73420369-9479f580-4365-11ea-97d0-fd87c9f109ee.png)

좌측의 카테고리는 search기능을 사용하여 카테고리에 부합하는 목록을 나타내었습니다. 이름이 한글이기 때문에 shop.jsp에서 인코딩을 하는 js코드를 작성하고 컨트롤러에서 디코딩하여 db에서 값을 불러왔습니다.   

![image-20200130113258392](https://user-images.githubusercontent.com/57747689/73420631-87a9d180-4366-11ea-9ec8-2799ab99a785.png)

위와 같이 admin 계정으로 로그인 할 경우 세션에 있는 이메일 정보를 이용해 상품을 등록할 수 있는 버튼이 생성되도록 설계하였습니다.

## ![image-20200130112943060](https://user-images.githubusercontent.com/58680504/73420371-95128c00-4365-11ea-8e13-4e0eb2a9143d.png)

상품등록 버튼을 누르게 되면 pregister.mc로 이동하게 되며 상품을 등록할 수 있는 페이지가 나옵니다. 파일 선택 시 이미지의 이름과 확장자는 DB에 저장되며 이미지 파일은 C:\\spring\\header\\web\\images\\에 저장됩니다. 



![image-20200130113208712](.\markdown_img\image-20200130113208712.png)그리고 상품을 클릭하면 위와 같이 장바구니 버튼 외에 추가로 상품 수정 및 삭제 버튼이 나타나며 수정과 삭제 기능을 사용할 수 있습니다.