.class public Lnet/veritran/vtuserapplication/api/cardreader/VTAPICardReaderManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final ERR_INVALID_TIMEOUT:Ljava/lang/String; = "102"

.field public static final TAG:Ljava/lang/String; = "VTAPICardReaderManager"

.field private static a:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 4

    const/16 v3, 0x70

    const-string v0, "VTAPICardReaderManager"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/cardreader/VTAPICardReaderManager;->a:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getCardReaderLibraryImplementation()Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/cardreader/VTAPICardReaderManager;->a:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

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

    if-ne v1, v2, :cond_1

    const-string v1, "VTAPICardReaderManager"

    const-string v2, "ReadCard"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x17b

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "102"

    invoke-virtual {v0, v3, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "102"

    invoke-virtual {v0, v3, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sget-object v1, Lnet/veritran/vtuserapplication/api/cardreader/VTAPICardReaderManager;->a:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;->readCard(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "102"

    invoke-virtual {v0, v3, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static responseFail(I)V
    .locals 3

    const-string v0, "ActivityResult"

    const-string v1, "scan is null"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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

    const/16 v1, 0xfd

    invoke-virtual {v0, v1, p0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    return-void
.end method
