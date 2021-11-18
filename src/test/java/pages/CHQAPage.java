package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class CHQAPage {
    public CHQAPage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(linkText="Log in")
    public WebElement loginLinki;
    @FindBy(id = "UserName")
    public WebElement usernameKutusu;
    @FindBy(id = "Password")
    public WebElement passwordKutusu;
    @FindBy(id = "btnSubmit")
    public WebElement loginBtn;
    @FindBy(xpath = "//span[text()='Try again please']")
    public WebElement basarisizMesaj;

    @FindBy(xpath = "//a[text()='ListOfUsers']")
    public WebElement listOfUsersYaziElementi;

}
