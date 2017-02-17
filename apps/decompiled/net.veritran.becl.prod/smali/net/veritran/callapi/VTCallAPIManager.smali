.class public Lnet/veritran/callapi/VTCallAPIManager;
.super Ljava/lang/Object;


# static fields
.field public static final API_AVAILABILITY:I = 0x76

.field public static final API_CARDDATA:I = 0x78

.field public static final API_CARDIMAGE:I = 0x79

.field public static final API_CARDREADER:I = 0x81

.field public static final API_CUSTOM_1:I = 0x1f4

.field public static final API_CUSTOM_10:I = 0x1fd

.field public static final API_CUSTOM_2:I = 0x1f5

.field public static final API_CUSTOM_3:I = 0x1f6

.field public static final API_CUSTOM_4:I = 0x1f7

.field public static final API_CUSTOM_5:I = 0x1f8

.field public static final API_CUSTOM_6:I = 0x1f9

.field public static final API_CUSTOM_7:I = 0x1fa

.field public static final API_CUSTOM_8:I = 0x1fb

.field public static final API_CUSTOM_9:I = 0x1fc

.field public static final API_FACERECOGNITION:I = 0x84

.field public static final API_FINGERPRINT:I = 0x83

.field public static final API_HCE2:I = 0x86

.field public static final API_LOCALPASS:I = 0x77

.field public static final API_MOBILECARDREADER:I = 0x80

.field public static final API_NFC:I = 0x7d

.field public static final API_PHOTO:I = 0x85

.field public static final API_PROPERTIES:I = 0x7a

.field public static final API_PUSH:I = 0x7b

.field public static final API_QR:I = 0x7c

.field public static final API_SHARE:I = 0x7f

.field public static final BARCODE_GENERATION:I = 0x75

.field public static final INTERNAL_BROWSER_CALL:I = 0x74

.field public static final INTERNAL_DIAL_STATE:I = 0x6f

.field public static final INTERNAL_LANGUAGE_SETTER:I = 0x73

.field public static final INTERNAL_LOCATION_API:I = 0x71

.field public static final INTERNAL_MAPVIEWER_STATE:I = 0x70

.field public static final INTERNAL_SMS_STATE:I = 0x6a

.field public static final INTERNAL_TOKEN_STATE:I = 0x69

.field public static final INTERNAL_VASCO_DP:I = 0x72

.field public static final START_RESTORE_PROCESS:Ljava/lang/String; = "150"

.field public static final STATUS_API_GENERIC_ERROR:Ljava/lang/String; = "999"

.field public static final STATUS_INVALID_API_ERROR:Ljava/lang/String; = "998"


# direct methods
.method public constructor <init>(Lnet/veritran/callapi/model/CallApiParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/callapi/exception/VTCallAPIException;
        }
    .end annotation

    const/16 v4, 0x70

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const-string v2, "998"

    invoke-virtual {v1, v4, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v1, Lnet/veritran/callapi/exception/VTCallAPIException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "API: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " undefined"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    const-string v2, "999"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "La API: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no se encuentra soportada"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "La API: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no se encuentra soportada"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTTokenState;->process()I

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    :goto_0
    return-void

    :sswitch_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSMSStateImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/states/VTApiStateInterface;->init()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getSMSStateImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/states/VTApiStateInterface;->process()I

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getVTDialImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/states/VTApiStateInterface;->init()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getVTDialImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/states/VTApiStateInterface;->process()I

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->process()V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lnet/veritran/vtuserapplication/api/qr/VTAPIBarcodeManager;->process()V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTApiAvailability;->process()I

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTLocalPassword;->process()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lnet/veritran/callapi/VTCardGeneratorAPIManager;->process()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTCardImageGenerator;->process()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lnet/veritran/callapi/VTAPIPropertiesManager;->process()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->process()V

    goto :goto_0

    :sswitch_b
    invoke-static {}, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->process()V

    goto :goto_0

    :sswitch_c
    invoke-static {}, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->process()V

    goto :goto_0

    :sswitch_d
    invoke-static {}, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager;->process()V

    goto :goto_0

    :sswitch_e
    invoke-static {}, Lnet/veritran/vtuserapplication/api/mobilecardreader/VTMobileCardReaderAPI;->process()V

    goto :goto_0

    :sswitch_f
    invoke-static {}, Lnet/veritran/vtuserapplication/api/cardreader/VTAPICardReaderManager;->process()V

    goto/16 :goto_0

    :sswitch_10
    invoke-static {}, Lnet/veritran/vtuserapplication/api/hce/VTHCEAPI;->process()V

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lnet/veritran/vtuserapplication/api/fingerprint/VTFingerprintAPI;->process()V

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->process()V

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lnet/veritran/vtuserapplication/api/photo/VTPhotoAPI;->process()V

    goto/16 :goto_0

    :sswitch_14
    invoke-static {v0}, Lnet/veritran/callapi/VTCustomAPIManager;->process(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6a -> :sswitch_1
        0x6f -> :sswitch_2
        0x71 -> :sswitch_3
        0x75 -> :sswitch_4
        0x76 -> :sswitch_5
        0x77 -> :sswitch_6
        0x78 -> :sswitch_7
        0x79 -> :sswitch_8
        0x7a -> :sswitch_9
        0x7b -> :sswitch_a
        0x7c -> :sswitch_b
        0x7d -> :sswitch_c
        0x7f -> :sswitch_d
        0x80 -> :sswitch_e
        0x81 -> :sswitch_f
        0x83 -> :sswitch_11
        0x84 -> :sswitch_12
        0x85 -> :sswitch_13
        0x86 -> :sswitch_10
        0x1f4 -> :sswitch_14
        0x1f5 -> :sswitch_14
        0x1f6 -> :sswitch_14
        0x1f7 -> :sswitch_14
        0x1f8 -> :sswitch_14
        0x1f9 -> :sswitch_14
        0x1fa -> :sswitch_14
        0x1fb -> :sswitch_14
        0x1fc -> :sswitch_14
        0x1fd -> :sswitch_14
    .end sparse-switch
.end method
