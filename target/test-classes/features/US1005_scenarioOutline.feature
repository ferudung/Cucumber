Feature: US1005_amazonda liste ile arama
  Scenario Outline:TC09 amazonda verilen bie listeyi aratıp, var olduklarını test ediniz
    Given kullanici amazon sayfasina gider
    Then "<arananUrun>" icin arama yapar
    And sonuc sayisini yazdirir
    And sonucun "<arananUrun>" icerdigini test eder
    Then sayfayi kapatir
    
    
    
    Examples:
    |arananUrun|
    |nutella   |
    |java      |
    |ipod      |
    |armut     |
    |Apple     |