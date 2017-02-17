.class public Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_CAMERA_ACCESS_DENIED:Ljava/lang/String; = "104"

.field public static final ERR_CAMERA_CANCEL:Ljava/lang/String; = "107"

.field public static final ERR_CAMERA_EXCEPTION:Ljava/lang/String; = "105"

.field public static final ERR_CAMERA_TIMEOUT:Ljava/lang/String; = "106"

.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final ERR_INVALID_IMAGE_ID:Ljava/lang/String; = "101"

.field public static final ERR_INVALID_TEXT_TO_ENCODE:Ljava/lang/String; = "100"

.field public static final ERR_INVALID_TIMEOUT:Ljava/lang/String; = "102"

.field public static final ERR_NO_CAMERA:Ljava/lang/String; = "103"

.field public static final TAG:Ljava/lang/String; = "VTAPIQRManager"

.field private static a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 7

    const/4 v3, 0x0

    const/16 v6, 0x70

    const-string v0, "VTAPIQRManager"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getQrLibraryImplementation()Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x6f

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const-string v1, "VTAPIQRManager"

    const-string v2, "GenerateQR"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x14c

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "100"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14d

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, "101"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v2, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "101"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v3, Lnet/veritran/vtuserapplication/api/ui/SessionImageImpl;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/api/ui/SessionImageImpl;-><init>()V

    sget-object v4, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    const/16 v5, 0x64

    invoke-interface {v4, v1, v2, v3, v5}, Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;->generateQr(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;I)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "000"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :cond_5
    const-string v1, "001"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "VTAPIQRManager"

    const-string v2, "ReadQR"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x14e

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "102"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {v1, v3}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    const-string v1, "102"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x164

    invoke-virtual {v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnet/veritran/vtuserapplication/api/qr/VTAPIQRManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    mul-int/lit16 v1, v1, 0x3e8

    invoke-interface {v2, v1, v0}, Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;->readQr(ILjava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v1, "102"

    invoke-virtual {v0, v6, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static responseFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ActivityResult"

    const-string v1, "scan is null"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    return-void
.end method

.method public static responseSuccesful(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ActivityResult"

    invoke-static {v0, p0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    const-string v2, "000"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x14f

    invoke-virtual {v0, v1, p0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    return-void
.end method
