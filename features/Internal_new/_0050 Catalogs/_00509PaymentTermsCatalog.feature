﻿#language: en
@tree
@Positive
@Test
@Group01
@Catalogs

Feature: filling in Payment terms catalog

As an owner
I want to fill out information on the company
To further use it when reflecting in the program of business processes

Background:
	Given I open new TestClient session or connect the existing one
	And I set "True" value to the constant "ShowBetaTesting"
	And I set "True" value to the constant "ShowAlphaTestingSaas"
	And I set "True" value to the constant "UseItemKey"
	And I set "True" value to the constant "UseCompanies"




Scenario: _005024 filling in the "Payment terms" catalog 
	* Opening a form and creating Payment terms
		Given I open hyperlink "e1cib/list/Catalog.PaymentSchedules"
		When create a catalog element with the name Test
	* Check for created Payment terms
		Then I check for the "PaymentSchedules" catalog element with the "Description_en" "Test ENG"  
		Then I check for the "PaymentSchedules" catalog element with the "Description_tr" "Test TR"
