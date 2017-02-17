.class public Lnet/veritran/vtuserapplication/states/VTApiAvailability;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/states/VTInternalState;


# static fields
.field public static final STATUS_API_NOT_AVAILABLE:Ljava/lang/String; = "002"

.field public static final STATUS_GENERIC_ERROR:Ljava/lang/String; = "001"

.field public static final STATUS_OK:Ljava/lang/String; = "000"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpVTTokens(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/Model;)V
    .locals 4

    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Token Function Called "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Token Next State "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Token Function Called Result"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Token PhoneNumber"

    aput-object v2, v0, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    return-void

    nop

    :array_0
    .array-data 4
        0x6e
        0x6f
        0x70
        0xaf
    .end array-data
.end method

.method public static dumpVTTokens(Ljava/lang/String;[Ljava/lang/String;[ILnet/veritran/vtuserapplication/model/Model;)V
    .locals 0

    return-void
.end method

.method public static process()I
    .locals 4

    const/16 v3, 0x70

    :try_start_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    const-string v2, "VTTOKEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "1"

    :cond_0
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    const-string v2, "002"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/states/VTStateException;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lnet/veritran/vtuserapplication/states/VTStateException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const-string v1, "001"

    invoke-virtual {v0, v3, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_1
    :try_start_1
    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v2, "CONTACTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "0"

    goto :goto_0

    :cond_3
    const-string v2, "VTTHEME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "0"

    goto :goto_0

    :cond_4
    const-string v2, "CHAT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "0"

    goto :goto_0

    :cond_5
    const-string v2, "LANGUAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "0"

    goto :goto_0

    :cond_6
    const-string v2, "EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "1"

    goto :goto_0

    :cond_7
    const-string v2, "DIAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "1"

    goto :goto_0

    :cond_8
    const-string v2, "MAPVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "3"

    goto :goto_0

    :cond_9
    const-string v2, "LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "1"

    goto/16 :goto_0

    :cond_a
    const-string v2, "VASCO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "0"

    goto/16 :goto_0

    :cond_b
    const-string v2, "BROWSER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "1"

    goto/16 :goto_0

    :cond_c
    const-string v2, "BARCODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "3"

    goto/16 :goto_0

    :cond_d
    const-string v2, "MATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "1"

    goto/16 :goto_0

    :cond_e
    const-string v2, "LOCALPASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "1"

    goto/16 :goto_0

    :cond_f
    const-string v2, "CARDDATA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "4"

    goto/16 :goto_0

    :cond_10
    const-string v2, "CARDIMAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v0, "2"

    goto/16 :goto_0

    :cond_11
    const-string v2, "PUSH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v0, "2"

    goto/16 :goto_0

    :cond_12
    const-string v2, "QR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v0, "3"

    goto/16 :goto_0

    :cond_13
    const-string v2, "PROPERTIES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v0, "1"

    goto/16 :goto_0

    :cond_14
    const-string v2, "SHARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v0, "1"

    goto/16 :goto_0

    :cond_15
    const-string v2, "ARRAYFUNCTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v0, "1"

    goto/16 :goto_0

    :cond_16
    const-string v2, "CUSTOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v0, "1"

    goto/16 :goto_0

    :cond_17
    const-string v2, "CARDREADER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v0, "0"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getCardReaderLibraryImplementation()Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catch Lnet/veritran/vtuserapplication/model/InvalidSetupException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    const-string v1, "VTApiAvailability"

    const-string v2, "CardReader Library not implemented"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const-string v1, "001"

    invoke-virtual {v0, v3, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    :try_start_4
    const-string v2, "HCE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "1"

    goto/16 :goto_0

    :cond_19
    const-string v2, "FINGERPRINT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v0, "0"
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getFingerprintImplementation()Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_5
    .catch Lnet/veritran/vtuserapplication/model/InvalidSetupException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :try_start_6
    const-string v1, "VTApiAvailability"

    const-string v2, "Fingerprint Library not implemented"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    const-string v2, "FACERECOGNITION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lnet/veritran/vtuserapplication/api/facerecognition/VTAPIFaceRecognitionManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    const-string v2, "PHOTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getPhotoImplementation()Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_7
    .catch Lnet/veritran/vtuserapplication/model/InvalidSetupException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v0

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :try_start_8
    const-string v1, "VTApiAvailability"

    const-string v2, "Photo Library not implemented"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0xdc

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    const-string v2, "000"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1
.end method
