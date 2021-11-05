Feature: US1008 editör sayasına farklı kullanıcılar ekleyebilmeliyim
  @editor
  Scenario Outline: TC11 editör sayfasına farkli kişiler ekleme

    Given kullanici "editorURL" sayfasına gider
    Then new butonuna basar
    And editor ilgili kutulara "<firstName>""<lastName>""<position>""<office>""<extension>""<startDate>""<salary>" bilgilerini girer
    And Create tusuna basar





    Examples:
      |firstName|lastName|position|office|extension|startDate|salary|
      |Hakan    |Tetik    |TestLead|Paris |ali      |2021-01-21|60000|
      |Murat    |Ercoban  |QA      |Kenya |126      |2021/01/20|40000|
      |Furkan   |Yilmaz   |QA      |Adana |130      |2021.03.21|80.000|