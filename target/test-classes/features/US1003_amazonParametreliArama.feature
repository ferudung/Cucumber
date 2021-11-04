Feature: US1003 kullanici istediği kelime icin arama yapip, sonucu test eder
  Scenario: TC07 istenen kelimenin oldugunu test etme
    Given kullanici "amazonUrl" sayfasina gider
    And "nutella" icin arama yapar
    Then sonucun "nutella" icerdigini test eder
    And sayfayi kapatir

    #parametre olarak yazdığımız kelimeyi stepdefinition da strind
  #olarak kullanacaksa ne yazdığı önemli değil

  #ancak eger parametre olarak yazdığımız kelimeyi configuration preperties den alacaksak
  #burada yazdığımız parametrenin config deki ile aynı olması gerekir
  #aramazonUrl gibi eger yazı farkli olursa nullpointerexception veriri
  #buradaki parametre ile config deki key aynı olduktan sonra step definition daki
  #parametre adı olarak ne yazdığımızın bir öenmi olmaz