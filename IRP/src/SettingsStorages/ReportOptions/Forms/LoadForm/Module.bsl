

&AtClient
Procedure OptionsListSelection(Item, RowSelected, Field, StandardProcessing)
	StandardProcessing = False;
	CurrentData = Items.OptionsList.CurrentData;
	LoadChosenSetting(CurrentData.OptionKey);
EndProcedure

&AtClient
Procedure LoadSetting(Command)
	CurrentData = Items.OptionsList.CurrentData;
	If CurrentData = Undefined Then
		Return;
	EndIf;
	LoadChosenSetting(CurrentData.OptionKey);
EndProcedure

&AtClient
Procedure LoadChosenSetting(Val OptionKey)
	Close(New SettingsChoice(OptionKey));
EndProcedure

&AtServer
Procedure OnCreateAtServer(Cancel, StandardProcessing)
	ThisObject.ObjectKey = Parameters.ObjectKey;
	ThisObject.CurrentSettingsKey = Parameters.CurrentSettingsKey;
	
	OptionsList.Parameters.SetParameterValue("ObjectKey", ThisObject.ObjectKey);
	OptionsList.Parameters.SetParameterValue("CurrentSettingsKey", ThisObject.CurrentSettingsKey);
	OptionsList.Parameters.SetParameterValue("Author", SessionParameters.CurrentUser);
	
	Items.OptionsList.CurrentRow = Catalogs.ReportOptions.FindByCode(ThisObject.CurrentSettingsKey);
EndProcedure