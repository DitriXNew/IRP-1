Procedure BeforeWrite(Cancel, WriteMode, PostingMode)
	If DataExchange.Load Then
		Return;
	EndIf;	

	ThisObject.DocumentAmount = ItemList.Total("TotalAmount");
EndProcedure

Procedure FillCheckProcessing(Cancel, CheckedAttributes)
	If DocumentsServer.CheckItemListStores(ThisObject) Then
		Cancel = True;
	EndIf;
	For RowIndex = 0 To (ThisObject.ItemList.Count() - 1) Do
		Row = ThisObject.ItemList[RowIndex];
		If Not ValueIsFilled(Row.ProcurementMethod) And Row.ItemKey.Item.ItemType.Type = Enums.ItemTypes.Product Then
			MessageText = StrTemplate(R().Error_010, R().S_023);
			CommonFunctionsClientServer.ShowUsersMessage(MessageText, "Object.ItemList[" + RowIndex
				+ "].ProcurementMethod", "Object.ItemList");
			Cancel = True;
		EndIf;
	EndDo;
EndProcedure

Procedure Posting(Cancel, PostingMode)
	PostingServer.Post(ThisObject, Cancel, PostingMode, ThisObject.AdditionalProperties);
EndProcedure

Procedure UndoPosting(Cancel)
	UndopostingServer.Undopost(ThisObject, Cancel, ThisObject.AdditionalProperties);
EndProcedure

Procedure Filling(FillingData, FillingText, StandardProcessing)
	If FillingData = Undefined Then
		Return;
	EndIf;

	FillPropertyValues(ThisObject, FillingData);
	Number = Undefined;
	Date = Undefined;
EndProcedure

Procedure OnCopy(CopiedObject)
	LinkedTables = New Array();
	LinkedTables.Add(SpecialOffers);
	LinkedTables.Add(TaxList);
	LinkedTables.Add(Currencies);
	DocumentsServer.SetNewTableUUID(ItemList, LinkedTables);
EndProcedure

Procedure OnWrite(Cancel)
	If DataExchange.Load Then
		Return;
	EndIf;	
EndProcedure

Procedure BeforeDelete(Cancel)
	If DataExchange.Load Then
		Return;
	EndIf;
EndProcedure
