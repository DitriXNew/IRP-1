Function Strings(Lang) Export
	
	Strings = New Structure();
	
	#Region Equipment
	Strings.Insert("Eq_001", NStr("en='Installed';tr='Kuruldu'", Lang));
	Strings.Insert("Eq_002", NStr("en='Not installed';tr='Kurulmadı'", Lang));
	Strings.Insert("Eq_003", NStr("en='There are no errors.';tr='Bir hata tespit edilemedi.'", Lang));
	Strings.Insert("Eq_004", NStr("en='Scanner is connected.';tr='Barkod okuyucusu başarılya bağlandı.'", Lang));
	Strings.Insert("Eq_005", NStr("en='Error. Scanner not connected.';tr='Hata. Barkod okuyucusu bağlanamadı'", Lang));
	
	Strings.Insert("EqError_001", NStr("en='The device is connected. The device must be disabled before the operation.';tr='Cihaz bağlandı. İşlemden önce cihaz devre dışı bırakılmalı.'", Lang));

	Strings.Insert("EqError_002", NStr("en='The device driver could not be downloaded.
|Check that the driver is correctly installed and registered in the system.';tr='Cihaz sürücüsü yüklenemedi.
|Sürücünün düzgün kurulduğundan ve sistemde kayıtlı (registered) olduğundan emin olunuz.'", Lang));

	#EndRegion
	
	
	#Region POS
	
	Strings.Insert("POS_s1", NStr("en='Amount paid is less than amount of the document';tr='Ödeme tutarı satış tutarından daha küçüktür'", Lang));
	Strings.Insert("POS_s2", NStr("en='Card fees are more than the amount of the document';tr='Kart ile ödeme tutarı satış tutarından daha büyüktür'", Lang));
	Strings.Insert("POS_s3", NStr("en='There is no need to use cash, as card payments are sufficient to pay';tr='Nakit tutar girmenize gerek yok, çünkü kart ile alınan ödeme yeterlidir'", Lang));
	Strings.Insert("POS_s4", NStr("en='Amounts of payments are incorrect';tr='Ödeme tutarlarda hata var'", Lang));
	#EndRegion
	
	#Region Service
	
	// %1 - localhost
	// %2 - 8080 
	// %3 - There is no internet connection
	Strings.Insert("S_002", NStr("en='Cannot connect to %1:%2. Details: %3';tr='%1:%2 ile bağlantı kurulamıyor. Ayrıntılar:%3'", Lang));
	
	// %1 - localhost
	// %2 - 8080
	Strings.Insert("S_003", NStr("en='Received response from %1:%2';tr='%1:%2 tarafından yanıt alındı'", Lang));
	Strings.Insert("S_004", NStr("en='Resource address is empty.';tr='Kaynak adresi boş.'", Lang));
	
	// %1 - connection_to_other_system
	Strings.Insert("S_005", NStr("en='Integration setting with name %1 is not found.';tr='%1 adıyla entegrasyon ayarı bulunamadı.'", Lang));
	Strings.Insert("S_006", NStr("en='Method is not supported in Web Client.';tr='Yöntem Web İstemcisinde desteklenmiyor'", Lang));
	
	// Special offers
	Strings.Insert("S_013", NStr("en='Unsupported object type: %1.';tr='Desteklenmeyen nesne türü: %1.'", Lang));
	
	// FileTransfer
	Strings.Insert("S_014", NStr("en='File name is empty.';tr='Dosya adı boş.'", Lang));
	Strings.Insert("S_015", NStr("en='Path for saving is not set.';tr='Kaydetme yolu belirlenmemiş.'", Lang));
	
	// Test connection
	// %1 - Method unsupported on web client
	// %2 - 404
	// %3 - Text frim site
	Strings.Insert("S_016", NStr("en='%1 Status code: %2 %3';tr='%1 Durum kodu: %2 %3'", Lang));
	
	//	scan barcode
	Strings.Insert("S_018", NStr("en='Item added.';tr='Malzeme eklendi.'", Lang)); 
	
	// %1 - 123123123123
	Strings.Insert("S_019", NStr("en='Barcode %1 not found.';tr='%1 barkodu bulunamadı.'", Lang));
	Strings.Insert("S_022", NStr("en='Currencies in the base documents must match.';tr='Ana belgelerdeki para birimleri eşleşmelidir.'", Lang));
	Strings.Insert("S_023", NStr("en='Procurement method';tr='Tedarik şekli'", Lang));
	
	Strings.Insert("S_026", NStr("en='Selected icon will be resized to 16x16 px.';tr='Seçilen simge 16x16 piksel olarak yeniden boyutlandırılacaktır.'", Lang));

	// presentation of empty value for query result
	Strings.Insert("S_027", NStr("en='[Not filled]';tr='[Doldurulmamış]'", Lang));
	// operation is Success
	Strings.Insert("S_028", NStr("en='Success';tr='Başarılı'", Lang));
	Strings.Insert("S_029", NStr("en='Not supoorting web client';tr='Desteklenmeyen web istemci'", Lang));
	Strings.Insert("S_030", NStr("en='Cashback';tr='Para üstü'", Lang));
	#EndRegion
	
	#Region Service
	Strings.Insert("Form_001", NStr("en='New page';tr='Yeni sayfa'", Lang));
	Strings.Insert("Form_002", NStr("en='Delete';tr='Kaldır'", Lang));
	Strings.Insert("Form_003", NStr("en='Quantity';tr='Miktar'", Lang));
	Strings.Insert("Form_004", NStr("en='Customers terms';tr='Müşteri anlaşmaları'", Lang));
	Strings.Insert("Form_005", NStr("en='Customers';tr='Müşteriler'", Lang));
	Strings.Insert("Form_006", NStr("en='Vendors';tr='Tedarikçiler'", Lang));
	Strings.Insert("Form_007", NStr("en='Vendors terms';tr='Tedarikçi anlaşması'", Lang));
	Strings.Insert("Form_008", NStr("en='User';tr='Kullanıcı'", Lang));
	Strings.Insert("Form_009", NStr("en='User group';tr='Kullanıcı grubu'", Lang));
	Strings.Insert("Form_013", NStr("en='Date';tr='Tarih'", Lang));
	Strings.Insert("Form_014", NStr("en='Number';tr='Numara'", Lang));
	
	// change icon
	Strings.Insert("Form_017", NStr("en='Change';tr='Değiştir'", Lang));
	
	// clear icon
	Strings.Insert("Form_018", NStr("en='Clear';tr='Temizle'", Lang));
	
	// cancel answer on question
	Strings.Insert("Form_019", NStr("en='Cancel';tr='İptal'", Lang));
	
	// PriceInfo report 
	Strings.Insert("Form_022", NStr("en='1. By item keys';tr='1. Varyantlara göre'", Lang));
	Strings.Insert("Form_023", NStr("en='2. By properties';tr='2. Özelliklere göre'", Lang));
	Strings.Insert("Form_024", NStr("en='3. By items';tr='3. Malzemelere göre'", Lang));
	
	Strings.Insert("Form_025", NStr("en='Create from classifier';tr='Sınıflandırıcıdan oluştur'", Lang));
	
	Strings.Insert("Form_026", NStr("en='Item Bundle';tr='Malzeme Paketi'", Lang));
	Strings.Insert("Form_027", NStr("en='Item';tr='Malzeme'", Lang));
	Strings.Insert("Form_028", NStr("en='Item type';tr='Malzeme tipi'", Lang));
	Strings.Insert("Form_029", NStr("en='External attributes';tr='Dış özellikler'", Lang));
	#EndRegion
	
	#Region ErrorMessages

	// %1 - en
	Strings.Insert("Error_002", NStr("en='%1 description is empty';tr='%1 açıklaması boş'", Lang));
	Strings.Insert("Error_003", NStr("en='Fill any description.';tr='Herhangi bir açıklama girininiz.'", Lang));
	Strings.Insert("Error_004", NStr("en='Metadata is not supported.';tr='Meta veriler desteklenmiyor.'", Lang));
	
	// %1 - en
	Strings.Insert("Error_005", NStr("en='Fill the description of an additional attribute %1.';tr='Ek bir %1 özniteliğinin açıklamasını doldurunuz.'", Lang));
	Strings.Insert("Error_008", NStr("en='Groups are created by an administrator.';tr='Gruplar bir yönetici tarafından oluşturulur.'", Lang));
	
	// %1 - Number 111 is not unique
	Strings.Insert("Error_009", NStr("en='Cannot write the object: [%1].';tr='Nesne yazılamıyor: [%1].'", Lang));
	
	// %1 - Number
	Strings.Insert("Error_010", NStr("en='Field [%1] is empty.';tr='[%1] alanı boş.'", Lang));
	Strings.Insert("Error_011", NStr("en='Add at least one row.';tr='En az bir satır ekleyin.'", Lang));
	Strings.Insert("Error_012", NStr("en='Variable is not named according to the rules.';tr='Değişken, kurallara göre adlandırılmaz.'", Lang));
	Strings.Insert("Error_013", NStr("en='Value is not unique.';tr='Değer benzersiz değil.'", Lang));
	Strings.Insert("Error_014", NStr("en='Password and password confirmation do not match.';tr='Parola ve parola onayı eşleşmiyor.'", Lang));

	// %1 - Sales order
	Strings.Insert("Error_016", NStr("en='There are no more items that you need to order from suppliers in the ""%1"" document.';tr='""%1"" belgesinde tedarikçilerden sipariş etmeniz gereken başka ürün yok.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_017", NStr("en='First, create a ""%1"" document or clear the ""%1 before %2"" check box on the ""Other"" tab.';tr='İlk olarak, bir ""%1"" belgesi oluşturun veya ""Diğer"" sekmesindeki ""%1 %2''den önce"" onay kutusunu temizleyin.'", Lang));

	// %1 - Shipment confirmation
	// %1 - Sales invoice
	Strings.Insert("Error_018", NStr("en='First, create a ""%1"" document or clear the ""%1 before %2"" check box on the ""Other"" tab.';tr='İlk olarak, bir ""%1"" belgesi oluşturun veya ""Diğer"" sekmesindeki ""%1 %2''den önce"" onay kutusunu temizleyin.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_019", NStr("en='There are no lines for which you need to create a ""%1"" document in the ""%2"" document.';tr='""%2"" belgesinde ""%1"" belgesi oluşturmanız gereken satır yok.'", Lang));

	// %1 - 12
	Strings.Insert("Error_020", NStr("en='Specify a base document for line %1.';tr='%1 satırı için bir ana belge belirtin.'", Lang));

	// %1 - Purchase invoice
	Strings.Insert("Error_021", NStr("en='There are no products to return in the ""%1"" document. All products are already returned.';tr='""%1"" belgesinde iade edilecek ürün yok. Tüm ürünler zaten iade edildi.'", Lang));
	
	// %1 - Internal supply request
	Strings.Insert("Error_023", NStr("en='There are no more items that you need to order from suppliers in the ""%1"" document.';tr='""%1"" belgesinde tedarikçilerden sipariş etmeniz gereken başka ürün yok.'", Lang));
	
	// %1 - Goods receipt
	// %2 - Purchase invoice
	Strings.Insert("Error_028", NStr("en='Select the ""%1 before %2"" check box on the ""Other"" tab.';tr='""Diğer"" sekmesinde ""%2''den %1 önce"" onay kutusunu seçin.'", Lang));
	
	// %1 - Cash account
	// %2 - 12
	// %3 - Cheque bonds
	Strings.Insert("Error_030", NStr("en='Specify %1 in line %2 of the %3.';tr='%3''ün %2 satırında %1 belirtin.'", Lang));

	Strings.Insert("Error_031", NStr("en='Items were not received from the supplier according to the procurement method.';tr='Tedarik yöntemine göre malzemeler tedarikçiden alınmadı.'", Lang));
	Strings.Insert("Error_032", NStr("en='Action not completed.';tr='Eylem tamamlanmadı.'", Lang));
	Strings.Insert("Error_033", NStr("en='Duplicate attribute.';tr='Yinelenen özellik.'", Lang));
	// %1 - Google drive
	Strings.Insert("Error_034", NStr("en='%1 is not a picture storage volume.';tr='%1 bir resim depolama birimi değil.'", Lang));
	Strings.Insert("Error_035", NStr("en='Cannot upload more than 1 file.';tr='1''den fazla dosya yüklenemez.'", Lang));
	Strings.Insert("Error_037", NStr("en='Unsupported type of data composition comparison.';tr='Desteklenmeyen veri bileşimi karşılaştırması türü.'", Lang));	
	Strings.Insert("Error_040", NStr("en='Only picture files are supported.';tr='Yalnızca resim dosyaları desteklenir.'", Lang));
	Strings.Insert("Error_041", NStr("en='Tax table contains more than 1 row [key: %1] [tax: %2].';tr='Vergi tablosu 1''den fazla satır içeriyor [anahtar: %1] [vergi: %2].'", Lang));
	// %1 - Name
	Strings.Insert("Error_042", NStr("en='Cannot find a tax by column name: %1.';tr='Sütun adına göre bir vergi bulunamıyor: %1.'", Lang));
	Strings.Insert("Error_043", NStr("en='Unsupported document type.';tr='Desteklenmeyen belge türü.'", Lang));
	Strings.Insert("Error_044", NStr("en='Operation is not supported.';tr='İşlem desteklenmiyor.'", Lang));
	Strings.Insert("Error_045", NStr("en='Document is empty.';tr='Belge boş.'", Lang));
	// %1 - Currency
	Strings.Insert("Error_047", NStr("en='""%1"" is a required field.';tr='""%1"" zorunlu bir alandır.'", Lang));
	Strings.Insert("Error_049", NStr("en='Default picture storage volume is not set.';tr='Varsayılan resim saklama hacmi ayarlanmamıştır.'", Lang));
	Strings.Insert("Error_050", NStr("en='Currency exchange is available only for the same-type accounts (cash accounts or bank accounts).';tr='Döviz değişimi yalnızca aynı türdeki hesaplar için (kasa hesapları veya banka hesapları) kullanılabilir.'", Lang));
	// %1 - Bank payment
	Strings.Insert("Error_051", NStr("en='There are no lines for which you can create a ""%1"" document, or all ""%1"" documents are already created.';tr='Kendisi için bir ""%1"" belgesi oluşturabileceğiniz satır yok veya tüm ""%1"" belgeleri zaten oluşturulmuş.'", Lang));
	// %1 - Main store
	// %2 - Use shipment confirmation
	// %3 - Shipment confirmations
	Strings.Insert("Error_052", NStr("en='Cannot clear the ""%2"" check box. 
|Documents ""%3"" from store %1 were already created.';tr='""%2"" onay kutusu temizlenemiyor.
|%1 mağazasından ""%3"" belgeleri zaten oluşturulmuş.'", Lang));
	
	// %1 - Main store
	// %2 - Use goods receipt
	// %3 - Goods receipts
	Strings.Insert("Error_053", NStr("en='Cannot clear the ""%2"" check box. Documents ""%3"" from store %1 were already created.';tr='""%2"" onay kutusu temizlenemiyor. %1 mağazasından ""%3"" belgeleri zaten oluşturulmuş.'", Lang));
	
	// %1 - sales order
	Strings.Insert("Error_054", NStr("en='Cannot continue. The ""%1""document has an incorrect status.';tr='Devam edilemez. ""%1"" belgesinin durumu yanlış.'", Lang));
															  
	Strings.Insert("Error_055", NStr("en='There are no lines with a correct procurement method.';tr='Doğru tedarik yöntemine sahip hatlar yoktur.'", Lang));

	Strings.Insert("Error_056", NStr("en='All items in the sales order are already ordered using purchase order(s).';tr='Satış siparişindeki tüm kalemler, satın alma siparişleri kullanılarak zaten sipariş edilmiştir.'", Lang));

	// %1 - sales order
	// %2 - purchase order
	Strings.Insert("Error_056", NStr("en='All items in the ""%1"" document are already ordered using the ""%2"" document(s).';tr='""%1"" belgesindeki tüm öğeler ""%2"" belgeleri kullanılarak zaten sıralanmıştır.'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_057", NStr("en='You do not need to create a ""%1"" document for the selected ""%2"" document(s).';tr='Seçili ""%2"" dokümanlar için ""%1"" doküman oluşturmanıza gerek yoktur.'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_058", NStr("en='The total amount of the ""%2"" document(s) is already paid on the basis of the ""%1"" document(s).';tr='""%2"" belgelerinin toplam tutarı, ""%1"" belgeleri temelinde zaten ödendi.'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_059", NStr("en='In the selected documents, there are ""%2"" document(s) with existing ""%1"" document(s)
| and those that do not require a ""%1"" document.';tr='Seçilen belgelerde, mevcut ""%1"" belgelerine sahip ""%2"" belgeler var
|  ve ""%1"" belgesi gerektirmeyenler.'", Lang));
	
	// %1 - Bank receipt
	// %2 - Cash transfer order
	Strings.Insert("Error_060", NStr("en='The total amount of the ""%2"" document(s) is already received on the basis of the ""%1"" document(s).';tr='""%2"" belgelerinin toplam miktarı, ""%1"" belgeleri temelinde zaten alındı.'", Lang));
	
	// %1 - Main store
	// %2 - Shipment confirmation
	// %3 - Sales order
	Strings.Insert("Error_064", NStr("en='You do not need to create a ""%2"" document for store(s) %1. The item will be shipped using the ""%3"" document.';tr='%1 mağazaları için ""%2"" belgesi oluşturmanıza gerek yok. Ürün, ""%3"" belgesi kullanılarak gönderilecek.'", Lang));
	
	Strings.Insert("Error_065", NStr("en='Item key is not unique.';tr='Varyant benzersiz değil.'", Lang));
	Strings.Insert("Error_066", NStr("en='Specification is not unique.';tr='Spesifikasyon benzersiz değil.'", Lang));

	// %1 - 12
	// %2 - Boots
	// %3 - Red XL
	// %4 - ordered
	// %5 - 11
	// %6 - 15
	// %7 - 4
	// %8 - pcs
	Strings.Insert("Error_068", NStr("en='Line No. [%1] [%2 %3] %4 remaining: %5 %8. Required: %6 %8. Lacking: %7 %8.';tr='Satır No. [%1] [%2 %3]% 4 kaldı: %5 %8. Gerekli: %6 %8. Eksik: %7 %8.'", Lang));

	// %1 - some extention name
	Strings.Insert("Error_071", NStr("en='Plugin ""%1"" is not connected.';tr='""%1"" eklentisi bağlı değil.'", Lang));
	
	// %1 - 12
	Strings.Insert("Error_072", NStr("en='Specify a store in line %1.';tr='%1 satırında bir mağaza belirtin.'", Lang));

	// %1 - Sales order
	// %2 - Goods receipt
	Strings.Insert("Error_073", NStr("en='All items in the ""%1"" document(s) are already received using the ""%2"" document(s).';tr='""%1"" belgelerindeki tüm öğeler, ""%2"" belgeleri kullanılarak zaten alındı.'", Lang));
	Strings.Insert("Error_074", NStr("en='Currency transfer is available only when amounts are equal.';tr='Para birimi transferi yalnızca tutarlar eşit olduğunda kullanılabilir.'", Lang));

	// %1 - Physical count by location
	Strings.Insert("Error_075", NStr("en='There are ""%1"" documents that are not closed.';tr='Kapatılmamış ""%1"" dokümanlar var.'", Lang));
	
	// %1 - Retail sales receipt
	Strings.Insert("Error_076", NStr("en='There are no products to return in the ""%1"" document. All products are already returned.';tr='""%1"" belgesinde iade edilecek ürün yok. Tüm ürünler zaten iade edildi.'", Lang));
	
	// %1 - 12
	Strings.Insert("Error_077", NStr("en='Basis document is empty in line %1.';tr='Ana belge %1 satırında boş.'", Lang));
	
	// %1 - 1 %2 - 2
	Strings.Insert("Error_078", NStr("en='Quantity [%1] does not match the quantity [%2] by serial/lot numbers';tr='Girilen [%1] adet, seri lotuna ait [%2] adedinden farklıdır'", Lang));
	
	//%1 - 100.00 %2 - 120.00
	Strings.Insert("Error_079", NStr("en='Payment amount [%1] and return amount [%2] not match';tr='Ödeme tutar ([%1]) iade tutarından ([%2]) farklıdır'", Lang));
	
	//%1 - 1 %2 - Goods receipt %3 - 10 %4 - 8
	Strings.Insert("Error_080", NStr("en='In line %1 quantity by %2 %3 greater than %4';tr='%1 satırında %2 %3 adet %4 adedinden daha büyük'", Lang));
	
	//%1 - 1 %2 - Dress %3 - Red/38 %4 - 8 %5 - 10
	Strings.Insert("Error_081", NStr("en='In line %1 quantity by %2-%3 %4 less than quantity by goods receipt %5';tr='%1 satırında %2-%3 %4 adedi %5 alım irsaliyesindeki adetten daha küçük'", Lang));
	
	//%1 - 1 %2 - Dress %3 - Red/38 %4 - 10 %5 - 8
	Strings.Insert("Error_082", NStr("en='In line %1 quantity by %2-%3 %4 less than quantity by goods receipt %5';tr='%1 satırında %2-%3 %4 adedi %5 alım irsaliyesindeki adetten daha küçük'", Lang));
	
	#EndRegion
	
	#Region InfoMessages
	// %1 - Purchase invoice
	// %2 - Purchase order
	Strings.Insert("InfoMessage_001", NStr("en='The ""%1"" document does not fully match the ""%2"" document because 
|there is already another ""%1"" document that partially covered this ""%2"" document.';tr='""%1"" belgesi, ""%2"" belgesiyle tam olarak eşleşmiyor çünkü
|zaten bu ""%2"" belgesini kısmen kapsayan başka bir ""%1"" belgesi var.'", Lang));
	// %1 - Boots
	Strings.Insert("InfoMessage_002", NStr("en='Object %1 created.';tr='%1 nesnesi oluşturuldu.'", Lang));
	Strings.Insert("InfoMessage_003", NStr("en='This is a service form.';tr='Bu bir hizmet formudur.'", Lang));
	Strings.Insert("InfoMessage_004", NStr("en='Save the object to continue.';tr='Devam etmek için nesneyi kaydedin.'", Lang));
	Strings.Insert("InfoMessage_005", NStr("en='Done';tr='Tamamlandı'", Lang));
	
	// %1 - Physical count by location
	Strings.Insert("InfoMessage_006", NStr("en='The ""%1"" document is already created. You can update the quantity.';tr='""%1"" belgesi zaten oluşturulmuş. Miktarı güncelleyebilirsiniz.'", Lang));
	
	// %1 - 12
	// %2 - 20.02.2020
	Strings.Insert("InfoMessage_007", NStr("en='#%1 date: %2';tr='#%1 tarih: %2'", Lang));
	#EndRegion
	
	#Region QuestionToUser
	Strings.Insert("QuestionToUser_001", NStr("en='Write the object to continue. Continue?';tr='Devam etmek için nesneyi yazın. Devam edilsin mi?'", Lang));
	Strings.Insert("QuestionToUser_002", NStr("en='Do you want to switch to scan mode?';tr='Tarama moduna geçmek istiyor musunuz?'", Lang));
	Strings.Insert("QuestionToUser_003", NStr("en='Filled data on cheque bonds transactions will be deleted. Do you want to update %1?';tr='Doldurulmuş çek/senet bilgiler temizlenecek. %1 güncellemek ister misiniz?'", Lang));
	Strings.Insert("QuestionToUser_004", NStr("en='Do you want to change tax rates according to the partner term?';tr='Vergileri sözleşmeye göre değiştirmek ister misiniz?'", Lang));
	Strings.Insert("QuestionToUser_005", NStr("en='Do you want to update filled stores?';tr='Tüm depoları güncellemek ister misiniz?'", Lang));
	Strings.Insert("QuestionToUser_006", NStr("en='Do you want to update filled currency?';tr='Doldurulan para birimini güncellemek istiyor musunuz?'", Lang));
	Strings.Insert("QuestionToUser_007", NStr("en='Transaction table will be cleared. Continue?';tr='İşlemler tablosu temizlenecek. Devam etmek ister misiniz?'", Lang));
	Strings.Insert("QuestionToUser_008", NStr("en='Changing the currency will clear the rows with cash transfer documents. Continue?';tr='Para birimini değiştirmek, nakit transferi belgelerini içeren satırları temizleyecektir. Devam ediyor muyuz?'", Lang));
	Strings.Insert("QuestionToUser_009", NStr("en='Do you want to update filled stores on %1?';tr='%1''de dolu mağazaları güncellemek istiyor musunuz?'", Lang));
	Strings.Insert("QuestionToUser_011", NStr("en='Do you want to update filled price types on %1?';tr='%1''de doldurulan fiyat türlerini güncellemek istiyor musunuz?'", Lang));
	Strings.Insert("QuestionToUser_012", NStr("en='Do you want to exit?';tr='Çıkmak istediğinizden emin misiniz?'", Lang));
	Strings.Insert("QuestionToUser_013", NStr("en='Do you want to update filled prices?';tr='Doldurulmuş fiyatları güncellemek istiyor musunuz?'", Lang));
	Strings.Insert("QuestionToUser_014", NStr("en='Transaction type is changed. Do you want to update filled data?';tr='İşlem türü değiştirildi. Doldurulmuş verileri güncellemek istiyor musunuz?'", Lang));
	Strings.Insert("QuestionToUser_015", NStr("en='Filled data will be cleared. Continue?';tr='Doldurulan veriler silinecektir. Devam edilsin mi?'", Lang));
	Strings.Insert("QuestionToUser_016", NStr("en='Do you want to change or clear the icon?';tr='Simgeyi değiştirmek mi yoksa temizlemek mi istiyorsunuz?'", Lang));
	#EndRegion
	
	#Region SuggestionToUser
	Strings.Insert("SuggestionToUser_1", NStr("en='Select a value';tr='Bir değer seçin'", Lang));
	Strings.Insert("SuggestionToUser_2", NStr("en='Enter a barcode';tr='Bir barkod giriniz'", Lang));
	Strings.Insert("SuggestionToUser_3", NStr("en='Enter an option name';tr='Bir seçenek adı giriniz'", Lang));
	Strings.Insert("SuggestionToUser_4", NStr("en='Enter a new option name';tr='Yeni bir seçenek adı giriniz'", Lang));
	#EndRegion
	
	#Region UsersEvent
	Strings.Insert("UsersEvent_001", NStr("en='User not found by UUID %1 and name %2.';tr='Kullanıcı, %1 UUID ve %2 adı ile bulunamadı.'", Lang));
	Strings.Insert("UsersEvent_002", NStr("en='User found by UUID %1 and name %2.';tr='Kullanıcı, %1 UUID ve %2 adı tarafından bulundu.'", Lang));
	#EndRegion
	
	#Region Items
	
	// Interface
	Strings.Insert("I_1", NStr("en='Enter description';tr='Açıklama giriniz'", Lang));
	
	Strings.Insert("I_2", NStr("en='Click to enter description';tr='Açıklama girmek için tıklayın'", Lang));
	
	Strings.Insert("I_3", NStr("en='Fill out the document';tr='Belgeyi doldurunuz'", Lang));
	
	#EndRegion
	
	#Region Exceptions
	Strings.Insert("Exc_001", NStr("en='Unsupported object type.';tr='Desteklenmeyen nesne türü.'", Lang));
	Strings.Insert("Exc_002", NStr("en='No conditions';tr='Koşul yok'", Lang));
	Strings.Insert("Exc_003", NStr("en='Method is not implemented: %1.';tr='Yöntem uygulanmadı: %1.'", Lang));
	Strings.Insert("Exc_004", NStr("en='Cannot extract currency from the object.';tr='Nesneden para birimi çıkarılamıyor.'", Lang));
	Strings.Insert("Exc_005", NStr("en='Library name is empty.';tr='Kütüphane adı boş.'", Lang));
	Strings.Insert("Exc_006", NStr("en='Library data does not contain a version.';tr='Kütüphane veriler sürümü içermiyor.'", Lang));
	Strings.Insert("Exc_007", NStr("en='Not applicable for library version %1.';tr='%1 kütüphane sürümü için geçerli değil.'", Lang));
	Strings.Insert("Exc_008", NStr("en='Unknown row key.';tr='Bilinmeyen satır anahtarı.'", Lang));
	Strings.Insert("Exc_009", NStr("en='Error: %1';tr='Hata: %1'", Lang));
	#EndRegion
	
	#Region Saas
	// %1 - 12
	Strings.Insert("Saas_001", NStr("en='Area %1 not found.';tr='%1 alanı bulunamadı.'", Lang));
	
	// %1 - closed
	Strings.Insert("Saas_002", NStr("en='Area status: %1.';tr='Alan durumu:%1.'", Lang));
	
	// %1 - en
	Strings.Insert("Saas_003", NStr("en='Localization %1 of the company is not available.';tr='Şirketin %1 yerelleştirmesi mevcut değil. '", Lang));
	#EndRegion
	
	#Region FillingFromClassifiers
    // Do not modify "en" strings
    Strings.Insert("Class_001", NStr("en='Purchase price';tr='Alım fiyatı'", Lang));
    Strings.Insert("Class_002", NStr("en='Sales price';tr='Satış fiyatı'", Lang));
    Strings.Insert("Class_003", NStr("en='Prime cost';tr='Birim maliyet fiyatı'", Lang));
    Strings.Insert("Class_004", NStr("en='Service';tr='Hizmet'", Lang));
    Strings.Insert("Class_005", NStr("en='Product';tr='Malzeme'", Lang));
    Strings.Insert("Class_006", NStr("en='Main store';tr='Ana depo'", Lang));
    Strings.Insert("Class_007", NStr("en='Main manager';tr='Ana sorumlu'", Lang));
    Strings.Insert("Class_008", NStr("en='pcs';tr='adet'", Lang));
    #EndRegion
    
    #Region PredefinedObjectDescriptions
	PredefinedDescriptions(Strings, Lang);
	#EndRegion
    
	#Region Titles
	// %1 - Cheque bond transaction
	Strings.Insert("Title_00100", NStr("en='Select base documents in the ""%1"" document.';tr='""%1"" belgesindeki ana belgeleri seçin.'", Lang));	// Form PickUpDocuments
	#EndRegion
	
	#Region ChoiceListValues
	Strings.Insert("CLV_1", NStr("en='All';tr='Tümü'", Lang));
	#EndRegion
	
	Return Strings;
EndFunction

Procedure PredefinedDescriptions(Strings, CodeLanguage)

	Strings.Insert("Description_A001", NStr("en='Catalog Partner terms';tr='Sözleşmeler'", CodeLanguage));
	Strings.Insert("Description_A003", NStr("en='Catalog Business units';tr='K Departmanlar'", CodeLanguage));
	Strings.Insert("Description_A004", NStr("en='Catalog Cash accounts';tr='K Kasa/Banka'", CodeLanguage));
	Strings.Insert("Description_A005", NStr("en='Catalog Cheque bonds';tr='K Çek/Senetler'", CodeLanguage));
	Strings.Insert("Description_A006", NStr("en='Catalog Companies';tr='K Şirketler'", CodeLanguage));
	Strings.Insert("Description_A007", NStr("en='Catalog Company types';tr='K Şirket tipleri'", CodeLanguage));
	Strings.Insert("Description_A008", NStr("en='Catalog Countries';tr='K Ülkeler'", CodeLanguage));
	Strings.Insert("Description_A009", NStr("en='Catalog Currencies';tr='K Dövizler'", CodeLanguage));
	Strings.Insert("Description_A010", NStr("en='Catalog Expense and revenue types';tr='K Gider ve gelir tipleri'", CodeLanguage));
	Strings.Insert("Description_A011", NStr("en='Catalog Item keys';tr='K Varyantlar'", CodeLanguage));
	Strings.Insert("Description_A012", NStr("en='Catalog Items';tr='K Malzemeler'", CodeLanguage));
	Strings.Insert("Description_A013", NStr("en='Catalog Item types';tr='K Malzeme tipleri'", CodeLanguage));
	Strings.Insert("Description_A014", NStr("en='Catalog Partners';tr='K Cari hesaplar'", CodeLanguage));
	Strings.Insert("Description_A015", NStr("en='Catalog Price keys';tr='K Fiyat anahtarları'", CodeLanguage));
	Strings.Insert("Description_A016", NStr("en='Catalog Price types';tr='K Fiyat tipleri'", CodeLanguage));
	Strings.Insert("Description_A017", NStr("en='Catalog Serial lot numbers';tr='K Seri lot numaraları'", CodeLanguage));
	Strings.Insert("Description_A018", NStr("en='Catalog Specifications';tr='K Reçeteler'", CodeLanguage));
	Strings.Insert("Description_A019", NStr("en='Catalog Stores';tr='K Depolar'", CodeLanguage));
	Strings.Insert("Description_A020", NStr("en='Catalog Taxes';tr='K Vergiler'", CodeLanguage));
	Strings.Insert("Description_A021", NStr("en='Catalog Units';tr='K Birimler'", CodeLanguage));
	Strings.Insert("Description_A022", NStr("en='Catalog Users';tr='K Kullanıcılar'", CodeLanguage));
	Strings.Insert("Description_A023", NStr("en='Document Bank payment';tr='D Banka ödeme fişi'", CodeLanguage));
	Strings.Insert("Description_A024", NStr("en='Document Bank receipt';tr='D Banka tahsilat fişi'", CodeLanguage));
	Strings.Insert("Description_A025", NStr("en='Document Bundling';tr='D Takım oluşturma fişi'", CodeLanguage));
	Strings.Insert("Description_A026", NStr("en='Document Cash expense';tr='D Nakit gider fişi'", CodeLanguage));
	Strings.Insert("Description_A027", NStr("en='Document Cash payment';tr='D Kasa ödeme fişi'", CodeLanguage));
	Strings.Insert("Description_A028", NStr("en='Document Cash receipt';tr='D Kasa tahsilat fişi'", CodeLanguage));
	Strings.Insert("Description_A029", NStr("en='Document Cash revenue';tr='D Nakit gelir fişi'", CodeLanguage));
	Strings.Insert("Description_A030", NStr("en='Document Cash transfer order';tr='D Finansal transfer siparişi'", CodeLanguage));
	Strings.Insert("Description_A031", NStr("en='Document Cheque bond transaction';tr='D Çek/Senet bordrosu'", CodeLanguage));
	Strings.Insert("Description_A032", NStr("en='Document Goods receipt';tr='D Satın alma irsaliyesi'", CodeLanguage));
	Strings.Insert("Description_A033", NStr("en='Document Incoming payment order';tr='D Tahsilat siparişi'", CodeLanguage));
	Strings.Insert("Description_A034", NStr("en='Document Inventory transfer';tr='D Depo transfer fişi'", CodeLanguage));
	Strings.Insert("Description_A035", NStr("en='Document Inventory transfer order';tr='D Depo transfer siparişi'", CodeLanguage));
	Strings.Insert("Description_A036", NStr("en='Document Invoice match';tr='D Fatura kapatma fişi'", CodeLanguage));
	Strings.Insert("Description_A037", NStr("en='Document Labeling';tr='D Seri lot tanımlama fişi'", CodeLanguage));
	Strings.Insert("Description_A038", NStr("en='Document Opening entry';tr='D Açılış kayıt fişi'", CodeLanguage));
	Strings.Insert("Description_A039", NStr("en='Document Outgoing payment order';tr='D Ödeme siparişi'", CodeLanguage));
	Strings.Insert("Description_A040", NStr("en='Document Physical count by location';tr='D Lokasyon sayım fişi'", CodeLanguage));
	Strings.Insert("Description_A041", NStr("en='Document Physical inventory';tr='D Sayım fişi'", CodeLanguage));
	Strings.Insert("Description_A042", NStr("en='Document Price list';tr='D Fiyat listesi'", CodeLanguage));
	Strings.Insert("Description_A043", NStr("en='Document Purchase invoice';tr='D Satın alma faturası'", CodeLanguage));
	Strings.Insert("Description_A044", NStr("en='Document Purchase order';tr='D Satın alma siparişi'", CodeLanguage));
	Strings.Insert("Description_A045", NStr("en='Document Purchase return';tr='D Alım iadesi'", CodeLanguage));
	Strings.Insert("Description_A046", NStr("en='Document Purchase return order';tr='D Alım iade siparişi'", CodeLanguage));
	Strings.Insert("Description_A047", NStr("en='Document Reconciliation statement';tr='D Cari hesap mutabakat fişi'", CodeLanguage));
	Strings.Insert("Description_A048", NStr("en='Document Sales invoice';tr='D Satış faturası'", CodeLanguage));
	Strings.Insert("Description_A049", NStr("en='Document Sales order';tr='D Satış siparişi'", CodeLanguage));
	Strings.Insert("Description_A050", NStr("en='Document Sales return';tr='D Satış iadesi'", CodeLanguage));
	Strings.Insert("Description_A051", NStr("en='Document Sales return order';tr='D Satış iade siparişi'", CodeLanguage));
	Strings.Insert("Description_A052", NStr("en='Document Shipment confirmation';tr='D Sevk irsaliyesi'", CodeLanguage));
	Strings.Insert("Description_A053", NStr("en='Document Stock adjustment as surplus';tr='D Stok sayım girişi'", CodeLanguage));
	Strings.Insert("Description_A054", NStr("en='Document Stock adjustment as write off';tr='D Stok sayım çıkışı'", CodeLanguage));
	Strings.Insert("Description_A056", NStr("en='Document Unbundling';tr='D Ürün takımı bozma fişi'", CodeLanguage));
	Strings.Insert("Description_A057", NStr("en='User defined';tr='Kullanıcı tanımlı'", CodeLanguage));
	Strings.Insert("Description_A058", NStr("en='Cheque bond incoming';tr='Gelen çek/senet'", CodeLanguage));
	Strings.Insert("Description_A059", NStr("en='Cheque bond outgoing';tr='Çıkan çek/senet'", CodeLanguage));
	Strings.Insert("Description_A060", NStr("en='Document Credit debit note';tr='D Borç alacak dekontu'", CodeLanguage));
	Strings.Insert("Description_A061", NStr("en='Settlement currency';tr='Cari hesap dövizi'", CodeLanguage));
	Strings.Insert("Description_A062", NStr("en='Credit note';tr='Alacak dekontu'", CodeLanguage));
	Strings.Insert("Description_A063", NStr("en='Debit note';tr='Borç dekontu'", CodeLanguage));
		
EndProcedure
