package StepDef;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.Proxy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class LoginAdmin {
    WebDriver driver;
    public static String URL = "https://demosid.opendesa.id";
    public void openWeb(String path){
        WebDriverManager.chromedriver().setup();
        Proxy proxy = new Proxy();
        proxy.setHttpProxy("<HOST:PORT>");
        ChromeOptions options = new ChromeOptions();
        options.setCapability("proxy", proxy);
        driver = new ChromeDriver(options);
        driver.manage().window().maximize();
        driver.get(URL+path);
    }
    public void quiteWEB(){

        driver.close();
        driver.quit();
    }

    @Given("User go to path {string}")
    public void userGoToPath(String path) {
        openWeb(path);
    }

    @When("I check show password {string}")
    public void iCheckShowPassword(String arg0) {
        driver.findElement(By.id("checkbox")).click();
    }

    @Then("validate is in Admin Login Page")
    public void validateIsInAdminLogin() {
        driver.findElement(By.cssSelector("div[class='login-footer-top'] h1")).isDisplayed();
        quiteWEB();
    }

    @When("I enter username {string} and password {string}")
    public void iEnterUsernameAndPassword(String username, String password) {
        driver.findElement(By.name("username")).sendKeys(username);
        driver.findElement(By.id("password")).sendKeys(password);
    }

    @Then("I navigated to dashboard page")
    public void iNavigatedToDashboardPage() {
        driver.findElement(By.cssSelector("div[class='content-wrapper'] a[href='https://opendesa.id/']")).isDisplayed();
    }

    @And("I click button login {string}")
    public void iClickButtonLogin(String arg0) {
        driver.findElement(By.cssSelector("button[type='submit'][class='btn']")).click();
    }

    @Then("validate failed message")
    public void validateFailedMessage() {
        driver.findElement(By.className("error")).isDisplayed();
        System.out.println(driver.findElement(By.className("error")).getText());
        quiteWEB();
    }

    @And("I click button login {int} times")
    public void iClickButtonLoginTimes(int time) {
        int n = 0;
        for (int i = 0; i < 3; i++) {
            iEnterUsernameAndPassword("block", "me");
            iClickButtonLogin("");
            n++;
        }
    }

    @Then("validate countdown login message")
    public void validateCountdownLoginMessage() {
        driver.findElement(By.id("countdown")).isDisplayed();
        System.out.println(driver.findElement(By.id("countdown")).getText());
        quiteWEB();
    }
}
