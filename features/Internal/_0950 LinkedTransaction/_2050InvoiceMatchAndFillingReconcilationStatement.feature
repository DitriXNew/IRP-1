﻿#language: en
@tree
@Positive
@Group13
Feature: buttons for selecting base documents



Background:
	Given I launch TestClient opening script or connect the existing one

# Crystal partners

Scenario: _2050001 preparation
	* Check for Purchase invoice by Crystal
		Given I open hyperlink "e1cib/list/Document.PurchaseInvoice"
		And "List" table contains lines
		| 'Number' | 'Legal name'   | 'Partner' | 'Currency' | 'Company'      |
		| '9 000'  | 'Company Adel' | 'Crystal' | 'TRY'      | 'Main Company' |
		| '9 001'  | 'Company Adel' | 'Crystal' | 'TRY'      | 'Main Company' |
	* Check for Purchase invoice by Crystal
		Given I open hyperlink "e1cib/list/Document.SalesInvoice"
		And "List" table contains lines
		| 'Number' | 'Legal name'   | 'Partner' | 'Currency' |
		| '9 000'  | 'Company Adel' | 'Crystal' | 'TRY'      |
		| '9 002'  | 'Company Adel' | 'Crystal' | 'TRY'      |
		| '9 003'  | 'Company Adel' | 'Crystal' | 'TRY'      |
	* Create Bank payment without reference to the partner term and the document
		Given I open hyperlink "e1cib/list/Document.BankPayment"
		And I click the button named "FormCreate"
		And I select "Payment to the vendor" exact value from "Transaction type" drop-down list
		* Filling in the details of the document
			And I click Select button of "Company" field
			And I go to line in "List" table
				| Description  |
				| Main Company |
			And I select current line in "List" table
			And I click Select button of "Account" field
			And I go to line in "List" table
				| Description    |
				| Bank account, TRY |
			And I select current line in "List" table
		* Change the document number to 700
			And I input "0" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "700" text in "Number" field
			And I input begin of the current month date in "Date" field
		And in the table "PaymentList" I click the button named "PaymentListAdd"
		* Filling in partners in a tabular part
			And I activate "Partner" field in "PaymentList" table
			And I click choice button of "Partner" attribute in "PaymentList" table
			And I go to line in "List" table
				| Description |
				| Crystal   |
			And I select current line in "List" table
		* Filling in amount in a tabular part
			And I activate "Amount" field in "PaymentList" table
			And I input "1000,00" text in "Amount" field of "PaymentList" table
			And I finish line editing in "PaymentList" table
		And I click "Post and close" button
	* Create Bank receipt without reference to the partner term and the document
		Given I open hyperlink "e1cib/list/Document.BankReceipt"
		And I click the button named "FormCreate"
		And I select "Payment from customer" exact value from "Transaction type" drop-down list
		* Filling in the details of the document
			And I click Select button of "Company" field
			And I go to line in "List" table
				| Description  |
				| Main Company |
			And I select current line in "List" table
			And I click Select button of "Account" field
			And I go to line in "List" table
				| Description    |
				| Bank account, TRY |
			And I select current line in "List" table
		* Change the document number to 700
			And I input "0" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "700" text in "Number" field
			And I input begin of the current month date in "Date" field
		And in the table "PaymentList" I click the button named "PaymentListAdd"
		* Filling in partners in a tabular part
			And I activate "Partner" field in "PaymentList" table
			And I click choice button of "Partner" attribute in "PaymentList" table
			And I go to line in "List" table
				| Description |
				| Crystal   |
			And I select current line in "List" table
		* Filling in amount in a tabular part
			And I activate "Amount" field in "PaymentList" table
			And I input "20000,00" text in "Amount" field of "PaymentList" table
			And I finish line editing in "PaymentList" table
		And I click "Post and close" button
	* Create Cash receipt linked by document
		Given I open hyperlink "e1cib/list/Document.CashReceipt"
		And I click the button named "FormCreate"
		And I select "Payment from customer" exact value from "Transaction type" drop-down list
		* Filling in the details of the document
			And I click Select button of "Currency" field
			And I go to line in "List" table
				| Code | Description  |
				| TRY  | Turkish lira |
			And I select current line in "List" table
			And I click Select button of "Company" field
			And I go to line in "List" table
				| Description  |
				| Main Company |
			And I select current line in "List" table
			And I click Select button of "Cash account" field
			And I go to line in "List" table
				| Description    |
				| Cash desk №3 |
			And I select current line in "List" table
		* Change the document number to 700
			And I input "0" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "700" text in "Number" field
			And I input begin of the current month date in "Date" field
		And in the table "PaymentList" I click the button named "PaymentListAdd"
		* Filling in partners in a tabular part
			And I activate "Partner" field in "PaymentList" table
			And I click choice button of "Partner" attribute in "PaymentList" table
			And I go to line in "List" table
				| Description |
				| Crystal   |
			And I select current line in "List" table
		* Filling in an Partner term
			And I click choice button of "Partner term" attribute in "PaymentList" table
			And I go to line in "List" table
				| 'Description'           |
				| 'Basic Partner terms, TRY' |
			And I select current line in "List" table
		* Filling in basis documents in a tabular part
			# temporarily
			And Delay 2
			And I finish line editing in "PaymentList" table
			And I activate "Basis document" field in "PaymentList" table
			And I select current line in "PaymentList" table
			# temporarily
			And Delay 2
			Given form with "Documents for incoming payment" header is opened in the active window
			And I go to line in "List" table
				| 'Document amount' | 'Legal name'   | 'Partner' |
				| '1 740,00'        | 'Company Adel' | 'Crystal' |
			And I click "Select" button
		* Filling in amount in a tabular part
			And I activate "Amount" field in "PaymentList" table
			And I input "5000,00" text in "Amount" field of "PaymentList" table
			And I finish line editing in "PaymentList" table
		And I click "Post and close" button
	* Create Cash payment without reference to the partner term and the document
		Given I open hyperlink "e1cib/list/Document.CashPayment"
		And I click the button named "FormCreate"
		And I select "Payment to the vendor" exact value from "Transaction type" drop-down list
		* Filling in the details of the document
			And I click Select button of "Currency" field
			And I go to line in "List" table
				| Code | Description  |
				| TRY  | Turkish lira |
			And I select current line in "List" table
			And I click Select button of "Company" field
			And I go to line in "List" table
				| Description  |
				| Main Company |
			And I select current line in "List" table
			And I click Select button of "Cash account" field
			And I go to line in "List" table
				| Description    |
				| Cash desk №3 |
			And I select current line in "List" table
		* Change the document number to 700
			And I input "0" text in "Number" field
			Then "1C:Enterprise" window is opened
			And I click "Yes" button
			And I input "700" text in "Number" field
			And I input begin of the current month date in "Date" field
		And in the table "PaymentList" I click the button named "PaymentListAdd"
		* Filling in partners in a tabular part
			And I activate "Partner" field in "PaymentList" table
			And I click choice button of "Partner" attribute in "PaymentList" table
			And I go to line in "List" table
				| Description |
				| Crystal   |
			And I select current line in "List" table
		* Filling in amount in a tabular part
			And I activate "Amount" field in "PaymentList" table
			And I input "5000,00" text in "Amount" field of "PaymentList" table
			And I finish line editing in "PaymentList" table
		And I click "Post and close" button

Scenario: 2050002 check filling in Reconcilation statement
	* Open a creation form Reconcilation statement
		Given I open hyperlink "e1cib/list/Document.ReconciliationStatement"
		And I click the button named "FormCreate"
	* Fill in a document header
		And I click Select button of "Currency" field
		And I go to line in "List" table
			| 'Code' | 'Description'  |
			| 'TRY'  | 'Turkish lira' |
		And I select current line in "List" table
		And I click Select button of "Begin period" field
		And I input begin of the current month date in "Begin period" field
		And I input end of the current month date in "End period" field
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Select button of "Partner" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Crystal' |
		And I select current line in "List" table
		And I click Select button of "Legal name" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Company Adel' |
		And I select current line in "List" table
	* Check filling in tabular part
		And in the table "Transactions" I click "Fill" button
		And "Transactions" table contains lines
		| 'Date' | 'Document'                | 'Credit'    | 'Debit'     |
		| '*'    | 'Cash payment 700*'       | ''          | '5 000,00'  |
		| '*'    | 'Cash receipt 700*'       | '5 000,00'  | ''          |
		| '*'    | 'Bank payment 700*'       | ''          | '1 000,00'  |
		| '*'    | 'Bank receipt 700*'       | '20 000,00' | ''          |
		| '*'    | 'Sales invoice 9 000*'    | ''          | '19 240,00' |
		| '*'    | 'Sales invoice 9 002*'    | ''          | '1 740,00'  |
		| '*'    | 'Sales invoice 9 003*'    | ''          | '28 686,30' |
		| '*'    | 'Purchase invoice 9 000*' | '13 570,00' | ''          |
		| '*'    | 'Purchase invoice 9 001*' | '4 212,60'  | ''          |
	* Check document
		And I click "Post" button
	* Clear movements
		And I click "Clear posting" button
		And I close all client application windows


Scenario: _2050003 check the autocomplete document Invoice match with the customer in advance
	* Open a creation form Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I click the button named "FormCreate"
	* Filling the document header
		And I select "With customer" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerArTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Sales invoice' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '9 000'  | 'Crystal' |
		And I activate "Partner" field in "List" table
		And I select current line in "List" table
	* Filling in the tabular part
		And I move to "Advances" tab
		And in the table "Advances" I click "Fill advances" button
	* Filling check
		And "Advances" table contains lines
			| 'Receipt document'  | 'Closing amount' | 'Partner' | 'Amount'    | 'Legal name'   | 'Currency' |
			| 'Bank receipt 700*' | '20 000,00'      | 'Crystal' | '20 000,00' | 'Company Adel' | 'TRY'      |
		Then the number of "Advances" table lines is "меньше или равно" 2
	And I close all client application windows

Scenario: _2050004 check the autocomplete document Invoice match with the vendor in advance
	* Open a creation form Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I click the button named "FormCreate"
	* Filling the document header
		And I select "With vendor" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerApTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Purchase invoice' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '9 000'  | 'Crystal' |
		And I activate "Partner" field in "List" table
		And I select current line in "List" table
	* Filling in the tabular part
		And I move to "Advances" tab
		And in the table "Advances" I click "Fill advances" button
	* Filling check
		And "Advances" table contains lines
			| 'Closing amount' | 'Payment document'  | 'Partner' | 'Amount'   | 'Legal name'   | 'Currency' |
			| '5 000,00'       | 'Cash payment 700*' | 'Crystal' | '5 000,00' | 'Company Adel' | 'TRY'      |
			| '1 000,00'       | 'Bank payment 700*' | 'Crystal' | '1 000,00' | 'Company Adel' | 'TRY'      |
		Then the number of "Advances" table lines is "меньше или равно" 2
	And I close all client application windows

Scenario: _2050005 check the movements of the Invoice match document with the vendor in advance (manual filling)
	* Open a creation form Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I click the button named "FormCreate"
	* Filling the document header
		And I select "With vendor" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerApTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Purchase invoice' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '9 000'  | 'Crystal' |
		And I activate "Partner" field in "List" table
		And I select current line in "List" table
	* Filling in the tabular part on advances (manually)
		And in the table "Advances" I click "Add" button
		# temporarily
		And I click choice button of "Payment document" attribute in "Advances" table
		# temporarily
		And I go to line in "" table
			| ''             |
			| 'Bank payment' |
		And I select current line in "" table
		And I activate "Bank payments*" window
		And I go to the first line in "List" table
		And I click the button named "FormChoose"
		And I activate "Partner" field in "Advances" table
		And I click choice button of "Partner" attribute in "Advances" table
		And I go to line in "List" table
			| 'Description' |
			| 'Crystal'     |
		And I select current line in "List" table
		And I activate "Legal name" field in "Advances" table
		And I click choice button of "Legal name" attribute in "Advances" table
		And I go to line in "List" table
			| 'Description'  |
			| 'Company Adel' |
		And I select current line in "List" table
		And I activate "Currency" field in "Advances" table
		And I click choice button of "Currency" attribute in "Advances" table
		And I go to line in "List" table
			| 'Code' | 'Description'  |
			| 'TRY'  | 'Turkish lira' |
		And I select current line in "List" table
		And I activate "Amount" field in "Advances" table
		And I input "1 000,00" text in "Amount" field of "Advances" table
		And I activate "Closing amount" field in "Advances" table
		And I input "1 000,00" text in "Closing amount" field of "Advances" table
		And I finish line editing in "Advances" table
	* Change the document number
		And I move to "Other" tab
		And I input "1" text in "Number" field
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		And I input "1" text in "Number" field
		And I click "Post" button
	* Check movements
		And I click "Registrations report" button
		Then "ResultTable" spreadsheet document is equal by template
		| 'Invoice match 1*'                    | ''            | ''       | ''          | ''             | ''                        | ''             | ''             | ''                  | ''                         | ''                         | ''                     |
		| 'Document registrations records'      | ''            | ''       | ''          | ''             | ''                        | ''             | ''             | ''                  | ''                         | ''                         | ''                     |
		| 'Register  "Advance to suppliers"'    | ''            | ''       | ''          | ''             | ''                        | ''             | ''             | ''                  | ''                         | ''                         | ''                     |
		| ''                                    | 'Record type' | 'Period' | 'Resources' | 'Dimensions'   | ''                        | ''             | ''             | ''                  | ''                         | 'Attributes'               | ''                     |
		| ''                                    | ''            | ''       | 'Amount'    | 'Company'      | 'Partner'                 | 'Legal name'   | 'Currency'     | 'Payment document'  | 'Multi currency movement type'   | 'Deferred calculation'     | ''                     |
		| ''                                    | 'Expense'     | '*'      | '171,23'    | 'Main Company' | 'Crystal'                 | 'Company Adel' | 'USD'          | 'Bank payment 700*' | 'Reporting currency'       | 'No'                       | ''                     |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Crystal'                 | 'Company Adel' | 'TRY'          | 'Bank payment 700*' | 'en description is empty' | 'No'                       | ''                     |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Crystal'                 | 'Company Adel' | 'TRY'          | 'Bank payment 700*' | 'Local currency'           | 'No'                       | ''                     |
		| ''                                    | ''            | ''       | ''          | ''             | ''                        | ''             | ''             | ''                  | ''                         | ''                         | ''                     |
		| 'Register  "Partner AP transactions"' | ''            | ''       | ''          | ''             | ''                        | ''             | ''             | ''                  | ''                         | ''                         | ''                     |
		| ''                                    | 'Record type' | 'Period' | 'Resources' | 'Dimensions'   | ''                        | ''             | ''             | ''                  | ''                         | ''                         | 'Attributes'           |
		| ''                                    | ''            | ''       | 'Amount'    | 'Company'      | 'Basis document'          | 'Partner'      | 'Legal name'   | 'Partner term'         | 'Currency'                 | 'Multi currency movement type'   | 'Deferred calculation' |
		| ''                                    | 'Expense'     | '*'      | '171,23'    | 'Main Company' | 'Purchase invoice 9 000*' | 'Crystal'      | 'Company Adel' | 'Vendor, TRY'       | 'USD'                      | 'Reporting currency'       | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Purchase invoice 9 000*' | 'Crystal'      | 'Company Adel' | 'Vendor, TRY'       | 'TRY'                      | 'en description is empty' | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Purchase invoice 9 000*' | 'Crystal'      | 'Company Adel' | 'Vendor, TRY'       | 'TRY'                      | 'Local currency'           | 'No'                   |
		And I close all client application windows

Scenario: _2050005 check the movements of the Invoice match document with the customer in advance (manual filling)
	* Open a creation form Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I click the button named "FormCreate"
	* Filling the document header
		And I select "With customer" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerArTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Sales invoice' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '9 000'  | 'Crystal' |
		And I activate "Partner" field in "List" table
		And I select current line in "List" table
	* Filling in the tabular part on advances (manually)
		And in the table "Advances" I click "Add" button
		# temporarily
		And I click choice button of "Receipt document" attribute in "Advances" table
		# temporarily
		And I go to line in "" table
			| ''             |
			| 'Bank receipt' |
		And I select current line in "" table
		And I activate "Bank receipts*" window
		And I go to the first line in "List" table
		And I click the button named "FormChoose"
		And I activate "Partner" field in "Advances" table
		And I click choice button of "Partner" attribute in "Advances" table
		And I go to line in "List" table
			| 'Description' |
			| 'Crystal'     |
		And I select current line in "List" table
		And I activate "Legal name" field in "Advances" table
		And I click choice button of "Legal name" attribute in "Advances" table
		And I go to line in "List" table
			| 'Description'  |
			| 'Company Adel' |
		And I select current line in "List" table
		And I activate "Currency" field in "Advances" table
		And I click choice button of "Currency" attribute in "Advances" table
		And I go to line in "List" table
			| 'Code' | 'Description'  |
			| 'TRY'  | 'Turkish lira' |
		And I select current line in "List" table
		And I activate "Amount" field in "Advances" table
		And I input "1 000,00" text in "Amount" field of "Advances" table
		And I activate "Closing amount" field in "Advances" table
		And I input "1 000,00" text in "Closing amount" field of "Advances" table
		And I finish line editing in "Advances" table
	* Change the document number
		And I move to "Other" tab
		And I input "2" text in "Number" field
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		And I input "2" text in "Number" field
		And I click "Post" button
	* Check movements
		And I click "Registrations report" button
		Then "ResultTable" spreadsheet document is equal by template
		| 'Invoice match 2*'                    | ''            | ''       | ''          | ''             | ''                     | ''             | ''             | ''                      | ''                         | ''                         | ''                     |
		| 'Document registrations records'      | ''            | ''       | ''          | ''             | ''                     | ''             | ''             | ''                      | ''                         | ''                         | ''                     |
		| 'Register  "Partner AR transactions"' | ''            | ''       | ''          | ''             | ''                     | ''             | ''             | ''                      | ''                         | ''                         | ''                     |
		| ''                                    | 'Record type' | 'Period' | 'Resources' | 'Dimensions'   | ''                     | ''             | ''             | ''                      | ''                         | ''                         | 'Attributes'           |
		| ''                                    | ''            | ''       | 'Amount'    | 'Company'      | 'Basis document'       | 'Partner'      | 'Legal name'   | 'Partner term'             | 'Currency'                 | 'Multi currency movement type'   | 'Deferred calculation' |
		| ''                                    | 'Expense'     | '*'      | '171,23'    | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal'      | 'Company Adel' | 'Basic Partner terms, TRY' | 'USD'                      | 'Reporting currency'       | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal'      | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'                      | 'en description is empty' | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal'      | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'                      | 'Local currency'           | 'No'                   |
		| ''                                    | ''            | ''       | ''          | ''             | ''                     | ''             | ''             | ''                      | ''                         | ''                         | ''                     |
		| 'Register  "Advance from customers"'  | ''            | ''       | ''          | ''             | ''                     | ''             | ''             | ''                      | ''                         | ''                         | ''                     |
		| ''                                    | 'Record type' | 'Period' | 'Resources' | 'Dimensions'   | ''                     | ''             | ''             | ''                      | ''                         | 'Attributes'               | ''                     |
		| ''                                    | ''            | ''       | 'Amount'    | 'Company'      | 'Partner'              | 'Legal name'   | 'Currency'     | 'Receipt document'      | 'Multi currency movement type'   | 'Deferred calculation'     | ''                     |
		| ''                                    | 'Expense'     | '*'      | '171,23'    | 'Main Company' | 'Crystal'              | 'Company Adel' | 'USD'          | 'Bank receipt 700*'     | 'Reporting currency'       | 'No'                       | ''                     |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Crystal'              | 'Company Adel' | 'TRY'          | 'Bank receipt 700*'     | 'en description is empty' | 'No'                       | ''                     |
		| ''                                    | 'Expense'     | '*'      | '1 000'     | 'Main Company' | 'Crystal'              | 'Company Adel' | 'TRY'          | 'Bank receipt 700*'     | 'Local currency'           | 'No'                       | ''                     |
		And I close all client application windows


Scenario: _2050006 check the movements of the Invoice match document with the client when transferring the amount from document to document
	* Open a creation form Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I click the button named "FormCreate"
	* Filling the document header
		And I select "With customer" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerArTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Sales invoice' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '9 000'  | 'Crystal' |
		And I activate "Partner" field in "List" table
		And I select current line in "List" table
	* Filling in the tabular part Transaction
		And in the table "Transactions" I click the button named "TransactionsAdd"
		And I click choice button of the attribute named "TransactionsPartnerArTransactionsBasisDocument" in "Transactions" table
		And I go to line in "" table
			| ''              |
			| 'Sales invoice' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' |
			| '9 002'  |
		And I select current line in "List" table
		And I activate field named "TransactionsPartner" in "Transactions" table
		And I click choice button of the attribute named "TransactionsPartner" in "Transactions" table
		And I go to line in "List" table
			| 'Description' |
			| 'Crystal'     |
		And I select current line in "List" table
		And I activate field named "TransactionsLegalName" in "Transactions" table
		And I click choice button of the attribute named "TransactionsLegalName" in "Transactions" table
		And I select current line in "List" table
		And I activate field named "TransactionsAgreement" in "Transactions" table
		And I click choice button of the attribute named "TransactionsAgreement" in "Transactions" table
		And I go to line in "List" table
			| 'AP/AR posting detail' | 'Description'           | 'Kind'    |
			| 'By documents'         | 'Basic Partner terms, TRY' | 'Regular' |
		And I select current line in "List" table
		And I activate field named "TransactionsCurrency" in "Transactions" table
		And I click choice button of the attribute named "TransactionsCurrency" in "Transactions" table
		And I go to line in "List" table
			| 'Code' | 'Description'  |
			| 'TRY'  | 'Turkish lira' |
		And I select current line in "List" table
		And I activate field named "TransactionsAmount" in "Transactions" table
		And I input "2 000,00" text in the field named "TransactionsAmount" of "Transactions" table
		And I finish line editing in "Transactions" table
		And I activate field named "TransactionsClosingAmount" in "Transactions" table
		And I select current line in "Transactions" table
		And I input "2 000,00" text in the field named "TransactionsClosingAmount" of "Transactions" table
		And I finish line editing in "Transactions" table
	* Change the document number
		And I move to "Other" tab
		And I input "12" text in "Number" field
		Then "1C:Enterprise" window is opened
		And I click "Yes" button
		And I input "3" text in "Number" field
	* Check movements
		And I click "Post" button
		And I click "Registrations report" button
		Then "ResultTable" spreadsheet document is equal by template
		| 'Invoice match 3*'                    | ''            | ''       | ''          | ''             | ''                     | ''        | ''             | ''                      | ''         | ''                         | ''                     |
		| 'Document registrations records'      | ''            | ''       | ''          | ''             | ''                     | ''        | ''             | ''                      | ''         | ''                         | ''                     |
		| 'Register  "Partner AR transactions"' | ''            | ''       | ''          | ''             | ''                     | ''        | ''             | ''                      | ''         | ''                         | ''                     |
		| ''                                    | 'Record type' | 'Period' | 'Resources' | 'Dimensions'   | ''                     | ''        | ''             | ''                      | ''         | ''                         | 'Attributes'           |
		| ''                                    | ''            | ''       | 'Amount'    | 'Company'      | 'Basis document'       | 'Partner' | 'Legal name'   | 'Partner term'             | 'Currency' | 'Multi currency movement type'   | 'Deferred calculation' |
		| ''                                    | 'Expense'     | '*'      | '-2 000'    | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'en description is empty' | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '-2 000'    | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'Local currency'           | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '-2 000'    | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'TRY'                      | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '-342,47'   | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'USD'      | 'Reporting currency'       | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '342,47'    | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'USD'      | 'Reporting currency'       | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '2 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'en description is empty' | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '2 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'Local currency'           | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '2 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'TRY'                      | 'No'                   |
		And I close all client application windows

Scenario: _2050007 check of movements in case of cancellation and re-post of Invoice match №3
	* Select Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I go to line in "List" table
			| 'Number' |
			| '3'     |
		And in the table "List" I click the button named "ListContextMenuUndoPosting"
	* Check for no movement
		And I click "Registrations report" button
		And "ResultTable" spreadsheet document does not contain values
		| Register  "Partner AR transactions" |
		And I close current window
	* Re-post and check movements
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I go to line in "List" table
			| 'Number' |
			| '3'     |
		And in the table "List" I click the button named "ListContextMenuPost"
		And I click "Registrations report" button
		Then "ResultTable" spreadsheet document is equal by template
		| 'Invoice match 3*'                    | ''            | ''       | ''          | ''             | ''                     | ''        | ''             | ''                      | ''         | ''                         | ''                     |
		| 'Document registrations records'      | ''            | ''       | ''          | ''             | ''                     | ''        | ''             | ''                      | ''         | ''                         | ''                     |
		| 'Register  "Partner AR transactions"' | ''            | ''       | ''          | ''             | ''                     | ''        | ''             | ''                      | ''         | ''                         | ''                     |
		| ''                                    | 'Record type' | 'Period' | 'Resources' | 'Dimensions'   | ''                     | ''        | ''             | ''                      | ''         | ''                         | 'Attributes'           |
		| ''                                    | ''            | ''       | 'Amount'    | 'Company'      | 'Basis document'       | 'Partner' | 'Legal name'   | 'Partner term'             | 'Currency' | 'Multi currency movement type'   | 'Deferred calculation' |
		| ''                                    | 'Expense'     | '*'      | '-2 000'    | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'en description is empty' | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '-2 000'    | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'Local currency'           | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '-2 000'    | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'TRY'                      | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '-342,47'   | 'Main Company' | 'Sales invoice 9 002*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'USD'      | 'Reporting currency'       | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '342,47'    | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'USD'      | 'Reporting currency'       | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '2 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'en description is empty' | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '2 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'Local currency'           | 'No'                   |
		| ''                                    | 'Expense'     | '*'      | '2 000'     | 'Main Company' | 'Sales invoice 9 000*' | 'Crystal' | 'Company Adel' | 'Basic Partner terms, TRY' | 'TRY'      | 'TRY'                      | 'No'                   |
		And I close all client application windows

Scenario: _2050008 check the availability of Purchase return and Sales return choices in the Invoice match document
	* Open a creation form Invoice match
		Given I open hyperlink "e1cib/list/Document.InvoiceMatch"
		And I click the button named "FormCreate"
	* Filling the document header (transaction type - with customer)
		And I select "With customer" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerArTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Purchase return' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '1'      | 'Ferron BP' |
		And I select current line in "List" table
		Then the form attribute named "PartnerArTransactionsBasisDocument" became equal to "Purchase return 1*" template
	* Filling the document header (transaction type - with vendor)
		And I select "With vendor" exact value from "Operation type" drop-down list
		And I click Select button of "Company" field
		And I go to line in "List" table
			| 'Description'  |
			| 'Main Company' |
		And I select current line in "List" table
		And I click Choice button of the field named "PartnerApTransactionsBasisDocument"
		And I go to line in "" table
			| 'Column1'       |
			| 'Sales return' |
		And I select current line in "" table
		And I go to line in "List" table
			| 'Number' | 'Partner' |
			| '1'      | 'Kalipso' |
		And I select current line in "List" table
		Then the form attribute named "PartnerArTransactionsBasisDocument" became equal to "Purchase return 1*" template
	And I close all client application windows



