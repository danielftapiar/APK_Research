.class public Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/api/nfc/NfcListener;


# static fields
.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final ERR_TIMEOUT:Ljava/lang/String; = "002"

.field public static final TAG:Ljava/lang/String; = "VTAPINfcManager"

.field private static a:Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;

.field private static b:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->a:Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->a:Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->a:Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;

    return-object v0
.end method

.method public static process()V
    .locals 7

    const/16 v0, 0x1e

    const/16 v6, 0x70

    const-string v1, "VTAPINfcManager"

    const-string v2, "process"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getNfcLibraryImplementation()Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    move-result-object v1

    sput-object v1, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->b:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    invoke-static {}, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->getInstance()Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;->setListener(Lnet/veritran/vtuserapplication/api/nfc/NfcListener;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    const/16 v2, 0x6f

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v0, "VTAPINfcManager"

    const-string v2, "GetStatus"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->b:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;->getStatus()I

    move-result v0

    const/16 v2, 0xed

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "000"

    invoke-virtual {v1, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "VTAPINfcManager"

    const-string v3, "Send NFC"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x153

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x155

    :try_start_0
    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    const/16 v3, 0x156

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->b:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    invoke-interface {v4, v2, v0, v3}, Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;->sendNFCMessage(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$1;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$1;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "VTAPINfcManager"

    const-string v3, "Receive NFC"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x154

    :try_start_1
    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_2
    const/16 v2, 0x157

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VTAPINfcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Receive FinishedAction: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;->b:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    invoke-interface {v3, v0, v2}, Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;->receiveNFCMessage(ILjava/lang/String;)I

    move-result v0

    const-string v2, "VTAPINfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Receive result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->notifyFunctionEnd()V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v2, "VTAPINfcManager"

    const-string v3, "Receive timeout not set"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method


# virtual methods
.method public nfcActionExecute(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$2;

    invoke-direct {v1, p0, p1}, Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager$2;-><init>(Lnet/veritran/vtuserapplication/api/nfc/VTAPINfcManager;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public nfcErrorReceived(I)V
    .locals 3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    return-void
.end method

.method public nfcMessageReceived(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0x70

    const-string v2, "000"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v1, 0xee

    invoke-virtual {v0, v1, p1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    return-void
.end method
