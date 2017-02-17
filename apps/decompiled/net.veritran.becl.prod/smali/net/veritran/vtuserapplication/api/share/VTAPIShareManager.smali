.class public Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_GENERIC:Ljava/lang/String; = "010"

.field public static final TAG:Ljava/lang/String; = "VTAPIShareManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 8

    const/4 v3, 0x3

    const/16 v2, 0x163

    const/16 v7, 0x70

    const-string v0, "VTAPIShareManager"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    if-ne v0, v1, :cond_0

    const-string v0, "VTAPIShareManager"

    const-string v1, "GetStatus"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getShareLibraryImplementation()Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;->getStatus(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "000"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$1;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$1;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "VTAPIShareManager"

    const-string v1, "ShareText"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15d

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getShareLibraryImplementation()Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;->shareText(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$2;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$2;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, "VTAPIShareManager"

    const-string v1, "ShareImage"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15e

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x15f

    :try_start_0
    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v0, 0x162

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x163

    invoke-virtual {v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getShareLibraryImplementation()Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

    move-result-object v0

    new-instance v5, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3;

    invoke-direct {v5, v6}, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$3;-><init>(Lnet/veritran/vtuserapplication/model/Model;)V

    invoke-interface/range {v0 .. v5}, Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;->shareScreenCapture(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "010"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$4;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/share/VTAPIShareManager$4;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const-string v0, "010"

    invoke-virtual {v6, v7, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0
.end method
