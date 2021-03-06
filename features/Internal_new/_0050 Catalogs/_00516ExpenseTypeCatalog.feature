﻿#language: en
@tree
@Positive
@Test
@Group01
@Catalogs


Feature: filling in Expense type catalog

As an owner
I want to fill out information on the company
To further use it when reflecting in the program of business processes

Background:
	Given I open new TestClient session or connect the existing one
	And I set "True" value to the constant "ShowBetaTesting"
	And I set "True" value to the constant "ShowAlphaTestingSaas"
	And I set "True" value to the constant "UseItemKey"
	And I set "True" value to the constant "UseCompanies"


		
Scenario: _005047 filling in Expense type
	* Open a creation form Expense type
		Given I open hyperlink "e1cib/list/Catalog.ExpenseAndRevenueTypes"
	* Create expense type 'Rent'
		And I click the button named "FormCreate"
		And I click Open button of the field named "Description_en"
		And I input "Rent" text in the field named "Description_en"
		And I input "Rent TR" text in the field named "Description_tr"
		And I input "Аренда" text in "RU" field
		And I click "Ok" button
		And I click the button named "FormWrite"
		* Check data save
			Then the form attribute named "Description_en" became equal to "Rent"
		And I click the button named "FormWriteAndClose"
	* Create expense type  'Delivery'
		And I click the button named "FormCreate"
		And I click Open button of the field named "Description_en"
		And I input "Delivery" text in the field named "Description_en"
		And I input "Delivery TR" text in the field named "Description_tr"
		And I click "Ok" button
		And I click the button named "FormWriteAndClose"
	* Check creation Expense type
		Then I check for the "ExpenseAndRevenueTypes" catalog element with the "Description_en" "Rent"
		Then I check for the "ExpenseAndRevenueTypes" catalog element with the "Description_tr" "Rent TR"
		Then I check for the "ExpenseAndRevenueTypes" catalog element with the "Description_ru" "Аренда"
		Then I check for the "ExpenseAndRevenueTypes" catalog element with the "Description_en" "Delivery"