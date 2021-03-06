﻿#language: en
@tree
@Positive
@Test
@Group01
@Catalogs

Feature: filling in Partners catalog

As an owner
I want to fill out information on the company
To further use it when reflecting in the program of business processes

Background:
	Given I open new TestClient session or connect the existing one
	And I set "True" value to the constant "ShowBetaTesting"
	And I set "True" value to the constant "ShowAlphaTestingSaas"
	And I set "True" value to the constant "UseItemKey"
	And I set "True" value to the constant "UseCompanies"




Scenario: _005022 filling in the "Partners" catalog
	* Opening the form for filling in Partners
		Given I open hyperlink "e1cib/list/Catalog.Partners"
		And Delay 2
	* Create partners: Ferron BP (customer and vendor), Kalipso (customer), Manager B (Employee), Lomaniti(vendor)
		And I click the button named "FormCreate"
		And Delay 2
		And I click Open button of the field named "Description_en"
		And I input "Ferron BP" text in the field named "Description_en"
		And I input "Ferron BP TR" text in the field named "Description_tr"
		And I input "Феррон BP" text in the field named "Description_ru"
		And I click "Ok" button
		And I set checkbox named "Customer"
		And I set checkbox named "Vendor"
		And I click the button named "FormWrite"
		* Check data save
			Then the form attribute named "Description_en" became equal to "Ferron BP"
			Then the form attribute named "Customer" became equal to "Yes"
			Then the form attribute named "Vendor" became equal to "Yes"
			Then the form attribute named "Employee" became equal to "No"
			Then the form attribute named "Opponent" became equal to "No"
		And I click the button named "FormWriteAndClose"
		And I click the button named "FormCreate"
		And I click Open button of the field named "Description_en"
		And I input "Kalipso" text in the field named "Description_en"
		And I input "Kalipso TR" text in the field named "Description_tr"
		And I click "Ok" button
		And I set checkbox named "Customer"
		And I click the button named "FormWrite"
		* Check data save
			Then the form attribute named "Description_en" became equal to "Kalipso"
			Then the form attribute named "Customer" became equal to "Yes"
			Then the form attribute named "Vendor" became equal to "No"
			Then the form attribute named "Employee" became equal to "No"
			Then the form attribute named "Opponent" became equal to "No"
		And I click the button named "FormWriteAndClose"
		And I click the button named "FormCreate"
		And I click Open button of the field named "Description_en"
		And I input "Manager B" text in the field named "Description_en"
		And I input "Manager B TR" text in the field named "Description_tr"
		And I click "Ok" button
		And I set checkbox named "Employee"
		* Check data save
			Then the form attribute named "Description_en" became equal to "Manager B"
			Then the form attribute named "Customer" became equal to "No"
			Then the form attribute named "Vendor" became equal to "No"
			Then the form attribute named "Employee" became equal to "Yes"
			Then the form attribute named "Opponent" became equal to "No"
		And I click the button named "FormWriteAndClose"
		And I click the button named "FormCreate"
		And I click Open button of the field named "Description_en"
		And I input "Lomaniti" text in the field named "Description_en"
		And I input "Lomaniti TR" text in the field named "Description_tr"
		And I click "Ok" button
		And I set checkbox named "Vendor"
		* Check data save
			Then the form attribute named "Description_en" became equal to "Lomaniti"
			Then the form attribute named "Customer" became equal to "No"
			Then the form attribute named "Vendor" became equal to "Yes"
			Then the form attribute named "Employee" became equal to "No"
			Then the form attribute named "Opponent" became equal to "No"
		And I click the button named "FormWriteAndClose"
	* Check for created partners
		Then I check for the "Partners" catalog element with the "Description_en" "Ferron BP"  
		Then I check for the "Partners" catalog element with the "Description_tr" "Ferron BP TR"
		Then I check for the "Partners" catalog element with the "Description_ru" "Феррон BP"
		Then I check for the "Partners" catalog element with the "Description_en" "Kalipso"
		Then I check for the "Partners" catalog element with the "Description_en" "Manager B"
		And Delay 2
		Then I check for the "Partners" catalog element with the "Description_en" "Lomaniti"
	* Clean catalog Partners
		And I delete "Partners" catalog element with the Description_en "Ferron BP"
		And I delete "Partners" catalog element with the Description_en "Kalipso"
		And I delete "Partners" catalog element with the Description_en "Manager B"
		And I delete "Partners" catalog element with the Description_en "Lomaniti"