.class public Lnet/veritran/vtuserapplication/api/mobilecardreader/VTMobileCardReaderAPI;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_100:Ljava/lang/String; = "100"

.field public static final ERR_101:Ljava/lang/String; = "101"

.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final STATUS_DEVICEID_NOT_DEFINED:Ljava/lang/String; = "000"

.field public static final STATUS_LINKED:Ljava/lang/String; = "002"

.field public static final STATUS_NOT_LINKED:Ljava/lang/String; = "001"

.field public static final TAG:Ljava/lang/String; = "VTMobileCardReaderAPI"

.field private static a:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getMobileCardReaderImplementationImplementation()Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/mobilecardreader/VTMobileCardReaderAPI;->a:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 5

    const/16 v4, 0x70

    const-string v0, "VTMobileCardReaderAPI"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x6f

    :try_start_0
    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/16 v1, 0x70

    const-string v2, "000"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "VTMobileCardReaderAPI"

    const-string v2, "getStatus"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "000"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :cond_1
    sget-object v1, Lnet/veritran/vtuserapplication/api/mobilecardreader/VTMobileCardReaderAPI;->a:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

    invoke-interface {v1}, Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;->checkVolume()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v2, "100"

    invoke-direct {v1, v2}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    const-string v0, "VTMobileCardReaderAPI"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string v2, "VTMobileCardReaderAPI"

    const-string v3, "setup"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    new-instance v1, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    const-string v1, "VTMobileCardReaderAPI"

    const-string v2, "throw runtimeException"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    const-string v1, "001"

    invoke-virtual {v0, v4, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
