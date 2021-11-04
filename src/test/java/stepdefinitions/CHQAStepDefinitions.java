package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import pages.CHQAPage;
import utilities.ConfigReader;
import utilities.Driver;

public class CHQAStepDefinitions {
    CHQAPage chqaPage=new CHQAPage();
    @Given("kullanici {string} sayfasına gider")
    public void kullanici_sayfasına_gider(String string) {
      Driver.getDriver().get(ConfigReader.getProperty("CHQAUrl"));
    }
    @Then("CH Login linkine tiklar")
    public void ch_login_linkine_tiklar() {
       chqaPage.loginLinki.click();
    }
    @Then("CH username kutusuna {string} yazar")
    public void ch_username_kutusuna_yazar(String kullaniciAdi) {
       chqaPage.usernameKutusu.sendKeys(kullaniciAdi);
    }
    @Then("CH password kutusuna {string} yazar")
    public void ch_password_kutusuna_yazar(String kullaniciSifre) {
        chqaPage.passwordKutusu.sendKeys(kullaniciSifre);
    }
    @Then("CH login butonuna basar")
    public void ch_login_butonuna_basar() {
        chqaPage.loginBtn.click();
    }
    @Then("giris yapılamadığını test eder")
    public void giris_yapılamadığını_test_eder() {
        Assert.assertTrue(chqaPage.basarisizMesaj.isDisplayed());


    }
}
