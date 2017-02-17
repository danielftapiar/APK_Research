.class public Lnet/veritran/vtuserapplication/api/qr/VTAPIBarcodeManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final ERR_INVALID_IMAGE_ID:Ljava/lang/String; = "101"

.field public static final ERR_INVALID_TEXT_TO_ENCODE:Ljava/lang/String; = "100"

.field public static final TAG:Ljava/lang/String; = "VTAPIBarcodeManager"

.field private static a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 8

    const/4 v2, 0x0

    const/16 v7, 0x70

    const-string v0, "VTAPIBarcodeManager"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/qr/VTAPIBarcodeManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getQrLibraryImplementation()Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/qr/VTAPIBarcodeManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    const/16 v0, 0x6f

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "VTAPIBarcodeManager"

    const-string v1, "GenerateBarcode"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbf

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "100"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "100"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xc1

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "101"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v0, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "101"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v3, Lnet/veritran/vtuserapplication/api/ui/SessionImageImpl;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/api/ui/SessionImageImpl;-><init>()V

    sget-object v0, Lnet/veritran/vtuserapplication/api/qr/VTAPIBarcodeManager;->a:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    invoke-interface/range {v0 .. v5}, Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;->generateBarcode(Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/ui/SessionImageHandler;II)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "000"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0

    :cond_6
    const-string v0, "001"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto :goto_0
.end method
