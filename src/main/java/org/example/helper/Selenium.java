package org.example.helper;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;


public class Selenium {
    private WebDriver driver;

    public Selenium() {
        open();
    }

    private void open() {
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        driver = new ChromeDriver();
        driver.get("http://192.168.1.8/currency_converter/");
        driver.manage().window().maximize();

    }

    public void enterAmount(String amount) {
        WebElement amountWebElement = driver.findElement(By.id("amoTXT"));
        amountWebElement.clear();
        amountWebElement.sendKeys(amount);
    }
    public String submit() throws InterruptedException {
        WebElement submit = driver.findElement(By.id("submitInput"));
        submit.click();
        Thread.sleep(1000);
        return driver.findElement(By.id("resultInput")).getAttribute("value");
    }

    public String getRate() {
        return driver.findElement(By.id("rateInput")).getAttribute("value");
    }

    public void selectFrom(String value) {
        Select select = new Select(driver.findElement(By.id("selectFrom")));
        select.selectByValue(value);
    }
    public void selectTo(String value) {
        Select select = new Select(driver.findElement(By.id("selectTo")));
        select.selectByValue(value);
    }

}
