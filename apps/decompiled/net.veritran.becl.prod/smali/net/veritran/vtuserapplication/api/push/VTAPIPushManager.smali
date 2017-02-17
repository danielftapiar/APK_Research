.class public Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final TAG:Ljava/lang/String; = "VTAPIPushManager"

.field private static a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 8

    const/16 v7, 0x150

    const/16 v6, 0xe7

    const/16 v5, 0x70

    const-string v0, "VTAPIPushManager"

    const-string v1, "process"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    sget-object v0, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getPushLibraryImplementation()Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    move-result-object v0

    sput-object v0, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;->removeAllListener()V

    new-instance v0, Lnet/veritran/vtuserapplication/api/push/PushNotificationListenerImpl;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/api/push/PushNotificationListenerImpl;-><init>()V

    sget-object v2, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;->addListener(Lnet/veritran/vtuserapplication/api/push/PushNotificationListener;)V

    const/16 v0, 0xe8

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VTAPIPushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RegId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x6f

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "VTAPIPushManager"

    const-string v2, "GetStatus"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v1, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_0
    const-string v0, "000"

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$1;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$1;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "0"

    invoke-virtual {v1, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    const-string v0, "VTAPIPushManager"

    const-string v2, "RegisterForNotification"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v0, "103"

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$2;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$2;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;->doRegister(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    const-string v0, "VTAPIPushManager"

    const-string v2, "UnregisterForNotification"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lnet/veritran/vtuserapplication/model/Model;->getRegisterValue(I)Ljava/lang/String;

    sget-object v0, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager;->a:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;->unRegister()V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$3;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$3;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    const/16 v0, 0x151

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setBadgeNumber(I)V

    const-string v0, "000"

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$4;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$4;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v2

    invoke-interface {v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getBadgeNumber()I

    move-result v2

    add-int/2addr v0, v2

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->setBadgeNumber(I)V

    const-string v0, "000"

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$5;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$5;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getBadgeNumber()I

    move-result v0

    const/16 v2, 0xec

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const-string v0, "000"

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    new-instance v1, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$6;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/api/push/VTAPIPushManager$6;-><init>()V

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "001"

    invoke-virtual {v1, v5, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto/16 :goto_1
.end method
