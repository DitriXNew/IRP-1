#Region Posting

Function PostingGetDocumentDataTables(Ref, Cancel, PostingMode, Parameters, AddInfo = Undefined) Export
	
	AccReg = Metadata.AccumulationRegisters;
	Tables = New Structure();
	Tables.Insert("AccountBalance", PostingServer.CreateTable(AccReg.AccountBalance));
	Tables.Insert("PlaningCashTransactions", PostingServer.CreateTable(AccReg.PlaningCashTransactions));
	Tables.Insert("CashInTransit", PostingServer.CreateTable(AccReg.CashInTransit));

	Query_AccountBalance = New Query();
	Query_AccountBalance.Text = GetQueryText_CashStatement_AccountBalance();
	Query_AccountBalance.SetParameter("Ref", Ref);
	QueryResult_AccountBalance = Query_AccountBalance.Execute();
	AccountBalance = QueryResult_AccountBalance.Unload();

	Query_PlaningCashTransactions = New Query();
	Query_PlaningCashTransactions.Text = GetQueryText_CashStatement_PlaningCashTransactions();
	Query_PlaningCashTransactions.SetParameter("Ref", Ref);
	QueryResult_PlaningCashTransactions = Query_PlaningCashTransactions.Execute();
	PlaningCashTransactions = QueryResult_PlaningCashTransactions.Unload();

	Query_CashInTransit = New Query();
	Query_CashInTransit.Text = GetQueryText_CashStatement_CashInTransit();
	Query_CashInTransit.SetParameter("Ref", Ref);
	QueryResult_CashInTransit = Query_CashInTransit.Execute();
	CashInTransit = QueryResult_CashInTransit.Unload();

	Tables.AccountBalance = AccountBalance;
	Tables.PlaningCashTransactions = PlaningCashTransactions;
	Tables.CashInTransit = CashInTransit;
	Return Tables;
EndFunction

Function GetQueryText_CashStatement_AccountBalance()
	Return "SELECT
	|	Table.Ref.Company AS Company,
	|	Table.Account.Currency AS Currency,
	|	Table.Account,
	|	SUM(Table.Amount) AS Amount,
	|	Table.Ref.Date AS Period,
	|	Table.Key
	|FROM
	|	Document.CashStatement.PaymentList AS Table
	|WHERE
	|	Table.Ref = &Ref
	|	AND Table.Account.Type = VALUE(Enum.CashAccountTypes.POS)
	|GROUP BY
	|	Table.Ref.Company,
	|	Table.Account.Currency,
	|	Table.Account,
	|	Table.Ref.Date,
	|	Table.Key";
EndFunction	

Function GetQueryText_CashStatement_PlaningCashTransactions()
	Return "SELECT
	|	Table.Ref.Company AS Company,
	|	&Ref AS BasisDocument,
	|	Table.Ref.CashAccount AS Account,
	|	Table.Account.Currency AS Currency,
	|	VALUE(Enum.CashFlowDirections.Incoming) AS CashFlowDirection,
	|	SUM(Table.Amount) AS Amount,
	|	Table.Ref.Date AS Period,
	|	Table.Key
	|FROM
	|	Document.CashStatement.PaymentList AS Table
	|WHERE
	|	Table.Ref = &Ref
	|	AND Table.Account.Type = VALUE(Enum.CashAccountTypes.POS)
	|GROUP BY
	|	Table.Ref.Company,
	|	Table.Account.Currency,
	|	Table.Ref.CashAccount,
	|	Table.Ref.Date,
	|	Table.Key,
	|	VALUE(Enum.CashFlowDirections.Incoming)";
EndFunction	

Function GetQueryText_CashStatement_CashInTransit()
	Return "SELECT
	|	Table.Ref.Company AS Company,
	|	&Ref AS BasisDocument,
	|	Table.Account AS FromAccount,
	|	(&Ref).CashAccount AS ToAccount,
	|	(&Ref).CashAccount.Currency AS Currency,
	|	SUM(Table.Amount) AS Amount,
	|	Table.Ref.Date AS Period,
	|	Table.Key
	|FROM
	|	Document.CashStatement.PaymentList AS Table
	|WHERE
	|	Table.Ref = &Ref
	|	AND Table.Account.Type = VALUE(Enum.CashAccountTypes.POS)
	|GROUP BY
	|	Table.Ref.Company,
	|	Table.Account.Currency,
	|	Table.Account,
	|	Table.Ref.Date,
	|	Table.Key,
	|	(&Ref).CashAccount,
	|	(&Ref).CashAccount.Currency";
EndFunction

Function PostingGetLockDataSource(Ref, Cancel, PostingMode, Parameters, AddInfo = Undefined) Export
	DocumentDataTables = Parameters.DocumentDataTables;
	DataMapWithLockFields = New Map();
		
	// AccountBalance
	AccountBalance = AccumulationRegisters.AccountBalance.GetLockFields(DocumentDataTables.AccountBalance);
	DataMapWithLockFields.Insert(AccountBalance.RegisterName, AccountBalance.LockInfo);
	
	// CashInTransit
	CashInTransit = AccumulationRegisters.CashInTransit.GetLockFields(DocumentDataTables.CashInTransit);
	DataMapWithLockFields.Insert(CashInTransit.RegisterName, CashInTransit.LockInfo);
	
	// PlaningCashTransactions
	PlaningCashTransactions = AccumulationRegisters.PlaningCashTransactions.GetLockFields(DocumentDataTables.PlaningCashTransactions);
	DataMapWithLockFields.Insert(PlaningCashTransactions.RegisterName, PlaningCashTransactions.LockInfo);
	Return DataMapWithLockFields;
EndFunction

Procedure PostingCheckBeforeWrite(Ref, Cancel, PostingMode, Parameters, AddInfo = Undefined) Export
	Return;
EndProcedure

Function PostingGetPostingDataTables(Ref, Cancel, PostingMode, Parameters, AddInfo = Undefined) Export
	PostingDataTables = New Map();
			
	// AccountBalance
	PostingDataTables.Insert(Parameters.Object.RegisterRecords.AccountBalance,
		New Structure("RecordType, RecordSet",
			AccumulationRecordType.Expense,
			Parameters.DocumentDataTables.AccountBalance));
			
	// CashInTransit
	PostingDataTables.Insert(Parameters.Object.RegisterRecords.CashInTransit,
		New Structure("RecordType, RecordSet",
			AccumulationRecordType.Receipt,
			Parameters.DocumentDataTables.CashInTransit));
			
	// PlaningCashTransactions
	PostingDataTables.Insert(Parameters.Object.RegisterRecords.PlaningCashTransactions,
		New Structure("RecordType, RecordSet",
			AccumulationRecordType.Expense,
			Parameters.DocumentDataTables.PlaningCashTransactions));	
	Return PostingDataTables;
EndFunction

Procedure PostingCheckAfterWrite(Ref, Cancel, PostingMode, Parameters, AddInfo = Undefined) Export
	Return;
EndProcedure

#EndRegion

#Region Undoposting

Function UndopostingGetDocumentDataTables(Ref, Cancel, Parameters, AddInfo = Undefined) Export
	Return Undefined;
EndFunction

Function UndopostingGetLockDataSource(Ref, Cancel, Parameters, AddInfo = Undefined) Export
	Return Undefined;
EndFunction

Procedure UndopostingCheckBeforeWrite(Ref, Cancel, Parameters, AddInfo = Undefined) Export
	Return;
EndProcedure

Procedure UndopostingCheckAfterWrite(Ref, Cancel, Parameters, AddInfo = Undefined) Export
	Return;
EndProcedure

#EndRegion

#Region PrintForm

Function GetPrintForm(Ref, PrintFormName, AddInfo = Undefined) Export
	Return Undefined;
EndFunction

#EndRegion
