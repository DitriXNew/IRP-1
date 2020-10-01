Function Strings(Lang) Export
	
	Strings = New Structure();
	
	#Region Equipment
	Strings.Insert("Eq_001", NStr("en='Installed';ru='Установлен'", Lang));
	Strings.Insert("Eq_002", NStr("en='Not installed';ru='Не установлен'", Lang));
	Strings.Insert("Eq_003", NStr("en='There are no errors.';ru='Ошибок нет.'", Lang));
	Strings.Insert("Eq_004", NStr("en='Scanner is connected.';ru='Сканер подключен.'", Lang));
	Strings.Insert("Eq_005", NStr("en='Error. Scanner not connected.';ru='Ошибка. Сканер не подключен.'", Lang));
	
	Strings.Insert("EqError_001", NStr("en='The device is connected. The device must be disabled before the operation.';ru='Устройство подключено. Устройство должно быть отключено перед началом работы.'", Lang));

	Strings.Insert("EqError_002", NStr("en='The device driver could not be downloaded.
|Check that the driver is correctly installed and registered in the system.';ru='Драйвер устройства не может быть загружен. 
|Проверьте, что драйвер правильно установлен и зарегистрирован в системе.'", Lang));

	#EndRegion
	
	
	#Region POS
	
	Strings.Insert("POS_s1", NStr("en='Amount paid is less than amount of the document';ru='Сумма оплаты меньше суммы документа'", Lang));
	Strings.Insert("POS_s2", NStr("en='Card fees are more than the amount of the document';ru='Сумма оплат по безналичному расчету больше суммы документа'", Lang));
	Strings.Insert("POS_s3", NStr("en='There is no need to use cash, as card payments are sufficient to pay';ru='Суммы по безналичному расчету для оплаты достаточно. Нет необходимости дополнительно использовать наличный расчет. '", Lang));
	Strings.Insert("POS_s4", NStr("en='Amounts of payments are incorrect';ru='Суммы оплат некорректны'", Lang));
	#EndRegion
	
	#Region Service
	
	// %1 - localhost
	// %2 - 8080 
	// %3 - There is no internet connection
	Strings.Insert("S_002", NStr("en='Cannot connect to %1:%2. Details: %3';de='Verbindung mit %1:%2 kann nicht hergestellt werden. Details: %3';fr='Impossible de se connecter à %1 : %2. Détails : %3';ru='Не получается подключиться к %1:%2. Подробности: %3.'", Lang));
	
	// %1 - localhost
	// %2 - 8080
	Strings.Insert("S_003", NStr("en='Received response from %1:%2';de='Erhaltene Antwort von %1: %2';fr='Réponse reçue du %1 : %2';ru='Полученный ответ от %1:%2'", Lang));
	Strings.Insert("S_004", NStr("en='Resource address is empty.';de='Ressourcenadresse ist leer.';fr='L’adresse de la ressource est vide.';ru='Адрес ресурса не заполнен.'", Lang));
	
	// %1 - connection_to_other_system
	Strings.Insert("S_005", NStr("en='Integration setting with name %1 is not found.';de='Die Integrationseinstellung mit dem Namen %1 wurde nicht gefunden.';fr='Paramètre d''intégration avec le nom %1 est introuvable.';ru='Настройки интеграции с наименованием %1 не найдены.'", Lang));
	Strings.Insert("S_006", NStr("en='Method is not supported in Web Client.';de='Die Methode ist im Web-Client nicht unterstützt.';fr='La méthode n''est pas prise en charge dans le client Web.';ru='В web клиенте метод не поддерживается.'", Lang));
	
	// Special offers
	Strings.Insert("S_013", NStr("en='Unsupported object type: %1.';de='Nicht unterstützter Objekttyp: %1.';fr='Type d''objet non pris en charge : %1.';ru='Неподдерживаемый тип объекта: %1.'", Lang));
	
	// FileTransfer
	Strings.Insert("S_014", NStr("en='File name is empty.';de='Dateiname ist leer.';fr='Le nom de fichier est vide.';ru='Имя файла не заполнено'", Lang));
	Strings.Insert("S_015", NStr("en='Path for saving is not set.';de='Der Pfad zum Speichern ist nicht festgelegt.';fr='Le chemin pour l''enregistrement n''est pas défini.';ru='Путь сохранения не установлен.'", Lang));
	
	// Test connection
	// %1 - Method unsupported on web client
	// %2 - 404
	// %3 - Text frim site
	Strings.Insert("S_016", NStr("en='%1 Status code: %2 %3';de='%1 Statuscode: %2%3';fr='%1 Code statut : %2 %3';ru='%1 Статус код: %2 %3'", Lang));
	
	//	scan barcode
	Strings.Insert("S_018", NStr("en='Item added.';de='Das Produkt hinzugefügt.';fr='Article ajouté.';ru='Номенклатура добавлена.'", Lang)); 
	
	// %1 - 123123123123
	Strings.Insert("S_019", NStr("en='Barcode %1 not found.';de='Der Barcode %1 nicht gefunden.';fr='Le code-barres %1 introuvable.';ru='Штрих-код %1 не найден.'", Lang));
	Strings.Insert("S_022", NStr("en='Currencies in the base documents must match.';de='Die Währungen in den Basisdokumenten müssen übereinstimmen.';fr='Les devises dans les documents de base doivent correspondre.';ru='Валюты в документах-основания должны совпадать.'", Lang));
	Strings.Insert("S_023", NStr("en='Procurement method';de='Beschaffungsmethode';fr='Méthode d''approvisionnement';ru='Метод обеспечения'", Lang));
	
	Strings.Insert("S_026", NStr("en='Selected icon will be resized to 16x16 px.';de='Die Größe des ausgewählten Symbols wird auf 16x16 Pixel geändert.';fr='L''icône sélectionnée sera redimensionnée à 16x16 px.';ru='Размер выбранной иконки будет изменен до 16x16 px.'", Lang));

	// presentation of empty value for query result
	Strings.Insert("S_027", NStr("en='[Not filled]';de='[Nicht ausgefüllt]';fr='Non rempli';ru='[не заполнено]'", Lang));
	// operation is Success
	Strings.Insert("S_028", NStr("en='Success';ru='Успешно'", Lang));
	Strings.Insert("S_029", NStr("en='Not supoorting web client';ru='Не поддерживает web клиент'", Lang));
	Strings.Insert("S_030", NStr("en='Cashback'", Lang));
	#EndRegion
	
	#Region Service
	Strings.Insert("Form_001", NStr("en='New page';de='Neue Seite';fr='Nouvelle page';ru='Новая страница'", Lang));
	Strings.Insert("Form_002", NStr("en='Delete';de='Löschen';fr='Supprimer';ru='Пометить на удаление/Снять пометку'", Lang));
	Strings.Insert("Form_003", NStr("en='Quantity';de='Anzahl';fr='Quantité';ru='Количество'", Lang));
	Strings.Insert("Form_004", NStr("en='Customers terms';de='Vereinbarungen mit Kunden';fr='Accords avec les clients';ru='Соглашения с клиентами'", Lang));
	Strings.Insert("Form_005", NStr("en='Customers';de='Kunden';fr='Clients';ru='Клиенты'", Lang));
	Strings.Insert("Form_006", NStr("en='Vendors';de='Lieferanten';fr='Fournisseurs';ru='Поставщики'", Lang));
	Strings.Insert("Form_007", NStr("en='Vendors terms';de='Vereinbarungen mit Lieferanten';fr='Accords avec les fournisseurs';ru='Соглашения с поставщиками'", Lang));
	Strings.Insert("Form_008", NStr("en='User';de='Benutzer';fr='Utilisateur';ru='Пользователь';tr='Kullanıcı'", Lang));
	Strings.Insert("Form_009", NStr("en='User group';de='Benutzergruppe';fr='Groupe d''utilisateurs';ru='Группа пользователей'", Lang));
	Strings.Insert("Form_013", NStr("en='Date';de='Datum';fr='Date';ru='Дата'", Lang));
	Strings.Insert("Form_014", NStr("en='Number';de='Nummer';fr='Numéro';ru='Номер'", Lang));
	
	// change icon
	Strings.Insert("Form_017", NStr("en='Change';de='Ändern';fr='Changer';ru='Изменить'", Lang));
	
	// clear icon
	Strings.Insert("Form_018", NStr("en='Clear';de='Löschen';fr='Effacer';ru='Очистить'", Lang));
	
	// cancel answer on question
	Strings.Insert("Form_019", NStr("en='Cancel';de='Abbrechen';fr='Annuler';ru='Отмена'", Lang));
	
	// PriceInfo report 
	Strings.Insert("Form_022", NStr("en='1. By item keys';de='1. Nach Artikelvarianten';fr='1. Par clés d''article';ru='1. По ключам аналитики номенклатуры'", Lang));
	Strings.Insert("Form_023", NStr("en='2. By properties';de='2. Nach Eigenschaften';fr='2. Par propriétés';ru='2. По свойствам'", Lang));
	Strings.Insert("Form_024", NStr("en='3. By items';de='3. Nach Produkten';fr='3. Par articles';ru='3. По номенклатуре'", Lang));
	
	Strings.Insert("Form_025", NStr("en='Create from classifier';de='Aus Klassifizierer erstellen';fr='Créer à partir du classificateur';ru='Создать по классификатору'", Lang));
	
	Strings.Insert("Form_026", NStr("en='Item Bundle';de='Bündelprodukt';fr='Article de l''offre groupée';ru='Номенклатура набора'", Lang));
	Strings.Insert("Form_027", NStr("en='Item';de='Produkt';fr='Article';ru='Номенклатура'", Lang));
	Strings.Insert("Form_028", NStr("en='Item type';de='Produkttyp';fr='Type d''article';ru='Вид номенклатуры'", Lang));
	Strings.Insert("Form_029", NStr("en='External attributes';de='Externe Attribute';fr='Attributs externes';ru='Внешние реквизиты'", Lang));
	#EndRegion
	
	#Region ErrorMessages

	// %1 - en
	Strings.Insert("Error_002", NStr("en='%1 description is empty';de='%1 Beschreibung ist leer';fr='Description %1 est vide';ru='%1 наименование не заполнено'", Lang));
	Strings.Insert("Error_003", NStr("en='Fill any description.';de='Füllen Sie eine Beschreibung aus.';fr='Complétez une description.';ru='Заполните наименование.'", Lang));
	Strings.Insert("Error_004", NStr("en='Metadata is not supported.';de='Metadaten sind nicht unterstützt.';fr='Les métadonnées ne sont pas prises en charge.';ru='Метаданные не поддерживаются.'", Lang));
	
	// %1 - en
	Strings.Insert("Error_005", NStr("en='Fill the description of an additional attribute %1.';de='Füllen Sie eine Beschreibung des Zusatzattributs %1 aus.';fr='Complétez la description de l''attribut supplémentaire %1.';ru='Заполните наименование дополнительного реквизита %1.'", Lang));
	Strings.Insert("Error_008", NStr("en='Groups are created by an administrator.';de='Gruppen sind von einem Administrator erstellt.';fr='Les groupes sont créés par un administrateur.';ru='Группы создаются администратором.'", Lang));
	
	// %1 - Number 111 is not unique
	Strings.Insert("Error_009", NStr("en='Cannot write the object: [%1].';de='Das Objekt kann nicht geschrieben werden: [%1].';fr='Impossible d''écrire l''objet : [%1].';ru='Ошибка при записи объекта: [%1].'", Lang));
	
	// %1 - Number
	Strings.Insert("Error_010", NStr("en='Field [%1] is empty.';de='Feld [%1] ist leer.';fr='Le champ [%1] est vide.';ru='Поле [%1] не заполнено.'", Lang));
	Strings.Insert("Error_011", NStr("en='Add at least one row.';de='Fügen Sie mindestens eine Zeile hinzu.';fr='Ajoutez au moins une ligne.';ru='Нужно добавить хоть одну строку.'", Lang));
	Strings.Insert("Error_012", NStr("en='Variable is not named according to the rules.';de='Die Variable ist nicht gemäß den Regeln benannt.';fr='La variable n''est pas nommée conformément aux règles.';ru='Переменная названа не в соответствии с правилами.'", Lang));
	Strings.Insert("Error_013", NStr("en='Value is not unique.';de='Der Wert ist nicht eindeutig.';fr='La valeur n''est pas unique.';ru='Значение не уникально.'", Lang));
	Strings.Insert("Error_014", NStr("en='Password and password confirmation do not match.';de='Das Kennwort und die Kennwortbestätigung stimmen nicht überein.';fr='Le mot de passe et la confirmation du mot de passe ne correspondent pas.';ru='Пароль и подтверждение пароля не совпадают.'", Lang));

	// %1 - Sales order
	Strings.Insert("Error_016", NStr("en='There are no more items that you need to order from suppliers in the ""%1"" document.';de='Im Dokument ""%1"" gibt es keine weiteren Waren, die Sie von den Lieferanten bestellen müssen.';fr='Il n''y a plus d''articles dans le document ""%1"" que vous devez commander auprès des fournisseurs.';ru='В документе ""%1"" не осталось товаров по которым необходимо сделать заказ поставщику.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_017", NStr("en='First, create a ""%1"" document or clear the ""%1 before %2"" check box on the ""Other"" tab.';de='Zunächst erstellen Sie ein Dokument ""%1"" oder deaktivieren Sie das Kontrollkästchen ""%1 vor der %2"" auf der Registerkarte ""Sonstiges"".';fr='Tout d''abord, créez un document ""%1"" ou désactivez la case à cocher ""%1 avant %2"" dans l''onglet ""Autres"".';ru='Вначале необходимо создать документ ""%1"" или снять галочку ""%1 перед документом %2"" на вкладке ""Дополнительно"".'", Lang));

	// %1 - Shipment confirmation
	// %1 - Sales invoice
	Strings.Insert("Error_018", NStr("en='First, create a ""%1"" document or clear the ""%1 before %2"" check box on the ""Other"" tab.';de='Zunächst erstellen Sie ein Dokument ""%1"" oder deaktivieren Sie das Kontrollkästchen ""%1 vor der %2"" auf der Registerkarte ""Sonstiges"".';fr='Tout d''abord, créez un document ""%1"" ou désactivez la case à cocher ""%1 avant %2"" dans l''onglet ""Autres"".';ru='Вначале необходимо создать документ ""%1"" или снять галочку ""%1 перед документом %2"" на вкладке ""Дополнительно"".'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_019", NStr("en='There are no lines for which you need to create a ""%1"" document in the ""%2"" document.';de='Das Dokument ""%2"" enthält keine Zeilen, für die Sie ein Dokument ""%1"" erstellen müssen.';fr='Il n''y a pas de lignes pour lesquelles vous devez créer un document ""%1"" dans le document ""%2"".';ru='Строки по которым необходимо создать документ ""%1"" отсутствуют в документе ""%2"".'", Lang));

	// %1 - 12
	Strings.Insert("Error_020", NStr("en='Specify a base document for line %1.';de='Geben Sie ein Basisdokument für Zeile %1 an.';fr='Spécifiez un document de base pour la ligne %1.';ru='Необходимо заполнить документ-основания по строке %1.'", Lang));

	// %1 - Purchase invoice
	Strings.Insert("Error_021", NStr("en='There are no products to return in the ""%1"" document. All products are already returned.';de='Das Dokument ""%1"" enthält keine Produkte, die zurückgegeben werden müssen. Alle Produkte wurden bereits zurückgegeben.';fr='Il n''y a pas de produits à retourner dans le document ""%1"". Tous les produits ont déjà été retournés.';ru='По всем товарам из выбранного документа ""%1"" уже был оформлен возврат.'", Lang));
	
	// %1 - Internal supply request
	Strings.Insert("Error_023", NStr("en='There are no more items that you need to order from suppliers in the ""%1"" document.';de='Im Dokument ""%1"" gibt es keine weiteren Waren, die Sie von den Lieferanten bestellen müssen.';fr='Il n''y a plus d''articles dans le document ""%1"" que vous devez commander auprès des fournisseurs.';ru='В документе ""%1"" не осталось товаров по которым необходимо сделать заказ поставщику.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_028", NStr("en='Select the ""%1 before %2"" check box on the ""Other"" tab.';de='Aktivieren Sie das Kontrollkästchen ""%1 vor der %2"" auf der Registerkarte ""Sonstiges"".';fr='Activez la case à cocher ""%1 avant %2"" dans l''onglet ""Autres"".';ru='Необходимо установить галочку ""%1 перед документом %2"" на вкладке ""Дополнительно"".'", Lang));
	
	// %1 - Cash account
	// %2 - 12
	// %3 - Cheque bonds
	Strings.Insert("Error_030", NStr("en='Specify %1 in line %2 of the %3.';de='Geben Sie ein %1 in der Zeile %2 des Dokuments ""%3"" an.';fr='Spécifiez %1 dans la ligne %2 de %3.';ru='Поле %1 обязателено для заполнения в строке %2 %3.'", Lang));

	Strings.Insert("Error_031", NStr("en='Items were not received from the supplier according to the procurement method.';de='Bestellte Waren, die für den Auftrag erforderlich sind, wurden vom Lieferanten nicht erhalten.';fr='Les articles n''ont pas été reçus du fournisseur conformément a la méthode d''approvisionnement.';ru='Заказанные товары у поставщика для обеспечения заказа не были получены.'", Lang));
	Strings.Insert("Error_032", NStr("en='Action not completed.';de='Die Aktion ist nicht abgeschlossen.';fr='Action non terminée.';ru='Действие не завершено.'", Lang));
	Strings.Insert("Error_033", NStr("en='Duplicate attribute.';de='Doppeltes Attribut.';fr='Attribut dupliqué.';ru='Реквизит дублируется.'", Lang));
	// %1 - Google drive
	Strings.Insert("Error_034", NStr("en='%1 is not a picture storage volume.';de='%1 ist nicht ein Bildspeichervolume.';fr='%1 n''est pas un volume de stockage des images.';ru='%1 не является томом для хранения изображений.'", Lang));
	Strings.Insert("Error_035", NStr("en='Cannot upload more than 1 file.';de='Nur 1 Datei kann hochgeladen werden.';fr='Impossible de charger plus d''un fichier.';ru='Невозможно загрузить более 1 файла.'", Lang));
	Strings.Insert("Error_037", NStr("en='Unsupported type of data composition comparison.';de='Nicht unterstützter Datenvergleichstyp.';fr='Le type de comparaison de la composition des données n''est pas pris en charge.';ru='Неподдерживаемый тип сравнения состава данных.'", Lang));	
	Strings.Insert("Error_040", NStr("en='Only picture files are supported.';de='Nur Bilddateien sind unterstützt.';fr='Les fichiers images uniquement sont pris en charge.';ru='Поддерживается только тип файла - картинка.'", Lang));
	Strings.Insert("Error_041", NStr("en='Tax table contains more than 1 row [key: %1] [tax: %2].';de='Die Steuertabelle enthält mehr als 1 Zeile [Schlüssel: %1] [Steuer: %2].';fr='La table d''impôts/taxes contient plus d''une ligne [clé : %1] [impôt/taxe : %2].';ru='Таблица налогов содержит больше 1 строки [ключ: %1] [налог: %2].'", Lang));
	// %1 - Name
	Strings.Insert("Error_042", NStr("en='Cannot find a tax by column name: %1.';de='Eine Steuer kann nach dem Spaltennamen %1 nicht gefunden werden.';fr='Impossible de trouver un impôt ou une taxe par le nom de colonne : %1.';ru='Не найден налог по наименованию колонки: %1.'", Lang));
	Strings.Insert("Error_043", NStr("en='Unsupported document type.';de='Nicht unterstützter Dokumenttyp.';fr='Type de document non pris en charge.';ru='Неподдерживаемый тип документа.'", Lang));
	Strings.Insert("Error_044", NStr("en='Operation is not supported.';de='Der Vorgang ist nicht unterstützt.';fr='L''opération n''est pas prise en charge.';ru='Недопустимая операция.'", Lang));
	Strings.Insert("Error_045", NStr("en='Document is empty.';de='Das Dokument ist leer.';fr='Le document est vide.';ru='Документ не заполнен.'", Lang));
	// %1 - Currency
	Strings.Insert("Error_047", NStr("en='""%1"" is a required field.';de='""%1"" ist ein erforderliches Feld.';fr='""%1"" est un champ obligatoire.';ru='Поле ""%1"" обязательное для заполнения.'", Lang));
	Strings.Insert("Error_049", NStr("en='Default picture storage volume is not set.';de='Das Standardbildspeichervolume ist nicht festgelegt.';fr='Le volume de stockage des images par défaut n''est pas défini.';ru='Том хранения файлов по умолчанию не заполнен.'", Lang));
	Strings.Insert("Error_050", NStr("en='Currency exchange is available only for the same-type accounts (cash accounts or bank accounts).';de='Der Währungsumtausch ist nur für die Konten mit demselben Typ verfügbar (Kassenkonten oder Bankkonten).';fr='Le change de devises est disponible uniquement pour les comptes du même type (caisses ou comptes bancaires).';ru='Обмен валюты возможен только между счетами одного типа (между двумя кассами или между двумя банковскими счетами).'", Lang));
	// %1 - Bank payment
	Strings.Insert("Error_051", NStr("en='There are no lines for which you can create a ""%1"" document, or all ""%1"" documents are already created.';de='Es gibt keine Zeilen, für die Sie ein Dokument ""%1"" erstellen können, oder alle Dokumente ""%1"" wurden bereits erstellt.';fr='Il n''y a pas de lignes pour lesquelles vous pouvez créer un document ""%1"", ou tous les documents ""%1"" ont déjà été créés.';ru='Отсутствуют строки по которым необходимо создать ""%1"" или же все документы ""%1"" уже были созданы ранее.'", Lang));
	// %1 - Main store
	// %2 - Use shipment confirmation
	// %3 - Shipment confirmations
	Strings.Insert("Error_052", NStr("en='Cannot clear the ""%2"" check box. 
|Documents ""%3"" from store %1 were already created.';de='Das Kontrollkästchen ""%2"" kann nicht deaktiviert werden. 
|Dokumente ""%3"" für Lager %1 wurden bereits zuvor erstellt.';fr='Impossible de désactiver la case à cocher ""%2"". 
|Les documents ""%3"" de l''entrepôt %1 ont déjà été créés.';ru='Снять галочку ""%2"" невозможно. 
|Ранее со склада %1 уже были созданы документы ""%3"".'", Lang));
	
	// %1 - Main store
	// %2 - Use goods receipt
	// %3 - Goods receipts
	Strings.Insert("Error_053", NStr("en='Cannot clear the ""%2"" check box. Documents ""%3"" from store %1 were already created.';de='Das Kontrollkästchen ""%2"" kann nicht deaktiviert werden. Dokumente ""%3"" für Lager %1 wurden bereits zuvor erstellt.';fr='Impossible de désactiver la case à cocher ""%2"". Les documents ""%3"" de l''entrepôt %1 ont déjà été créés.';ru='Невозможно снять галочку ""%2"". Ранее со склада %1 уже были созданы документы ""%3"".'", Lang));
	
	// %1 - sales order
	Strings.Insert("Error_054", NStr("en='Cannot continue. The ""%1""document has an incorrect status.';de='Der Vorgang kann nicht fortgesetzt werden. Das Dokument ""%1"" hat einen falschen Status.';fr='Impossible de continuer. Le statut du document ""%1"" est erroné.';ru='Невозможно продолжить. Статус документа ""%1"" для продолжения неверный.'", Lang));
															  
	Strings.Insert("Error_055", NStr("en='There are no lines with a correct procurement method.';de='Es gibt keine Zeilen mit einer richtigen Beschaffungsmethode.';fr='Il n''y a pas de lignes avec une méthode d''approvisionnement correcte.';ru='Отсутствуют строки с нужным способом обеспечения.'", Lang));

	Strings.Insert("Error_056", NStr("en='All items in the sales order are already ordered using purchase order(s).';de='Alle Produkte im Auftrag sind mithilfe von Bestellung(en) bereits bestellt.';fr='Tous les articles dans la commande client ont déjà été commandés au moyen de bon(s) de commande.';ru='Все товары в заказе клиента уже заказаны поставщику.'", Lang));

	// %1 - sales order
	// %2 - purchase order
	Strings.Insert("Error_056", NStr("en='All items in the ""%1"" document are already ordered using the ""%2"" document(s).';de='Alle Produkte im Dokument ""%1"" sind bereits mithilfe von Dokument(en) ""%2"" bestellt.';fr='Tous les articles dans le document ""%1"" ont déjà été commandés au moyen du document ou des documents ""%2"".';ru='Все товары в документе ""%1"" уже заказаны документом ""%2"".'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_057", NStr("en='You do not need to create a ""%1"" document for the selected ""%2"" document(s).';de='Es ist nicht erforderlich, ein Dokument ""%1"" für die ausgewählten Dokumente ""%2"" zu erstellen.';fr='Vous n''avez pas besoin de créer un document ""%1"" pour le(s) document(s) ""%2"" sélectionné(s).';ru='Для выбранного документа ""%1"" не нужно создавать документ ""%2"".'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_058", NStr("en='The total amount of the ""%2"" document(s) is already paid on the basis of the ""%1"" document(s).';de='Der Gesamtbetrag des Dokuments ""%2"" ist bereits mithilfe von Dokument ""%1"" bezahlt.';fr='Le montant total du document(s) ""%2"" a déjà été payé sur la base du document(s) ""%1"".';ru='Вся сумма по документу ""%2"" уже была выдана по документу ""%1"".'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_059", NStr("en='In the selected documents, there are ""%2"" document(s) with existing ""%1"" document(s)
| and those that do not require a ""%1"" document.';de='Die ausgewählten Dokumente enthalten Dokumente ""%2"" mit vorhandenen Dokumenten ""%1""
| und diejenige, für die das Dokument ""%1"" nicht erforderlich ist.';fr='Dans les documents sélectionnés, il y a les document(s) ""%2"" avec les documents ""%1"" existants,
| aussi que ceux qui n''ont pas besoin de document ""%1"".';ru='В списке выбранных документов ""%2"" есть те по которым уже был создан документ ""%1""
| и те по которым документ ""%1"" создавать не нужно.'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_060", NStr("en='The total amount of the ""%2"" document(s) is already received on the basis of the ""%1"" document(s).';de='Der Gesamtbetrag des Dokuments ""%2"" ist bereits mithilfe von Dokument ""%1"" erhalten.';fr='Le montant total du document(s) ""%2"" a déjà été reçu sur la base du document(s) ""%1"".';ru='Вся сумма по документу ""%2"" уже была получена по документу ""%1"".'", Lang));
	
	// %1 - Main store
	// %2 - Shipment confirmation
	// %3 - Sales order
	Strings.Insert("Error_064", NStr("en='You do not need to create a ""%2"" document for store(s) %1. The item will be shipped using the ""%3"" document.';de='Es ist nicht erforderlich, ein Dokument ""%2"" für Lager %1 zu erstellen. Das Produkt wird mithilfe von Dokument ""%3"" versendet.';fr='Vous n''avez pas besoin de créer un document ""%2"" pour l''entrepôt(s) %1. L''article sera expédié au moyen du document ""%3"".';ru='Для склада %1 нет необходимости создавать документ ""%2"". Товар будет отгружен по документу ""%3"".'", Lang));
	
	Strings.Insert("Error_065", NStr("en='Item key is not unique.';de='Artikelvariante ist nicht eindeutig.';fr='La clé d''article n''est pas unique.';ru='Ключ аналитики номенклатуры не уникален.'", Lang));
	Strings.Insert("Error_066", NStr("en='Specification is not unique.';de='Spezifikation ist nicht eindeutig.';fr='La spécification n''est pas unique.';ru='Спецификация товара не уникальна.'", Lang));

	// %1 - 12
	// %2 - Boots
	// %3 - Red XL
	// %4 - ordered
	// %5 - 11
	// %6 - 15
	// %7 - 4
	// %8 - pcs
	Strings.Insert("Error_068", NStr("en='Line No. [%1] [%2 %3] %4 remaining: %5 %8. Required: %6 %8. Lacking: %7 %8.';de='Zeile Nr. [%1] [%2 %3] %4 Restmenge: %5%8. Erforderlich: %6%8. Es fehlt: %7%8.';fr='Ligne nº [%1] [%2 %3] %4 restants : %5 %8. Nécessaires : %6 %8. Manquants : %7 %8.';ru='Строка № [%1] [%2%3] %4 остаток: %5%8 Требуется: %6%8 Разница: %7%8.'", Lang));

	// %1 - some extention name
	Strings.Insert("Error_071", NStr("en='Plugin ""%1"" is not connected.';de='Plug-In ""%1"" ist nicht verbunden.';fr='Plug-in ""%1"" n''est pas connecté.';ru='Внешняя обработка ""%1"" не подключена.'", Lang));
	
	// %1 - 12
	Strings.Insert("Error_072", NStr("en='Specify a store in line %1.';de='Geben Sie ein Lager in der Zeile %1 an.';fr='Spécifiez un entrepôt dans la ligne %1.';ru='В строке %1 необходимо заполнить склад.'", Lang));

	// %1 - Sales order
	// %2 - Goods receipt
	Strings.Insert("Error_073", NStr("en='All items in the ""%1"" document(s) are already received using the ""%2"" document(s).';de='Alle Produkte im Dokument ""%1"" sind bereits mithilfe von Dokument(en) ""%2"" erhalten.';fr='Tous les articles dans le(s) document(s) ""%1"" ont déjà été reçus au moyen du document ou des documents ""%2"".';ru='Все товары по документу ""%1"" уже получены на основании документа ""%2"".'", Lang));
	Strings.Insert("Error_074", NStr("en='Currency transfer is available only when amounts are equal.';de='Der Währungstransfer ist verfügbar, nur wenn Beträge gleich sind.';fr='Le transfert d''argent dans la même devise est disponible uniquement quand les montants sont égaux.';ru='При перемещении денежных средств в одной валюте сумма отправки и получения должны совпадать.'", Lang));

	// %1 - Physical count by location
	Strings.Insert("Error_075", NStr("en='There are ""%1"" documents that are not closed.';de='Es gibt Dokumente ""%1"", die nicht geschlossen sind.';fr='Il y a des documents ""%1"" non fermés.';ru='Есть незакрытые документы ""%1"".'", Lang));
	
	// %1 - Retail sales receipt
	Strings.Insert("Error_076", NStr("en='There are no products to return in the ""%1"" document. All products are already returned.';de='Das Dokument ""%1"" enthält keine Produkte, die zurückgegeben werden müssen. Alle Produkte wurden bereits zurückgegeben.';fr='Il n''y a pas de produits à retourner dans le document ""%1"". Tous les produits ont déjà été retournés.';ru='По всем товарам из выбранного документа ""%1"" уже был оформлен возврат.'", Lang));
	
	// %1 - 12
	Strings.Insert("Error_077", NStr("en='Basis document is empty in line %1.'", Lang));
	
	// %1 - 1 %2 - 2
	Strings.Insert("Error_078", NStr("en='Quantity [%1] does not match the quantity [%2] by serial/lot numbers';ru='Количество [%1] по строке не совпадает с количеством [%2] заполненным по серийным номерам. '", Lang));
	
	//%1 - 100.00 %2 - 120.00
	Strings.Insert("Error_079", NStr("en='Payment amount [%1] and return amount [%2] not match'", Lang));
	
	//%1 - 1 %2 - Goods receipt %3 - 10 %4 - 8
	Strings.Insert("Error_080", NStr("en='In line %1 quantity by %2 %3 greater than %4'", Lang));
	
	//%1 - 1 %2 - Dress %3 - Red/38 %4 - 8 %5 - 10
	Strings.Insert("Error_081", NStr("en='In line %1 quantity by %2-%3 %4 less than quantity by goods receipt %5'", Lang));
	
	//%1 - 1 %2 - Dress %3 - Red/38 %4 - 10 %5 - 8
	Strings.Insert("Error_082", NStr("en='In line %1 quantity by %2-%3 %4 less than quantity by goods receipt %5'", Lang));
	
	#EndRegion
	
	#Region InfoMessages
	// %1 - Purchase invoice
	// %2 - Purchase order
	Strings.Insert("InfoMessage_001", NStr("en='The ""%1"" document does not fully match the ""%2"" document because 
|there is already another ""%1"" document that partially covered this ""%2"" document.';de='Das Dokument ""%1"" stimmt mit dem Dokument ""%2"" nicht vollständig überein. 
|Es gibt ein anderes Dokument ""%1"", das das Dokument ""%2"" teilweise abgedeckt hat.';fr='Les documents ""%1"" et ""%2"" ne correspondent pas complétement, 
|parce qu''il y a un autre document ""%1"" qui couvre partiellement le document ""%2"".';ru='Созданный документ ""%1"" не совпадает с документом ""%2"" в силу того, что ранее
| уже создан документ ""%1"", который частично закрыл документ ""%2"".'", Lang));
	// %1 - Boots
	Strings.Insert("InfoMessage_002", NStr("en='Object %1 created.';de='Objekt %1 erstellt.';fr='Objet %1 créé.';ru='Объект %1 создан.'", Lang));
	Strings.Insert("InfoMessage_003", NStr("en='This is a service form.';de='Das ist ein Dienstformular.';fr='Il s''agit d''une forme service.';ru='Это сервисная форма.'", Lang));
	Strings.Insert("InfoMessage_004", NStr("en='Save the object to continue.';de='Speichern Sie das Objekt, um fortzufahren.';fr='Enregistrez l''objet pour continuer.';ru='Для продолжения необходимо сохранить объект.'", Lang));
	Strings.Insert("InfoMessage_005", NStr("en='Done';de='Fertig';fr='Terminé';ru='Завершено'", Lang));
	
	// %1 - Physical count by location
	Strings.Insert("InfoMessage_006", NStr("en='The ""%1"" document is already created. You can update the quantity.';de='Das Dokument ""%1"" wurde bereits erstellt. Sie können die Anzahl aktualisieren.';fr='Le document ""%1"" a déjà été créé. Vous pouvez mettre à jour la quantité.';ru='Документы ""%1"" уже созданы. Возможно использовать только функцию обновления количества.'", Lang));
	
	// %1 - 12
	// %2 - 20.02.2020
	Strings.Insert("InfoMessage_007", NStr("en='#%1 date: %2';de='Nr. %1 Datum: %2';fr='nº %1 date : %2';ru='#%1 дата: %2'", Lang));
	#EndRegion
	
	#Region QuestionToUser
	Strings.Insert("QuestionToUser_001", NStr("en='Write the object to continue. Continue?';de='Schreiben Sie das Objekt, um fortzufahren. Fortfahren?';fr='Écrivez l''objet pour continuer. Voulez-vous continuer ?';ru='Для продолжения необходимо сохранить объект. Продолжить?'", Lang));
	Strings.Insert("QuestionToUser_002", NStr("en='Do you want to switch to scan mode?';de='Möchten Sie zum Scanmodus wechseln?';fr='Voulez-vous passer en mode de numérisation ?';ru='Переключиться в режим сканирования?'", Lang));
	Strings.Insert("QuestionToUser_003", NStr("en='Filled data on cheque bonds transactions will be deleted. Do you want to update %1?';de='Angegebene Daten über Schecks und Anleihen werden gelöscht. Möchten Sie %1 aktualisieren?';fr='Les données complétées sur les transactions relatives aux chèques et obligations seront effacées. Voulez-vous mettre à jour %1 ?';ru='Заполненные данные по чекам будут очищены. Обновить %1? '", Lang));
	Strings.Insert("QuestionToUser_004", NStr("en='Do you want to change tax rates according to the partner term?';de='Möchten Sie die Steuersätze gemäß der Vereinbarung verändern?';fr='Voulez-vous modifier les taux d''imposition conformément à l''accord ?';ru='Изменить налоговые ставки в соответствии с соглашением?'", Lang));
	Strings.Insert("QuestionToUser_005", NStr("en='Do you want to update filled stores?';de='Möchten Sie die angegebenen Lager aktualisieren?';fr='Voulez-vous mettre à jour les entrepôts complétés ?';ru='Обновить заполненные склады?'", Lang));
	Strings.Insert("QuestionToUser_006", NStr("en='Do you want to update filled currency?';de='Möchten Sie die angegebene Währung aktualisieren?';fr='Voulez-vous mettre à jour la devise complétée ?';ru='Обновить заполненные цены'", Lang));
	Strings.Insert("QuestionToUser_007", NStr("en='Transaction table will be cleared. Continue?';de='Die Transaktionstabelle wird geleert. Fortfahren?';fr='La table des transactions sera effacée. Voulez-vous continuer ?';ru='Таблица транзакций будет очищена. Продолжить?'", Lang));
	Strings.Insert("QuestionToUser_008", NStr("en='Changing the currency will clear the rows with cash transfer documents. Continue?';de='Wenn Sie die Währung ändern, die Zeilen mit den Überweisungsdokumenten werden geleert. Fortfahren?';fr='Si vous changez la devise, les lignes avec les documents de transfert d''argent seront effacées. Voulez-vous continuer ?';ru='При изменении валюты заполненные строки будут отвязаны от документа перемещения денежных средств. Продолжить?'", Lang));
	Strings.Insert("QuestionToUser_009", NStr("en='Do you want to update filled stores on %1?';de='Möchten Sie die angegebenen Lager durch das Lager %1 ersetzen?';fr='Voulez-vous remplacer les entrepôts complétés par %1 ?';ru='Обновить заполненные склады на выбранный склад %1?'", Lang));
	Strings.Insert("QuestionToUser_011", NStr("en='Do you want to update filled price types on %1?';de='Möchten Sie die angegebenen Preistypen durch den Preistyp %1 ersetzen?';fr='Voulez-vous remplacer les types des prix complétés par %1 ?';ru='Обновить заполненные виды цен на выбранный вид цены %1?'", Lang));
	Strings.Insert("QuestionToUser_012", NStr("en='Do you want to exit?';de='Möchten Sie den Vorgang beenden?';fr='Voulez-vous vraiment quitter ?';ru='Вы действительно хотите выйти?'", Lang));
	Strings.Insert("QuestionToUser_013", NStr("en='Do you want to update filled prices?';de='Möchten Sie die angegebenen Preise aktualisieren?';fr='Voulez-vous mettre à jour les prix complétés ?';ru='Обновить заполненные цены?'", Lang));
	Strings.Insert("QuestionToUser_014", NStr("en='Transaction type is changed. Do you want to update filled data?';de='Der Transaktionstyp wurde geändert. Möchten Sie angegebene Daten aktualisieren?';fr='Le type de transaction a été changé. Voulez-vous mettre à jour les données complétées ?';ru='Тип операции изменен. Обновить заполненные данные? '", Lang));
	Strings.Insert("QuestionToUser_015", NStr("en='Filled data will be cleared. Continue?';de='Angegebene Daten werden geleert. Fortfahren?';fr='Les données complétées seront effacées. Voulez-vous continuer ?';ru='Заполненные данные будут очищены. Продолжить?'", Lang));
	Strings.Insert("QuestionToUser_016", NStr("en='Do you want to change or clear the icon?';de='Möchten Sie das Symbol verändern oder löschen?';fr='Voulez-vous changer ou effacer l''icône ?';ru='Заменить или удалить иконку?'", Lang));
	#EndRegion
	
	#Region SuggestionToUser
	Strings.Insert("SuggestionToUser_1", NStr("en='Select a value';de='Wählen Sie einen Wert aus';fr='Sélectionner une valeur';ru='Выберите значение'", Lang));
	Strings.Insert("SuggestionToUser_2", NStr("en='Enter a barcode';de='Geben Sie einen Barcode ein';fr='Entrez un code-barres';ru='Введите штрих-код'", Lang));
	Strings.Insert("SuggestionToUser_3", NStr("en='Enter an option name';de='Geben Sie einen Optionsnamen ein';fr='Entrez le nom d''une option';ru='Наименование параметра ввода'", Lang));
	Strings.Insert("SuggestionToUser_4", NStr("en='Enter a new option name';de='Geben Sie einen neuen Optionsnamen ein';fr='Entrez un nouveau nom de l''option';ru='Введите новое наименование параметра'", Lang));
	#EndRegion
	
	#Region UsersEvent
	Strings.Insert("UsersEvent_001", NStr("en='User not found by UUID %1 and name %2.';de='Benutzer wurde nach UUID %1 und Namen %2 nicht gefunden.';fr='L''utilisateur portant l''UUID %1 et le nom %2 est introuvable.';ru='Пользователь по UUID %1 и имени %2не найден.'", Lang));
	Strings.Insert("UsersEvent_002", NStr("en='User found by UUID %1 and name %2.';de='Der Benutzer wurde nach UUID %1 und Namen %2 gefunden.';fr='L''utilisateur portant l''UUID %1 et le nom %2 est trouvé.';ru='Пользователь по UUID %1 и имени %2 найден.'", Lang));
	#EndRegion
	
	#Region Items
	
	// Interface
	Strings.Insert("I_1", NStr("en='Enter description';de='Geben Sie eine Beschreibung an';fr='Entrez une description';ru='Введите Наименование'", Lang));
	
	Strings.Insert("I_2", NStr("en='Click to enter description';de='Geben Sie eine Beschreibung ein';fr='Cliquez pour entrer la description';ru='Нажмите для заполнения'", Lang));
	
	Strings.Insert("I_3", NStr("en='Fill out the document';de='Füllen Sie das Dokument aus';fr='Remplissez le document';ru='Заполните документ'", Lang));
	
	#EndRegion
	
	#Region Exceptions
	Strings.Insert("Exc_001", NStr("en='Unsupported object type.';de='Nicht unterstützter Objekttyp.';fr='Type d''objet non pris en charge.';ru='Неподдерживаемый тип объекта.'", Lang));
	Strings.Insert("Exc_002", NStr("en='No conditions';de='Keine Bedingungen';fr='Pas de conditions';ru='Без условий'", Lang));
	Strings.Insert("Exc_003", NStr("en='Method is not implemented: %1.';de='Die Methode ist nicht implementiert: %1.';fr='La méthode n’a pas été implémentée : %1.';ru='Метод не реализован: %1.'", Lang));
	Strings.Insert("Exc_004", NStr("en='Cannot extract currency from the object.';de='Die Währung kann aus dem Objekt nicht extrahiert werden.';fr='Impossible d''extraire la devise de l''objet.';ru='Валюта из объекта не извлечена.'", Lang));
	Strings.Insert("Exc_005", NStr("en='Library name is empty.';de='Der Bibliothekname ist leer.';fr='Le nom de bibliothéque est vide.';ru='Наименование библиотеки не заполнено.'", Lang));
	Strings.Insert("Exc_006", NStr("en='Library data does not contain a version.';de='Bibliotheksdaten enthalten keine Version.';fr='Les données de bibliothèque n''ont pas de version.';ru='Данные библиотеки не содержат версии.'", Lang));
	Strings.Insert("Exc_007", NStr("en='Not applicable for library version %1.';de='Nicht anwendbar für die Bibliotheksversion %1.';fr='Non applicable pour la version de bibliothéque %1.';ru='Не применимо для версии библиотеки: %1.'", Lang));
	Strings.Insert("Exc_008", NStr("en='Unknown row key.';de='Unbekannter Zeilenschlüssel.';fr='Clé de ligne inconnue.';ru='Неизвестный ключ строки.'", Lang));
	Strings.Insert("Exc_009", NStr("en='Error: %1';de='Fehler: %1';fr='Erreur : %1';ru='Ошибка: %1'", Lang));
	#EndRegion
	
	#Region Saas
	// %1 - 12
	Strings.Insert("Saas_001", NStr("en='Area %1 not found.';de='Bereich %1 ist nicht gefunden.';fr='La zone %1 est introuvable.';ru='Рабочая область %1 не найдена.'", Lang));
	
	// %1 - closed
	Strings.Insert("Saas_002", NStr("en='Area status: %1.';de='Bereichsstatus: %1.';fr='Statut de la zone : %1.';ru='Статус рабочей области: %1.'", Lang));
	
	// %1 - en
	Strings.Insert("Saas_003", NStr("en='Localization %1 of the company is not available.';de='Lokalisierung %1 der Organisation ist nicht verfügbar.';fr='La localisation %1 de l''entreprise n''est pas disponible.';ru='Локализация компании %1 не доступна.'", Lang));
	#EndRegion
	
	#Region FillingFromClassifiers
    // Do not modify "en" strings
    Strings.Insert("Class_001", NStr("en='Purchase price';de='Einkaufspreis';fr='Prix d''achat';ru='Цена закупки'", Lang));
    Strings.Insert("Class_002", NStr("en='Sales price';de='Verkaufspreis';fr='Prix de vente';ru='Цена продажи'", Lang));
    Strings.Insert("Class_003", NStr("en='Prime cost';de='Selbstkosten';fr='Prix coûtant';ru='Себестоимость'", Lang));
    Strings.Insert("Class_004", NStr("en='Service';de='Berichte';fr='Service';ru='Сервис'", Lang));
    Strings.Insert("Class_005", NStr("en='Product';de='Ware';fr='Produit';ru='Товар'", Lang));
    Strings.Insert("Class_006", NStr("en='Main store';de='Hauptlager';fr='Entrepôt principal';ru='Главный склад'", Lang));
    Strings.Insert("Class_007", NStr("en='Main manager';de='Hauptmanager';fr='Responsable principal';ru='Главный менеджер'", Lang));
    Strings.Insert("Class_008", NStr("en='pcs';de='Stck.';fr='pcs';ru='шт'", Lang));
    #EndRegion
    
    #Region PredefinedObjectDescriptions
	PredefinedDescriptions(Strings, Lang);
	#EndRegion
    
	#Region Titles
	// %1 - Cheque bond transaction
	Strings.Insert("Title_00100", NStr("en='Select base documents in the ""%1"" document.';de='Wählen Sie Basisdokumente im Dokument ""%1"" aus.';fr='Sélectionnez les documents de base dans le document ""%1"".';ru='Выбор документов-оснований в документе ""%1""'", Lang));	// Form PickUpDocuments
	#EndRegion
	
	#Region ChoiceListValues
	Strings.Insert("CLV_1", NStr("en='All';de='Alle';fr='Tout';ru='Все'", Lang));
	#EndRegion
	
	Return Strings;
EndFunction

Procedure PredefinedDescriptions(Strings, CodeLanguage)

	Strings.Insert("Description_A001", NStr("en='Catalog Partner terms';de='Katalog Vereinbarungen';fr='Catalogue Accords';ru='Справочник Соглашения'", CodeLanguage));
	Strings.Insert("Description_A003", NStr("en='Catalog Business units';de='Katalog Abteilungen';fr='Catalogue Divisions';ru='Справочник Подразделения'", CodeLanguage));
	Strings.Insert("Description_A004", NStr("en='Catalog Cash accounts';de='Katalog Kassenkonten';fr='Catalogue Caisses et comptes bancaires';ru='Справочник Кассы\банковские счета'", CodeLanguage));
	Strings.Insert("Description_A005", NStr("en='Catalog Cheque bonds';de='Katalog Bankschecks und Anleihen';fr='Catalogue Chèques et obligations';ru='Справочник Банковские чеки'", CodeLanguage));
	Strings.Insert("Description_A006", NStr("en='Catalog Companies';de='Katalog Organisationen';fr='Catalogue Entreprises';ru='Справочник Организации'", CodeLanguage));
	Strings.Insert("Description_A007", NStr("en='Catalog Company types';de='Katalog Organisationsarten';fr='Catalogue Types des entreprises';ru='Справочник Типы организаций'", CodeLanguage));
	Strings.Insert("Description_A008", NStr("en='Catalog Countries';de='Katalog Länder';fr='Catalogue Pays';ru='Справочник Страны'", CodeLanguage));
	Strings.Insert("Description_A009", NStr("en='Catalog Currencies';de='Katalog Währungen';fr='Catalogue Devises';ru='Справочник Валюты'", CodeLanguage));
	Strings.Insert("Description_A010", NStr("en='Catalog Expense and revenue types';de='Katalog Spesen- und Einnahmearten';fr='Catalogue Catégories des dépenses et recettes';ru='Справочник Статьи доходов и расходов'", CodeLanguage));
	Strings.Insert("Description_A011", NStr("en='Catalog Item keys';de='Dokument Artikelvarianten';fr='Catalogue Clés des articles';ru='Справочник Ключи аналитики номенклатуры'", CodeLanguage));
	Strings.Insert("Description_A012", NStr("en='Catalog Items';de='Katalog Produkte';fr='Catalogue Articles';ru='Справочник Номенклатура'", CodeLanguage));
	Strings.Insert("Description_A013", NStr("en='Catalog Item types';de='Katalog Produkttypen';fr='Catalogue Types des articles';ru='Справочник Виды номенклатуры'", CodeLanguage));
	Strings.Insert("Description_A014", NStr("en='Catalog Partners';de='Katalog Geschäftspartner';fr='Catalogue Partenaires';ru='Справочник Партнеры'", CodeLanguage));
	Strings.Insert("Description_A015", NStr("en='Catalog Price keys';de='Katalog Preisschlüssel';fr='Catalogue Clés des prix';ru='Справочник Ключи аналитики ценообразования'", CodeLanguage));
	Strings.Insert("Description_A016", NStr("en='Catalog Price types';de='Katalog Preistypen';fr='Catalogue Types des prix';ru='Справочник Виды цен'", CodeLanguage));
	Strings.Insert("Description_A017", NStr("en='Catalog Serial lot numbers';de='Katalog Serien- und Chargennummern';fr='Catalogue Numéros de série/lot';ru='Справочник Серии номенклатуры'", CodeLanguage));
	Strings.Insert("Description_A018", NStr("en='Catalog Specifications';de='Katalog Spezifikationen';fr='Catalogue Spécifications';ru='Справочник Спецификации товаров'", CodeLanguage));
	Strings.Insert("Description_A019", NStr("en='Catalog Stores';de='Katalog Lager';fr='Catalogue Entrepôts';ru='Справочник Склады'", CodeLanguage));
	Strings.Insert("Description_A020", NStr("en='Catalog Taxes';de='Katalog Steuern';fr='Catalogue Impôts/Taxes';ru='Справочник Налоги'", CodeLanguage));
	Strings.Insert("Description_A021", NStr("en='Catalog Units';de='Katalog Maßeinheiten';fr='Catalogue Unités';ru='Справочник Единицы измерения номенклатуры'", CodeLanguage));
	Strings.Insert("Description_A022", NStr("en='Catalog Users';de='Katalog Benutzer';fr='Catalogue Utilisateurs';ru='Справочник Пользователи'", CodeLanguage));
	Strings.Insert("Description_A023", NStr("en='Document Bank payment';de='Dokument Ausgangszahlung';fr='Document Paiement bancaire';ru='Документ Платежное поручение исходящие'", CodeLanguage));
	Strings.Insert("Description_A024", NStr("en='Document Bank receipt';de='Dokument Eingangszahlung';fr='Document Rentrée de fonds sur compte bancaire';ru='Документ Платежное поручение входящее'", CodeLanguage));
	Strings.Insert("Description_A025", NStr("en='Document Bundling';de='Dokument Bündelung';fr='Document Création de l''offre groupée';ru='Документ Комплектация набора'", CodeLanguage));
	Strings.Insert("Description_A026", NStr("en='Document Cash expense';de='Dokument Barausgabe';fr='Document Dépense en espèces';ru='Документ Прочие наличные расходы'", CodeLanguage));
	Strings.Insert("Description_A027", NStr("en='Document Cash payment';de='Dokument Ausgabebeleg';fr='Document Décaissement';ru='Документ Расходный кассовый ордер'", CodeLanguage));
	Strings.Insert("Description_A028", NStr("en='Document Cash receipt';de='Dokument Einnahmebeleg';fr='Document Encaissement';ru='Документ Приходный кассовый ордер'", CodeLanguage));
	Strings.Insert("Description_A029", NStr("en='Document Cash revenue';de='Dokument Bareinnahme';fr='Document Revenu en espèces';ru='Документ Прочие наличные доходы'", CodeLanguage));
	Strings.Insert("Description_A030", NStr("en='Document Cash transfer order';de='Dokument Umbuchungsauftrag';fr='Document Demande de transfert d''argent';ru='Документ Заявка на перемещение денежных средств'", CodeLanguage));
	Strings.Insert("Description_A031", NStr("en='Document Cheque bond transaction';de='Dokument Scheck- und Anleihetransaktion';fr='Document Transaction relative au chèque ou à l''obligation';ru='Документ Операция по чекам и долговым обязательствам'", CodeLanguage));
	Strings.Insert("Description_A032", NStr("en='Document Goods receipt';de='Dokument Wareneingang';fr='Document Bon de réception';ru='Документ Приходная товарная накладная'", CodeLanguage));
	Strings.Insert("Description_A033", NStr("en='Document Incoming payment order';de='Dokument Antrag auf Geldeingang';fr='Document Demande de l''entrée d''argent';ru='Документ Заявка на поступление денежных средств'", CodeLanguage));
	Strings.Insert("Description_A034", NStr("en='Document Inventory transfer';de='Dokument Lagerumbuchung';fr='Document Transfert de stock';ru='Документ Перемещение товаров'", CodeLanguage));
	Strings.Insert("Description_A035", NStr("en='Document Inventory transfer order';de='Dokument Lagerumbuchungsauftrag';fr='Document Ordre de transfert de stock';ru='Документ Заказ на перемещение товаров'", CodeLanguage));
	Strings.Insert("Description_A036", NStr("en='Document Invoice match';de='Dokument Rechnungsabgleich';fr='Document Rapprochement des factures';ru='Документ Сопоставление документа-основания взаиморасчетов с платежами'", CodeLanguage));
	Strings.Insert("Description_A037", NStr("en='Document Labeling';de='Dokument Kennzeichnung';fr='Document Étiquetage';ru='Документ Штрихкодирование'", CodeLanguage));
	Strings.Insert("Description_A038", NStr("en='Document Opening entry';de='Dokument Anfangsbestand';fr='Document Écriture d''entrée';ru='Документ Ввод начальных остатков'", CodeLanguage));
	Strings.Insert("Description_A039", NStr("en='Document Outgoing payment order';de='Dokument Antrag auf Geldausgang';fr='Document Demande de la sortie d''argent';ru='Документ Заявка на расходование денежных средств'", CodeLanguage));
	Strings.Insert("Description_A040", NStr("en='Document Physical count by location';de='Dokument Inventurliste';fr='Document Comptage physique dans l''entrepôt';ru='Документ Пересчет товаров'", CodeLanguage));
	Strings.Insert("Description_A041", NStr("en='Document Physical inventory';de='Dokument Inventur';fr='Document Inventaire physique';ru='Документ Инвентаризация товаров'", CodeLanguage));
	Strings.Insert("Description_A042", NStr("en='Document Price list';de='Dokument Preiskalkulation';fr='Document Liste des prix';ru='Документ Установка цен номенклатуры'", CodeLanguage));
	Strings.Insert("Description_A043", NStr("en='Document Purchase invoice';de='Dokument Einkaufsrechnung';fr='Document Facture d''achat';ru='Документ Поступление товаров и услуг'", CodeLanguage));
	Strings.Insert("Description_A044", NStr("en='Document Purchase order';de='Dokument Bestellung';fr='Document Bon de commande';ru='Документ Заказ поставщику'", CodeLanguage));
	Strings.Insert("Description_A045", NStr("en='Document Purchase return';de='Dokument Lieferantenretoure';fr='Document Retour d''achat';ru='Документ Возврат поставщику'", CodeLanguage));
	Strings.Insert("Description_A046", NStr("en='Document Purchase return order';de='Dokument Lieferantenretourenauftrag';fr='Document Commande fournisseur de retour';ru='Документ Заказ на возврат поставщику'", CodeLanguage));
	Strings.Insert("Description_A047", NStr("en='Document Reconciliation statement';de='Dokument Offene Posten';fr='Document Relevé de rapprochement';ru='Документ Сверка взаиморасчетов'", CodeLanguage));
	Strings.Insert("Description_A048", NStr("en='Document Sales invoice';de='Dokument Rechnung';fr='Document Facture de vente';ru='Документ Реализация товаров и услуг'", CodeLanguage));
	Strings.Insert("Description_A049", NStr("en='Document Sales order';de='Dokument Auftrag';fr='Document Commande client';ru='Документ Заказ покупателя'", CodeLanguage));
	Strings.Insert("Description_A050", NStr("en='Document Sales return';de='Dokument Kundenretoure';fr='Document Retour de vente';ru='Документ Возврат товаров от покупателя'", CodeLanguage));
	Strings.Insert("Description_A051", NStr("en='Document Sales return order';de='Dokument Kundenretourenauftrag';fr='Document Commande client de retour';ru='Документ Заказ на возврат покупателя'", CodeLanguage));
	Strings.Insert("Description_A052", NStr("en='Document Shipment confirmation';de='Dokument Lieferschein';fr='Document Bon de livraison';ru='Документ Расходная товарная накладная'", CodeLanguage));
	Strings.Insert("Description_A053", NStr("en='Document Stock adjustment as surplus';de='Dokument Aktivierung von Warenüberschüssen';fr='Document Ajustement positif de stock';ru='Документ Оприходование товаров'", CodeLanguage));
	Strings.Insert("Description_A054", NStr("en='Document Stock adjustment as write off';de='Dokument Warenabschreibung';fr='Document Ajustement négatif de stock';ru='Документ Списание товаров'", CodeLanguage));
	Strings.Insert("Description_A056", NStr("en='Document Unbundling';de='Dokument Entbündelung';fr='Document Suppression de l''offre groupée';ru='Документ Разукомлектация набора'", CodeLanguage));
	Strings.Insert("Description_A057", NStr("en='User defined';de='Benutzerdefiniert';fr='Défini par l’utilisateur';ru='Произвольный'", CodeLanguage));
	Strings.Insert("Description_A058", NStr("en='Cheque bond incoming';de='Eingangsschecks/Anleihen';fr='Chèques/obligations reçus';ru='Входящие банковские чеки'", CodeLanguage));
	Strings.Insert("Description_A059", NStr("en='Cheque bond outgoing';de='Ausgangsschecks/Anleihen';fr='Chèques/obligations émis';ru='Исходящие банковские чеки'", CodeLanguage));
	Strings.Insert("Description_A060", NStr("en='Document Credit debit note';de='Dokument Gut- und Lastschrift';fr='Document Avoir et note de débit';ru='Документ Списание задолженности'", CodeLanguage));
	Strings.Insert("Description_A061", NStr("en='Settlement currency';de='Abrechnungswährung';fr='Devise de règlement';ru='Валюта транзакции'", CodeLanguage));
	Strings.Insert("Description_A062", NStr("en='Credit note';de='Gutschrift';fr='Avoir';ru='Кредит-нота'", CodeLanguage));
	Strings.Insert("Description_A063", NStr("en='Debit note';de='Lastschrift';fr='Note de débit';ru='Дебет-нота'", CodeLanguage));
		
EndProcedure
