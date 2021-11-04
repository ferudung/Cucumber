Feature: US1006 concort hotels sayfasında farklı kullanıcı adları ile negative test
  @CH
  Scenario Outline: TC10 farklı kullanıcı isimlei ile negative test
  Given kullanici "CHQAUrl" sayfasına gider
  Then CH Login linkine tiklar
  And CH username kutusuna "<wrongUserName>" yazar
  And CH password kutusuna "<wrongPassword>" yazar
  Then CH login butonuna basar
  And giris yapılamadığını test eder
  And sayfayi kapatir

Examples:
|wrongUserName|wrongPassword|
|  Manager5   | Manager5!   |
|  Manager6   |	Manager6!   |
|  Manager7   | Manager7!   |
|  Manager8	  | Manager8!   |
|  Manager9   | Manager9!   |



