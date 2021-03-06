﻿#language: en
@tree
@Positive
@Group16

Feature: creation mechanism based on for purchase documents



Background:
	Given I launch TestClient opening script or connect the existing one

# Internal supply request - Purchase order - Purchase invoice - Goods reciept - Bank payment/Cash payment
# A direct delivery scheme first an invoice, then an order



Scenario: _090302 create purchase invoice for several purchase orders with different legal name
	# should be created 2 Purchase invoice
	* Create Purchase order 124
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 124
			And I move to "Other" tab
			And I expand "More" group
			And I input "124" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "124" text in "Number" field
		And I click "Post and close" button
	* Create Purchase order 125
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 125
			And I move to "Other" tab
			And I expand "More" group
			And I input "125" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "125" text in "Number" field
		And I click "Post and close" button
	* Create based on Purchase order 124 and 125 Purchase invoice (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 124    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		Then the form attribute named "Partner" became equal to "Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron, TRY"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		Then the number of "ItemList" table lines is "меньше или равно" 3
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And "ItemList" table contains lines
			| 'Price'  | 'Item'  | 'VAT' | 'Item key' | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      | 'Goods receipt' | 'Sales order' |
			| '200,00' | 'Dress' | '18%' | 'M/White'  | '10,000' | 'pcs'  | '305,08'     | '1 694,92'   | '2 000,00'     | 'Store 02' | 'Purchase order 125*' | ''              | ''            |
			* Change the document number to 126
				And I input "126" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "126" text in "Number" field
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And "ItemList" table contains lines
			| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      | 'Goods receipt' | 'Sales order' | 'Additional analytic' |
			| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000' | 'pcs'  | '610,17'     | '3 389,83'   | '4 000,00'     | 'Store 02' | 'Purchase order 124*' | ''              | ''            | ''                    |
			| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000' | 'pcs'  | '640,68'     | '3 559,32'   | '4 200,00'     | 'Store 02' | 'Purchase order 124*' | ''              | ''            | ''                    |
			| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '961,02'     | '5 338,98'   | '6 300,00'     | 'Store 02' | 'Purchase order 124*' | ''              | ''            | ''                    |
			* Change the document number to 125
				And I input "125" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "125" text in "Number" field
		And I click "Post and close" button
		When I click command interface button "Purchase invoice (create)"
		Then the form attribute named "Partner" became equal to "Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron, TRY"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		Then the number of "ItemList" table lines is "меньше или равно" 3
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And "ItemList" table contains lines
			| 'Price'  | 'Item'  | 'VAT' | 'Item key' | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      | 'Goods receipt' | 'Sales order' |
			| '200,00' | 'Dress' | '18%' | 'M/White'  | '10,000' | 'pcs'  | '305,08'     | '1 694,92'   | '2 000,00'     | 'Store 02' | 'Purchase order 125*' | ''              | ''            |
			* Change the document number to 126
				And I input "126" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "126" text in "Number" field
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And "ItemList" table contains lines
			| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      | 'Goods receipt' | 'Sales order' | 'Additional analytic' |
			| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000' | 'pcs'  | '610,17'     | '3 389,83'   | '4 000,00'     | 'Store 02' | 'Purchase order 124*' | ''              | ''            | ''                    |
			| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000' | 'pcs'  | '640,68'     | '3 559,32'   | '4 200,00'     | 'Store 02' | 'Purchase order 124*' | ''              | ''            | ''                    |
			| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '961,02'     | '5 338,98'   | '6 300,00'     | 'Store 02' | 'Purchase order 124*' | ''              | ''            | ''                    |
			* Change the document number to 125
				And I input "125" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "125" text in "Number" field
		And I click "Post and close" button
		And I close all client application windows
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And "List" table contains lines
			| 'Number'  |
			| '125'       |
			| '126'       |
		And I close all client application windows




		

Scenario: _090303 create Purchase invoice for several Purchase order with the same partner, legal name, partner term, currency and store
# Should be created 1 Purchase invoice
	* Create Purchase order 126
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 126
			And I move to "Other" tab
			And I expand "More" group
			And I input "126" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "126" text in "Number" field
		And I click Select button of "Legal name" field
		And I go to line in "List" table
			| Description       |
			| Company Ferron BP |
		And I select current line in "List" table
		And I click "Post and close" button
	* Create Purchase order 127
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 127
			And I move to "Other" tab
			And I expand "More" group
			And I input "127" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "127" text in "Number" field
		And I click Select button of "Legal name" field
		And I go to line in "List" table
			| Description       |
			| Company Ferron BP |
		And I select current line in "List" table
		And I click "Post and close" button
	* Create based on Purchase order 126 and 127 Purchase invoice (should be created 1)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 126    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		Then the form attribute named "Partner" became equal to "Ferron BP"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron, TRY"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		And "ItemList" table contains lines
			| 'Net amount' | 'Item'     | 'Price'  | 'Item key'  | 'Q'      | 'Unit' | 'Total amount' | 'Store'    | 'Purchase order'      |
			| '3 389,83'   | 'Dress'    | '200,00' | 'M/White'   | '20,000' | 'pcs'  | '4 000,00'     | 'Store 02' | 'Purchase order 126*' |
			| '3 559,32'   | 'Dress'    | '210,00' | 'L/Green'   | '20,000' | 'pcs'  | '4 200,00'     | 'Store 02' | 'Purchase order 126*' |
			| '5 338,98'   | 'Trousers' | '210,00' | '36/Yellow' | '30,000' | 'pcs'  | '6 300,00'     | 'Store 02' | 'Purchase order 126*' |
			| '1 694,92'   | 'Dress'    | '200,00' | 'M/White'   | '10,000' | 'pcs'  | '2 000,00'     | 'Store 02' | 'Purchase order 127*' |
		* Change the document number to 127
			And I input "127" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "127" text in "Number" field
		And I click "Post and close" button
		And I close all client application windows
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And "List" table contains lines
			| 'Number'  |
			| '127'       |
		And I close all client application windows
	
Scenario: _090304 create Purchase invoice for several Purchase order with different partners of the same legal name (partner terms are different)
# should be created 2 Purchase invoice
	* Add new partner Partner Ferron 1 for Company Ferron BP
		Given I open hyperlink "e1cib/list/Catalog.Partners"
		And I click the button named "FormCreate"
		And I input "Partner Ferron 1" text in the field named "Description_en"
		And I set checkbox "Customer"
		And I set checkbox "Vendor"
		And I click Select button of "Main partner" field
		And I go to line in "List" table
			| Description |
			| Ferron BP   |
		And I select current line in "List" table
		And I click Select button of "Manager segment" field
		And I go to line in "List" table
			| Description |
			| Region 2    |
		And I select current line in "List" table
		And I click "Save" button
		And In this window I click command interface button "Partner terms"
		And I click the button named "FormCreate"
		And I input "Vendor Ferron 1" text in the field named "Description_en"
		And I change "Type" radio button value to "Vendor"
		And I input "125" text in "Number" field
		And I input current date in the field named "StartUsing"
		And I click Select button of "Partner" field
		And I go to line in "List" table
			| Description      |
			| Partner Ferron 1 |
		And I select current line in "List" table
		And I click Select button of "Multi currency movement type" field
		And I go to line in "List" table
			| 'Currency' | 'Type'      |
			| 'TRY'      | 'Partner term' |
		And I select current line in "List" table
		And I click Select button of "Price type" field
		And I go to line in "List" table
			| Description       |
			| Vendor price, TRY |
		And I select current line in "List" table
		And I click Select button of "Company" field
		And I select current line in "List" table
		And I click "Save and close" button
		And I click the button named "FormCreate"
		And I input "Vendor Ferron Discount" text in the field named "Description_en"
		And I change "Type" radio button value to "Vendor"
		And I input "126" text in "Number" field
		And I input current date in the field named "StartUsing"
		And I click Select button of "Partner" field
		And I go to line in "List" table
			| Description      |
			| Partner Ferron 1 |
		And I select current line in "List" table
		And I click Select button of "Multi currency movement type" field
		And I go to line in "List" table
			| 'Currency' | 'Type'      |
			| 'TRY'      | 'Partner term' |
		And I select current line in "List" table
		And I click Select button of "Price type" field
		And I go to line in "List" table
			| Description       |
			| Vendor price, TRY |
		And I select current line in "List" table
		And I click Select button of "Company" field
		And I select current line in "List" table
		And I click "Save and close" button
		And I close all client application windows
	* Add new partner Partner Ferron 2 for Company Ferron BP
		Given I open hyperlink "e1cib/list/Catalog.Partners"
		And I click the button named "FormCreate"
		And I input "Partner Ferron 2" text in the field named "Description_en"
		And I set checkbox "Customer"
		And I set checkbox "Vendor"
		And I click Select button of "Main partner" field
		And I go to line in "List" table
			| Description |
			| Ferron BP   |
		And I select current line in "List" table
		And I click Select button of "Manager segment" field
		And I go to line in "List" table
			| Description |
			| Region 2    |
		And I select current line in "List" table
		And I click "Save" button
		And In this window I click command interface button "Partner terms"
		And I click the button named "FormCreate"
		And I input "Vendor Ferron Partner 2" text in the field named "Description_en"
		And I change "Type" radio button value to "Vendor"
		And I input "126" text in "Number" field
		And I input current date in the field named "StartUsing"
		And I click Select button of "Partner" field
		And I go to line in "List" table
			| Description      |
			| Partner Ferron 2 |
		And I select current line in "List" table
		And I click Select button of "Multi currency movement type" field
		And I go to line in "List" table
			| 'Currency' | 'Type'      |
			| 'TRY'      | 'Partner term' |
		And I select current line in "List" table
		And I click Select button of "Price type" field
		And I go to line in "List" table
			| Description       |
			| Vendor price, TRY |
		And I select current line in "List" table
		And I click Select button of "Company" field
		And I select current line in "List" table
		And I click "Save and close" button
		And I close all client application windows
	* Create first test PO 128
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 128
			And I move to "Other" tab
			And I expand "More" group
			And I input "128" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "128" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron 1 |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create first test PO 129
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 129
			And I move to "Other" tab
			And I expand "More" group
			And I input "129" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "129" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 2   |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Partner 2 |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 128 and 129 Purchase invoice (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 128    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		Then the number of "ItemList" table lines is "меньше или равно" 3
		* Change the document number to 130
			And I input "130" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "130" text in "Number" field
		And I click "Post and close" button
		When I click command interface button "Purchase invoice (create)"
		And Delay 2
		Then the number of "ItemList" table lines is "меньше или равно" 3
		* Change the document number to 131
			And I input "131" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "131" text in "Number" field
		And I click "Post and close" button
	And I close all client application windows
	* Check creation
		Given I open hyperlink "e1cib/list/AccumulationRegister.OrderBalance"
		And "List" table contains lines
		| 'Quantity' | 'Store'    | 'Order'               | 'Item key'  |
		| '20,000'   | 'Store 02' | 'Purchase order 128*' | 'M/White'   |
		| '20,000'   | 'Store 02' | 'Purchase order 128*' | 'L/Green'   |
		| '30,000'   | 'Store 02' | 'Purchase order 128*' | '36/Yellow' |
		| '10,000'   | 'Store 02' | 'Purchase order 129*' | 'M/White'   |
		| '20,000'   | 'Store 02' | 'Purchase order 128*' | 'M/White'   |
		| '20,000'   | 'Store 02' | 'Purchase order 128*' | 'L/Green'   |
		| '30,000'   | 'Store 02' | 'Purchase order 128*' | '36/Yellow' |
		| '10,000'   | 'Store 02' | 'Purchase order 129*' | 'M/White'   |
		And Delay 5
		And I close all client application windows



Scenario: _090305 create purchase invoice for several purchase order with different partner terms
# should be created 2 Purchase invoice
	* Create first test PO 130
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 130
			And I move to "Other" tab
			And I expand "More" group
			And I input "130" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "130" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron 1 |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 131 Partner Ferron 1 with partner term Vendor Ferron Discount
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 131
			And I move to "Other" tab
			And I expand "More" group
			And I input "131" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "131" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 130 and 131 Purchase invoice (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 130    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Agreement" is equal to "Vendor Ferron 1" Then
			And "ItemList" table contains lines
				| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      |
				| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000' | 'pcs'  | '720,00'     | '4 000,00'   | '4 720,00'     | 'Store 02' | 'Purchase order 130*' |
				| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000' | 'pcs'  | '756,00'     | '4 200,00'   | '4 956,00'     | 'Store 02' | 'Purchase order 130*' |
				| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '1 134,00'   | '6 300,00'   | '7 434,00'     | 'Store 02' | 'Purchase order 130*' |
			* Change the document number to 141
				And I input "141" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "141" text in "Number" field
		If the field named "Agreement" is equal to "Vendor Ferron Discount" Then
			And "ItemList" table contains lines
				| 'Price'  | 'Item'  | 'VAT' | 'Item key' | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      |
				| '200,00' | 'Dress' | '18%' | 'M/White'  | '10,000' | 'pcs'  | '360,00'     | '2 000,00'   | '2 360,00'     | 'Store 02' | 'Purchase order 131*' |
			* Change the document number to 140
				And I input "140" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "140" text in "Number" field
		And I click "Post and close" button
		When I click command interface button "Purchase invoice (create)"
		* Check filling in second PurchaseInvoice
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Agreement" is equal to "Vendor Ferron 1" Then
			And "ItemList" table contains lines
				| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      |
				| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000' | 'pcs'  | '720,00'     | '4 000,00'   | '4 720,00'     | 'Store 02' | 'Purchase order 130*' |
				| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000' | 'pcs'  | '756,00'     | '4 200,00'   | '4 956,00'     | 'Store 02' | 'Purchase order 130*' |
				| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '1 134,00'   | '6 300,00'   | '7 434,00'     | 'Store 02' | 'Purchase order 130*' |
			* Change the document number to 141
				And I input "141" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "141" text in "Number" field
		If the field named "Agreement" is equal to "Vendor Ferron Discount" Then
			And "ItemList" table contains lines
				| 'Price'  | 'Item'  | 'VAT' | 'Item key' | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      |
				| '200,00' | 'Dress' | '18%' | 'M/White'  | '10,000' | 'pcs'  | '360,00'     | '2 000,00'   | '2 360,00'     | 'Store 02' | 'Purchase order 131*' |
			* Change the document number to 140
				And I input "140" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "140" text in "Number" field
		And I click "Post and close" button
	And I close all client application windows
	* Check creation
		Given I open hyperlink "e1cib/list/AccumulationRegister.OrderBalance"
		And "List" table contains lines
		| 'Quantity' | 'Store'    | 'Order'               | 'Item key'  |
		| '20,000'   | 'Store 02' | 'Purchase order 130*' | 'M/White'   |
		| '20,000'   | 'Store 02' | 'Purchase order 130*' | 'L/Green'   |
		| '30,000'   | 'Store 02' | 'Purchase order 130*' | '36/Yellow' |
		| '10,000'   | 'Store 02' | 'Purchase order 131*' | 'M/White'   |
		| '20,000'   | 'Store 02' | 'Purchase order 130*' | 'M/White'   |
		| '20,000'   | 'Store 02' | 'Purchase order 130*' | 'L/Green'   |
		| '30,000'   | 'Store 02' | 'Purchase order 130*' | '36/Yellow' |
		| '10,000'   | 'Store 02' | 'Purchase order 131*' | 'M/White'   |
		And Delay 5
		And I close all client application windows



Scenario: _090306 create Purchase invoice for several Purchase order with different stores (created one)
# Create one PI
	* Create first test PO 134
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 134
			And I move to "Other" tab
			And I expand "More" group
			And I input "134" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "134" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 01  |
			And I select current line in "List" table
			And I click "OK" button
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 135
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 135
			And I move to "Other" tab
			And I expand "More" group
			And I input "135" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "135" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 135 and 134 Purchase invoice (should be created 1)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 134    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
		Then the form attribute named "Company" became equal to "Main Company"
		And "ItemList" table contains lines
			| 'Item'     | 'Price'  | 'Item key'  |  'Store'    | 'Unit' | 'Q'      | 'Offers amount' | 'Net amount' | 'Total amount' | 'Purchase order'      |
			| 'Dress'    | '200,00' | 'M/White'   |  'Store 01' | 'pcs'  | '20,000' | ''              | '4 000,00'   | '4 720,00'     | 'Purchase order 134*' |
			| 'Dress'    | '210,00' | 'L/Green'   |  'Store 01' | 'pcs'  | '20,000' | ''              | '4 200,00'   | '4 956,00'     | 'Purchase order 134*' |
			| 'Trousers' | '210,00' | '36/Yellow' |  'Store 01' | 'pcs'  | '30,000' | ''              | '6 300,00'   | '7 434,00'     | 'Purchase order 134*' |
			| 'Dress'    | '200,00' | 'M/White'   |  'Store 02' | 'pcs'  | '10,000' | ''              | '2 000,00'   | '2 360,00'     | 'Purchase order 135*' |
		* Change the document number to 135
			And I input "135" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "135" text in "Number" field
		And I click "Post and close" button
		And I close all client application windows
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And "List" table contains lines
			| 'Number'  |
			| '135'       |
		And I close all client application windows

	
Scenario: _090307 create purchase invoice for several purchase order with different own companies
	# Create one PI
	* Create first test PO 136
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 136
			And I move to "Other" tab
			And I expand "More" group
			And I input "136" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "136" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I click Select button of "Company" field
			And I go to line in "List" table
				| Description    |
				| Second Company |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 137
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 137
			And I move to "Other" tab
			And I expand "More" group
			And I input "137" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "137" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 136 and 137 Purchase invoice (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 136    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Net amount' | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 000,00'   | '2 360,00'     | 'Purchase order 137*' |
			Then the form attribute named "PriceIncludeTax" became equal to "No"
			* Change the document number to 137
				And I input "137" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "137" text in "Number" field
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
			| 'Item'     | 'Price'  | 'Item key'  |  'Store'     | 'Unit' | 'Q'      | 'Net amount' | 'Total amount' | 'Purchase order'     |
			| 'Dress'    | '200,00' | 'M/White'   |  'Store 02'  | 'pcs'  | '20,000' | '4 000,00'   | '4 000,00'     | 'Purchase order 136*' |
			| 'Dress'    | '210,00' | 'L/Green'   |  'Store 02'  | 'pcs'  | '20,000' | '4 200,00'   | '4 200,00'     | 'Purchase order 136*' |
			| 'Trousers' | '210,00' | '36/Yellow' |  'Store 02'  | 'pcs'  | '30,000' | '6 300,00'   | '6 300,00'     | 'Purchase order 136*' |
			* Change the document number to 136
				And I input "136" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "136" text in "Number" field
		And I click "Post and close" button
		When I click command interface button "Purchase invoice (create)"
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Net amount' | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 000,00'   | '2 360,00'     | 'Purchase order 137*' |
			Then the form attribute named "PriceIncludeTax" became equal to "No"
			* Change the document number to 137
				And I input "137" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "137" text in "Number" field
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
			| 'Item'     | 'Price'  | 'Item key'  |  'Store'     | 'Unit' | 'Q'      | 'Net amount' | 'Total amount' | 'Purchase order'     |
			| 'Dress'    | '200,00' | 'M/White'   |  'Store 02'  | 'pcs'  | '20,000' | '4 000,00'   | '4 000,00'     | 'Purchase order 136*' |
			| 'Dress'    | '210,00' | 'L/Green'   |  'Store 02'  | 'pcs'  | '20,000' | '4 200,00'   | '4 200,00'     | 'Purchase order 136*' |
			| 'Trousers' | '210,00' | '36/Yellow' |  'Store 02'  | 'pcs'  | '30,000' | '6 300,00'   | '6 300,00'     | 'Purchase order 136*' |
			* Change the document number to 136
				And I input "136" text in "Number" field
				Then "1C:Enterprise" window is opened
				And I click "Yes" button
				And I input "136" text in "Number" field
		And I click "Post and close" button
	And I close all client application windows
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And "List" table contains lines
			| 'Number'  |
			| '136'       |
			| '137'       |
		And I close all client application windows




Scenario: _090308 create Goods reciept for Purchase invoice with different legal names (Purchase invoice before Goods receipt)
# Should be created 2 GR
	* Create Goods reciept for PI 125, 126
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		* Sort the list by document number 
			And I click "Configure list..." button
			And I move to "Order" tab
			And in the table "SettingsComposerUserSettingsItem1Order" I click the button named "SettingsComposerUserSettingsItem1OrderDelete"
			And I go to line in "SettingsComposerUserSettingsItem1AvailableFieldsTable" table
				| 'Available fields' |
				| 'Number'           |
			And I select current line in "SettingsComposerUserSettingsItem1AvailableFieldsTable" table
			And I click "Finish editing" button
		And I go to line in "List" table
				| Number |
				| 125    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And I input "126" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "126" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 125*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 125*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 125*' |
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And I input "125" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "125" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
			| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 126*' |
		And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in second Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And I input "126" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "126" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 125*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 125*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 125*' |
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And I input "125" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "125" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
			| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 126*' |
		And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '125'       |
			| '126'       |
		And I close all client application windows



Scenario: _090309 create Goods reciept for several Purchase invoice with different partners of the same legal name (Purchase invoice before Goods receipt)
# Should be created 2 GR
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I go to line in "List" table
				| Number |
				| 130    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Partner" is equal to "Partner Ferron 2" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
				| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
			And I input "129" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "129" text in "Number" field
		If the field named "Partner" is equal to "Partner Ferron 1" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
			And I input "130" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "130" text in "Number" field
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in second Goods reciept
		If the field named "Partner" is equal to "Partner Ferron 2" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
				| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
			And I input "129" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "129" text in "Number" field
		If the field named "Partner" is equal to "Partner Ferron 1" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 13*' |
			And I input "130" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "130" text in "Number" field
	And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '129'       |
			| '130'       |
		And I close all client application windows


Scenario: _090310 create Goods reciept for several Purchase invoice with different partner terms, Purchase invoice before Goods receipt
# Should be created 2 GR becouse partner terms different
	* Create Goods reciept for PI 140, 141
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I go to line in "List" table
				| Number |
				| 140    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Description" became equal to "Click to enter description"
		Then the form attribute named "Store" became equal to "Store 02"
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		And I save number of "ItemList" table lines as "Q"
		If "Q" variable is equal to 1 Then
			And I input "140" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "140" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'  | 'Quantity' | 'Item key' | 'Store'    | 'Unit' | 'Receipt basis'         |
			| 'Dress' | '10,000'   | 'M/White'  | 'Store 02' | 'pcs'  | 'Purchase invoice 140*' |
		If "Q" variable is equal to 3 Then
			And I input "141" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "141" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'         |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 141*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 141*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 141*' |
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in second Goods reciept
		And I save number of "ItemList" table lines as "D"
		If "D" variable is equal to 1 Then
			And I input "140" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "140" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
			| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 140*' |
		If "D" variable is equal to 3 Then
			And I input "141" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "141" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 141*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 141*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 141*' |
	And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '140'       |
			| '141'       |
		And I close all client application windows


Scenario: _090311 create Goods reciept for several Purchase invoice with different stores, Purchase invoice before Goods receipt (only one store use Goods receipt)
# Create one GR
	* Create Goods reciept for PI 135
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I go to line in "List" table
				| Number |
				| 135    |
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Description" became equal to "Click to enter description"
		Then the form attribute named "Store" became equal to "Store 02"
		And "ItemList" table contains lines
		| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
		| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 135*' |
		And I input "135" text in "Number" field
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		And I input "135" text in "Number" field
	And I click "Post and close" button
	* Check creation
		And "List" table contains lines
			| Number |
			| 135    |
	And I close all client application windows
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '135'       |
		And I close all client application windows


Scenario: _090312 create Goods reciept for several Purchase order with different own companies, Purchase invoice before Goods receipt
# Should be created GR
	* Create Goods reciept for PI 137, 136
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I go to line in "List" table
			| Number |
			| 136    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 136*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 136*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 136*' |
			And I input "136" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "136" text in "Number" field
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    |
				| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' |
			And I input "137" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "137" text in "Number" field
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in Goods reciept
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'        |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase invoice 136*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase invoice 136*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase invoice 136*' |
			And I input "136" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "136" text in "Number" field
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    |
				| 'Dress'    | '10,000'   | 'M/White'   | 'pcs'  | 'Store 02' |
			And I input "137" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "137" text in "Number" field
	And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '136'       |
			| '137'       |
		And I close all client application windows



# First Goods receipt then Purchase invoice

Scenario: _090313 create Goods reciept for Purchase order with different legal names, Purchase invoice after Goods receipt
# should be created 2 Goods reciept
	* Create rest Purchase order 140
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 140
			And I move to "Other" tab
			And I expand "More" group
			And I input "140" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "140" text in "Number" field
		And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
		And I click "Post and close" button
	* Create Purchase order 141
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 141
			And I move to "Other" tab
			And I expand "More" group
			And I input "141" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "141" text in "Number" field
		And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
		And I click "Post and close" button
	* Create based on Purchase order 140 and 141 Goods reciept (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 140    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And I input "143" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "143" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 141*' |
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And I input "142" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "142" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 140*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 140*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 140*' |
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And I input "143" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "143" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 141*' |	
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And I input "142" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "142" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 140*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 140*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 140*' |
	And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '142'       |
			| '143'       |
		And I close all client application windows



Scenario: _090314 create Goods reciept for several Purchase order with different partners of the same legal name, Purchase invoice after Goods receipt
# should be created 2 Goods reciept
	* Create first test PO 142
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 142
			And I move to "Other" tab
			And I expand "More" group
			And I input "142" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "142" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron 1 |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 143
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 143
			And I move to "Other" tab
			And I expand "More" group
			And I input "143" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "143" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 2   |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Partner 2 |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 142 and 143 Goods reciept (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 142    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		If the field named "Partner" is equal to "Partner Ferron 2" Then
			And I input "154" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "154" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 143*' |
		If the field named "Partner" is equal to "Partner Ferron 1" Then
			And I input "155" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "155" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 142*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 142*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 142*' |
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in Goods reciept
		If the field named "Partner" is equal to "Partner Ferron 2" Then
			And I input "154" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "154" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 143*' |
		If the field named "Partner" is equal to "Partner Ferron 1" Then
			And I input "155" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "155" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 142*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 142*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 142*' |
	And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '154'       |
			| '155'       |
		And I close all client application windows

Scenario: _090315 create Goods reciept for several Purchase order with different partner terms, Purchase invoice after Goods receipt
# should be created 2 Goods reciept
	* Create first test PO 144
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 144
			And I move to "Other" tab
			And I expand "More" group
			And I input "144" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "144" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron 1 |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 145 Partner Ferron 1 with partner term Vendor Ferron Discount
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 144
			And I move to "Other" tab
			And I expand "More" group
			And I input "145" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "145" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 144 and 145 Goods reciept (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 144    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		And I save number of "ItemList" table lines as "N"
		If "N" variable is equal to 1 Then
			And I input "145" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "145" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
			| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 145*' |
		If "N" variable is equal to 3 Then
			And I input "144" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "144" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 144*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 144*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 144*' |
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in second Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		And I save number of "ItemList" table lines as "A"
		If "A" variable is equal to 1 Then
			And I input "145" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "145" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
			| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 145*' |
		If "A" variable is equal to 3 Then
			And I input "144" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "144" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 144*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 144*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 144*' |
	And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.GoodsReceipt"
		And "List" table contains lines
			| 'Number'  |
			| '144'       |
			| '145'       |
		And I close all client application windows



Scenario: _090316 create Goods reciept for several Purchase order with different stores, Purchase invoice after Goods receipt
# should be created 2 Goods reciept
	* Create first test PO 146
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 146
			And I move to "Other" tab
			And I expand "More" group
			And I input "146" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "146" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 03  |
			And I select current line in "List" table
			And I click "OK" button
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 147
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 147
			And I move to "Other" tab
			And I expand "More" group
			And I input "147" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "147" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create based on Purchase order 146 and 147 Goods reciept (should be created 2)
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 146    |
		And I move one line down in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		If the field named "Store" is equal to "Store 02" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 147*' |
			And I input "147" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "147" text in "Number" field
		If the field named "Store" is equal to "Store 03" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 03' | 'Purchase order 146*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 03' | 'Purchase order 146*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 03' | 'Purchase order 146*' |
			And I input "146" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "146" text in "Number" field
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in Goods reciept
		Then the form attribute named "Company" became equal to "Main Company"
		If the field named "Store" is equal to "Store 02" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 147*' |
			And I input "147" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "147" text in "Number" field
		If the field named "Store" is equal to "Store 03" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
				| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 03' | 'Purchase order 146*' |
				| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 03' | 'Purchase order 146*' |
				| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 03' | 'Purchase order 146*' |
			And I input "146" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "146" text in "Number" field
	And I click "Post and close" button
	* Check creation
		Given I open hyperlink "e1cib/list/AccumulationRegister.GoodsInTransitIncoming"
		And "List" table contains lines
		| 'Quantity' | 'Receipt basis'       | 'Store'    | 'Item key'  |
		| '20,000'   | 'Purchase order 146*' | 'Store 03' | 'M/White'   |
		| '20,000'   | 'Purchase order 146*' | 'Store 03' | 'L/Green'   |
		| '30,000'   | 'Purchase order 146*' | 'Store 03' | '36/Yellow' |
		| '10,000'   | 'Purchase order 147*' | 'Store 02' | 'M/White'   |
		| '10,000'   | 'Purchase order 147*' | 'Store 02' | 'M/White'   |
		| '20,000'   | 'Purchase order 146*' | 'Store 03' | 'M/White'   |
		| '20,000'   | 'Purchase order 146*' | 'Store 03' | 'L/Green'   |
		| '30,000'   | 'Purchase order 146*' | 'Store 03' | '36/Yellow' |
		And Delay 5
	And I close all client application windows

Scenario: _090317 create Goods reciept for several Purchase order with different own companies using an indirect shipping scheme
# should be created 2 Goods reciept
	* Create first test PO 148
		When create the first test PO for a test on the creation mechanism based on
		* Change the document number to 148
			And I move to "Other" tab
			And I expand "More" group
			And I input "148" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "148" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I click Select button of "Company" field
			And I go to line in "List" table
				| Description    |
				| Second Company |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'L/Green'  |
			And I input "210" text in "Price" field of "ItemList" table
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Trousers' |'36/Yellow'  |
			And I input "210" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create second test PO 149
		When create the second test PO for a test on the creation mechanism based on
		* Change the document number to 149
			And I move to "Other" tab
			And I expand "More" group
			And I input "149" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "149" text in "Number" field
		* Filling in vendor info
			And I click Select button of "Partner" field
			And I go to line in "List" table
				| Description |
				| Partner Ferron 1   |
			And I select current line in "List" table
			And I click Select button of "Legal name" field
			And I go to line in "List" table
				| Description       |
				| Company Ferron BP |
			And I select current line in "List" table
			And I click Select button of "Partner term" field
			And I go to line in "List" table
				| Description        |
				| Vendor Ferron Discount |
			And I select current line in "List" table
			And I change checkbox "Do you want to update filled price types on Vendor price, TRY?"
			And I change checkbox "Do you want to update filled prices?"
			And I click "OK" button
			And I click Select button of "Store" field
			And I go to line in "List" table
				| Description |
				| Store 02  |
			And I select current line in "List" table
			And I move to "Other" tab
			And I expand "More" group
			And I set checkbox named "GoodsReceiptBeforePurchaseInvoice"
			And I go to line in "ItemList" table
			| 'Item'  |'Item key' |
			| 'Dress' |'M/White'  |
			And I input "200" text in "Price" field of "ItemList" table
		And I click "Post and close" button
	* Create Goods reciept
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| 149    |
		And I move one line up in "List" table and select line
		And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
	* Check filling in Goods reciept
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 149*' |
			And I input "149" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "149" text in "Number" field
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 148*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 148*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 148*' |
			And I input "148" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "148" text in "Number" field
	And I click "Post and close" button
	When I click command interface button "Goods receipt (create)"
	* Check filling in second Goods reciept
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Quantity' | 'Item key' | 'Unit' | 'Store'    | 'Receipt basis'       |
				| 'Dress' | '10,000'   | 'M/White'  | 'pcs'  | 'Store 02' | 'Purchase order 149*' |
			And I input "149" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "149" text in "Number" field
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
			| 'Item'     | 'Quantity' | 'Item key'  | 'Unit' | 'Store'    | 'Receipt basis'      |
			| 'Dress'    | '20,000'   | 'M/White'   | 'pcs'  | 'Store 02' | 'Purchase order 148*' |
			| 'Dress'    | '20,000'   | 'L/Green'   | 'pcs'  | 'Store 02' | 'Purchase order 148*' |
			| 'Trousers' | '30,000'   | '36/Yellow' | 'pcs'  | 'Store 02' | 'Purchase order 148*' |
			And I input "148" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "148" text in "Number" field
	And I click "Post and close" button
	* Check creation
		Given I open hyperlink "e1cib/list/AccumulationRegister.GoodsInTransitIncoming"
		And "List" table contains lines
		| 'Quantity' | 'Receipt basis'       | 'Store'    | 'Item key'  |
		| '20,000'   | 'Purchase order 148*' | 'Store 02' | 'M/White'   |
		| '20,000'   | 'Purchase order 148*' | 'Store 02' | 'L/Green'   |
		| '30,000'   | 'Purchase order 148*' | 'Store 02' | '36/Yellow' |
		| '10,000'   | 'Purchase order 149*' | 'Store 02' | 'M/White'   |
		| '10,000'   | 'Purchase order 149*' | 'Store 02' | 'M/White'   |
		| '20,000'   | 'Purchase order 148*' | 'Store 02' | 'M/White'   |
		| '20,000'   | 'Purchase order 148*' | 'Store 02' | 'L/Green'   |
		| '30,000'   | 'Purchase order 148*' | 'Store 02' | '36/Yellow' |
		And Delay 5
		And I close all client application windows


Scenario: _090318 create Purchase invoice for several Purchase order with different contractors according to an indirect shipping scheme
# should be created 2 Purchase invoice
	Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
	And I go to line in "List" table
			| Number |
			| 140    |
	And I move one line down in "List" table and select line
	And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
	* Select Goods Receipt for Purchase invoice
		And I click the button named "FormSelectAll"
		And I click "Ok" button
	* Check filling in Purchase invoice 142
		Then the form attribute named "Partner" became equal to "Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron, TRY"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And I move to "Other" tab
			And I input "142" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "142" text in "Number" field
			And Delay 5
			And I move to "Item list" tab
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 000,00'     | 'Purchase order 141*' |
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And I move to "Other" tab
			And I input "143" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "143" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Price'  | 'Item key'  | 'Q'      | 'Unit' | 'Total amount' | 'Store'    | 'Delivery date' | 'Purchase order'      |
			| 'Trousers' | '210,00' | '36/Yellow' | '30,000' | 'pcs'  | '6 300,00'     | 'Store 02' | '*'             | 'Purchase order 140*' |
			| 'Dress'    | '200,00' | 'M/White'   | '20,000' | 'pcs'  | '4 000,00'     | 'Store 02' | '*'             | 'Purchase order 140*' |
			| 'Dress'    | '210,00' | 'L/Green'   | '20,000' | 'pcs'  | '4 200,00'     | 'Store 02' | '*'             | 'Purchase order 140*' |
	And I click "Post and close" button
	When I click command interface button "Purchase invoice (create)"
	* Check filling in second Purchase invoice
		Then the form attribute named "Partner" became equal to "Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron, TRY"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "LegalName" is equal to "Second Company Ferron BP" Then
			And I move to "Other" tab
			And I input "142" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "142" text in "Number" field
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 000,00'     | 'Purchase order 141*' |
		If the field named "LegalName" is equal to "Company Ferron BP" Then
			And I move to "Other" tab
			And I input "143" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "143" text in "Number" field
			And "ItemList" table contains lines
			| 'Item'     | 'Price'  | 'Item key'  | 'Q'      | 'Unit' | 'Total amount' | 'Store'    | 'Delivery date' | 'Purchase order'      |
			| 'Trousers' | '210,00' | '36/Yellow' | '30,000' | 'pcs'  | '6 300,00'     | 'Store 02' | '*'             | 'Purchase order 140*' |
			| 'Dress'    | '200,00' | 'M/White'   | '20,000' | 'pcs'  | '4 000,00'     | 'Store 02' | '*'             | 'Purchase order 140*' |
			| 'Dress'    | '210,00' | 'L/Green'   | '20,000' | 'pcs'  | '4 200,00'     | 'Store 02' | '*'             | 'Purchase order 140*' |
	And I click "Post and close" button
	And I close all client application windows
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And "List" table contains lines
			| 'Number'  |
			| '142'       |
			| '143'       |
		And I close all client application windows



Scenario: _090319 create Purchase invoice for several Purchase order with different partners of the same legal name, Purchase invoice after Goods receipt
	# should be created 2 Purchase invoice
	Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
	And I go to line in "List" table
			| Number |
			| 142    |
	And I move one line down in "List" table and select line
	And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
	Select Goods Receipt for Purchase invoice
		And I click the button named "FormSelectAll"
		And I click "Ok" button
	* Check filling in Purchase invoice 145
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Partner" is equal to "Partner Ferron 2" Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron Partner 2"
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 360,00'     | 'Purchase order 143*' |
			And I move to "Other" tab
			And I input "154" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "154" text in "Number" field
		If the field named "Partner" is equal to "Partner Ferron 1" Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron 1"
			And "ItemList" table contains lines
				| 'Item'     | 'Price'  | 'Item key'  | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress'    | '200,00' | 'M/White'   | 'Store 02' | 'pcs'  | '20,000' | '4 720,00'     | 'Purchase order 142*' |
				| 'Dress'    | '210,00' | 'L/Green'   | 'Store 02' | 'pcs'  | '20,000' | '4 956,00'     | 'Purchase order 142*' |
				| 'Trousers' | '210,00' | '36/Yellow' | 'Store 02' | 'pcs'  | '30,000' | '7 434,00'     | 'Purchase order 142*' |
			And I move to "Other" tab
			And I input "155" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "155" text in "Number" field
	And I click "Post and close" button
	When I click command interface button "Purchase invoice (create)"
	* Check filling in Purchase invoice 146
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Partner" is equal to "Partner Ferron 2" Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron Partner 2"
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 360,00'     | 'Purchase order 143*' |
			And I move to "Other" tab
			And I input "154" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "154" text in "Number" field
		If the field named "Partner" is equal to "Partner Ferron 1" Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron 1"
			And "ItemList" table contains lines
				| 'Item'     | 'Price'  | 'Item key'  | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress'    | '200,00' | 'M/White'   | 'Store 02' | 'pcs'  | '20,000' | '4 720,00'     | 'Purchase order 142*' |
				| 'Dress'    | '210,00' | 'L/Green'   | 'Store 02' | 'pcs'  | '20,000' | '4 956,00'     | 'Purchase order 142*' |
				| 'Trousers' | '210,00' | '36/Yellow' | 'Store 02' | 'pcs'  | '30,000' | '7 434,00'     | 'Purchase order 142*' |
			And I move to "Other" tab
			And I input "155" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "155" text in "Number" field
	And I click "Post and close" button
	And I close all client application windows
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I click "Refresh" button
		And "List" table contains lines
			| 'Number'  |
			| '155'       |
			| '154'       |
		And I close all client application windows

Scenario: _090320 create Purchase invoice for several Purchase order with different partner terms, Purchase invoice after Goods receipt
	Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
	And I go to line in "List" table
			| Number |
			| 144    |
	And I move one line down in "List" table and select line
	And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
	* Select Goods Receipt for Purchase invoice
		And I click the button named "FormSelectAll"
		And I click "Ok" button
	* Check filling in Purchase invoice 145
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		And I save number of "ItemList" table lines as "N"
		If "N" variable is equal to 1 Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
			And "ItemList" table contains lines
			| 'Price'  | 'Item'  | 'Item key' | 'Q'      | 'Unit' | 'Total amount' | 'Store'    | 'Purchase order'      |
			| '200,00' | 'Dress' | 'M/White'  | '10,000' | 'pcs'  | '2 360,00'     | 'Store 02' | 'Purchase order 145*' |
			And I move to "Other" tab
			And I input "148" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "148" text in "Number" field
		If "N" variable is equal to 3 Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron 1"
			And "ItemList" table contains lines
				| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      |
				| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000' | 'pcs'  | '720,00'     | '4 000,00'   | '4 720,00'     | 'Store 02' | 'Purchase order 144*' |
				| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000' | 'pcs'  | '756,00'     | '4 200,00'   | '4 956,00'     | 'Store 02' | 'Purchase order 144*' |
				| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '1 134,00'   | '6 300,00'   | '7 434,00'     | 'Store 02' | 'Purchase order 144*' |
			And I move to "Other" tab
			And I input "147" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "147" text in "Number" field
		And I click "Post and close" button
	When I click command interface button "Purchase invoice (create)"
	* Check filling in Purchase invoice 144
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Company" became equal to "Main Company"
		Then the form attribute named "Store" became equal to "Store 02"
		And I save number of "ItemList" table lines as "N"
		If "N" variable is equal to 1 Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
			And "ItemList" table contains lines
			| 'Price'  | 'Item'  | 'Item key' | 'Q'      | 'Unit' | 'Total amount' | 'Store'    | 'Purchase order'      |
			| '200,00' | 'Dress' | 'M/White'  | '10,000' | 'pcs'  | '2 360,00'     | 'Store 02' | 'Purchase order 145*' |
			And I move to "Other" tab
			And I input "148" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "148" text in "Number" field
		If "N" variable is equal to 3 Then
			Then the form attribute named "Agreement" became equal to "Vendor Ferron 1"
			And "ItemList" table contains lines
				| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount' | 'Total amount' | 'Store'    | 'Purchase order'      |
				| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000' | 'pcs'  | '720,00'     | '4 000,00'   | '4 720,00'     | 'Store 02' | 'Purchase order 144*' |
				| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000' | 'pcs'  | '756,00'     | '4 200,00'   | '4 956,00'     | 'Store 02' | 'Purchase order 144*' |
				| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '1 134,00'   | '6 300,00'   | '7 434,00'     | 'Store 02' | 'Purchase order 144*' |
			And I move to "Other" tab
			And I input "147" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "147" text in "Number" field
		And I click "Post and close" button
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I click "Refresh" button
		And "List" table contains lines
			| 'Number'  |
			| '147'       |
			| '148'       |
		And I close all client application windows



Scenario: _090322 create Purchase invoice for several Purchase order with different companies, Purchase invoice after Goods receipt
# should be created 2 Purchase invoice
	Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
	And I go to line in "List" table
			| Number |
			| 148    |
	And I move one line down in "List" table and select line
	And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
	* Select Goods Receipt for Purchase invoice
		And I click the button named "FormSelectAll"
		And I click "Ok" button
	* Check filling in Purchase invoice 148
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 360,00'     | 'Purchase order 149*' |
			And I move to "Other" tab
			And I input "149" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "149" text in "Number" field
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Price'  | 'Item key'  | 'Store'    | 'Unit' | 'Q'      | 'Offers amount' | 'Tax amount' | 'Total amount' | 'Purchase order'      |
				| 'Dress'    | '200,00' | 'M/White'   | 'Store 02' | 'pcs'  | '20,000' | ''              | ''           | '4 000,00'     | 'Purchase order 148*' |
				| 'Dress'    | '210,00' | 'L/Green'   | 'Store 02' | 'pcs'  | '20,000' | ''              | ''           | '4 200,00'     | 'Purchase order 148*' |
				| 'Trousers' | '210,00' | '36/Yellow' | 'Store 02' | 'pcs'  | '30,000' | ''              | ''           | '6 300,00'     | 'Purchase order 148*' |
			And I move to "Other" tab
			And I input "150" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "150" text in "Number" field
	And I click "Post and close" button
	When I click command interface button "Purchase invoice (create)"
	* Check filling in second Purchase invoice 149
		Then the form attribute named "Partner" became equal to "Partner Ferron 1"
		Then the form attribute named "LegalName" became equal to "Company Ferron BP"
		Then the form attribute named "Agreement" became equal to "Vendor Ferron Discount"
		Then the form attribute named "Store" became equal to "Store 02"
		If the field named "Company" is equal to "Main Company" Then
			And "ItemList" table contains lines
				| 'Item'  | 'Price'  | 'Item key' | 'Store'    | 'Unit' | 'Q'      | 'Total amount' | 'Purchase order'      |
				| 'Dress' | '200,00' | 'M/White'  | 'Store 02' | 'pcs'  | '10,000' | '2 360,00'     | 'Purchase order 149*' |
			And I move to "Other" tab
			And I input "149" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "149" text in "Number" field
		If the field named "Company" is equal to "Second Company" Then
			And "ItemList" table contains lines
				| 'Item'     | 'Price'  | 'Item key'  | 'Store'    | 'Unit' | 'Q'      | 'Offers amount' | 'Tax amount' | 'Total amount' | 'Purchase order'      |
				| 'Dress'    | '200,00' | 'M/White'   | 'Store 02' | 'pcs'  | '20,000' | ''              | ''           | '4 000,00'     | 'Purchase order 148*' |
				| 'Dress'    | '210,00' | 'L/Green'   | 'Store 02' | 'pcs'  | '20,000' | ''              | ''           | '4 200,00'     | 'Purchase order 148*' |
				| 'Trousers' | '210,00' | '36/Yellow' | 'Store 02' | 'pcs'  | '30,000' | ''              | ''           | '6 300,00'     | 'Purchase order 148*' |
			And I move to "Other" tab
			And I input "150" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "150" text in "Number" field
	And I click "Post and close" button
	* Create Purchase invoice
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And I click "Refresh" button
		And "List" table contains lines
			| 'Number'  |
			| '149'       |
			| '150'       |
		And I close all client application windows

Scenario: _090323 create one Purchase order - several Goods receipt - one Purchase invoice
	* Create Purchase order
		When create the first test PO for a test on the creation mechanism based on
		* Save the document number
			And I save the value of "Number" field as "$$NumberPurchaseOrder090323$$"
			And I set checkbox "Goods receipt before purchase invoice"
			And I click "Post and close" button
	* Create 3 Goods receipt
		* First GR
			Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
			And I go to line in "List" table
				| Number |
				| $$NumberPurchaseOrder090323$$    |
			And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
			And I activate "Quantity" field in "ItemList" table
			And I select current line in "ItemList" table
			And I input "5,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I go to line in "ItemList" table
				| 'Item'  | 'Item key' | 'Quantity' |
				| 'Dress' | 'L/Green'  | '20,000'   |
			And I select current line in "ItemList" table
			And I input "5,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I go to line in "ItemList" table
				| 'Item'     | 'Item key'  | 'Quantity' |
				| 'Trousers' | '36/Yellow' | '30,000'   |
			And I select current line in "ItemList" table
			And I input "10,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I click "Post and close" button
		* Second GR
			Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
			And I go to line in "List" table
				| Number |
				| $$NumberPurchaseOrder090323$$    |
			And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
			And I activate "Quantity" field in "ItemList" table
			And I select current line in "ItemList" table
			And I input "8,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I go to line in "ItemList" table
				| 'Item'  | 'Item key' |
				| 'Dress' | 'L/Green'  |
			And I select current line in "ItemList" table
			And I input "8,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I go to line in "ItemList" table
				| 'Item'     | 'Item key'  |
				| 'Trousers' | '36/Yellow' |
			And I select current line in "ItemList" table
			And I input "12,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I click "Post and close" button
		* Third GR
			Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
			And I go to line in "List" table
				| Number |
				| $$NumberPurchaseOrder090323$$    |
			And I click the button named "FormDocumentGoodsReceiptGenerateGoodsReceipt"
			And I activate "Quantity" field in "ItemList" table
			And I select current line in "ItemList" table
			And I input "7,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I go to line in "ItemList" table
				| 'Item'  | 'Item key' |
				| 'Dress' | 'L/Green'  |
			And I select current line in "ItemList" table
			And I input "7,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I go to line in "ItemList" table
				| 'Item'     | 'Item key'  |
				| 'Trousers' | '36/Yellow' |
			And I select current line in "ItemList" table
			And I input "8,000" text in "Quantity" field of "ItemList" table
			And I finish line editing in "ItemList" table
			And I click "Post and close" button
	* Create Purchase invoice for 3 Goods receipt
		Given I open hyperlink "e1cib/list/Document.PurchaseOrder"
		And I go to line in "List" table
			| Number |
			| $$NumberPurchaseOrder090323$$    |
		And I click the button named "FormDocumentPurchaseInvoiceGeneratePurchaseInvoice"
		And I click the button named "FormSelectAll"
		And I click "Ok" button
		And "ItemList" table contains lines
			| 'Price'  | 'Item'     | 'VAT' | 'Item key'  | 'Q'      | 'Unit' | 'Tax amount' | 'Net amount'   | 'Total amount' | 'Store'    |
			| '200,00' | 'Dress'    | '18%' | 'M/White'   | '20,000'  | 'pcs'  | '610,17'     | '3 389,83'     | '4 000,00'     | 'Store 02' |
			| '210,00' | 'Dress'    | '18%' | 'L/Green'   | '20,000'  | 'pcs'  | '640,68'     | '3 559,32'     | '4 200,00'     | 'Store 02' |
			| '210,00' | 'Trousers' | '18%' | '36/Yellow' | '30,000' | 'pcs'  | '961,02'     | '5 338,98'     | '6 300,00'     | 'Store 02' |
		Then the form attribute named "ItemListTotalTaxAmount" became equal to "2 211,87"
		And I close all client application windows