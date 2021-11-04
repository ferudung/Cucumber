Feature: US1004 bestbuy sayfasinda kelime arama
  Scenario: TC08 kullanici ebuyda istediği kelimeyi aratıp test eder
    Given kullanici "ebuyUrl" sayfasina gider
    And "nutella" icin arama yapar
    And sonucun "nutella" icerdigini test eder
    Then sayfayi kapatir

    #burada tüm step definitionlar tanımlı gibi görünsede testimiz çalışmaz
    #cünkü arma yapar ve sonucu test eder step definitionları amazon sayfasına göre locate edilmiştir
    #buradan yeniden locate etmemiz gerekirken aynı cümleyi yazdığımız için bizden yeni step deinition istemedi
    #buyüzden gherkin ile yazdığımız cümlelerin tam tanımlayıcı olması ONEMLİDİR

