package stepDefinitions;

import org.openqa.selenium.WebDriver;
import io.cucumber.java.en.*;
import pageObjects.PageObjectManager;
import pageObjects.ShippingAddressPage;
import utils.TestContextSetup;

public class ShippingAddressPageStepDefinition {

	public WebDriver driver;
	public ShippingAddressPage shippingaddresspage;
	TestContextSetup testcontextsetup;
	PageObjectManager pageObjectmanager;

	public ShippingAddressPageStepDefinition(TestContextSetup testcontextsetup) {
		this.testcontextsetup = testcontextsetup;
		shippingaddresspage = testcontextsetup.pageObjectmanager.getshippingaddresspage();
	}
	
	@Given("user enter random {int} char into shipping address {string}")
	public void user_enter_random_char_into_shipping_address(int num, String path)   {
		String value=testcontextsetup.genericUtils.randomString(num);
		shippingaddresspage.ShippingtextBox(path).clear();		
		shippingaddresspage.ShippingtextBox(path).sendKeys(value);
	}
	@Then("user enter random {int} char into {string}")
	public void user_enter_random_char_into(int num, String locator) throws InterruptedException {
		String value=testcontextsetup.genericUtils.randomString(num);	
		if(locator.contains("Email")) {
			shippingaddresspage.input(locator).sendKeys(value+"@gmail.com");
		}
		else {
			shippingaddresspage.input(locator).sendKeys(value);
		}
	}

	@Then("user enter random {int} char into {string} textarea")
	public void user_enter_random_char_into_textarea(int num, String locator) throws InterruptedException {
		String value=testcontextsetup.genericUtils.randomString(num);	
		if(locator.contains("Email")) {
			shippingaddresspage.textarea(locator).sendKeys(value+"@gmail.com");
		}
		else {
			shippingaddresspage.textarea(locator).sendKeys(value);
		}
	}

	@Given("user enter random {int} number into {string}")
	public void user_enter_random_number_into_shipping_address(int num, String path)   {
		String value=testcontextsetup.genericUtils.randomNumber(num);
		shippingaddresspage.ShippingtextBox(path).clear();		
		shippingaddresspage.ShippingtextBox(path).sendKeys(value);
	}
 
}
