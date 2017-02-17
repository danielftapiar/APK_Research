.class public Lnet/veritran/android/implementation/nfc/NfcLibrary;
.super Ljava/lang/Object;
.source "NfcLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcLibrary"

.field private static instance:Lnet/veritran/android/implementation/nfc/NfcLibrary;


# instance fields
.field private activity:Landroid/app/Activity;

.field private listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

.field private ndefManager:Lcom/huenei/ndefmanager/NDEFManager;

.field private receivedFinishedAction:Ljava/lang/String;

.field private receiving:Z

.field private sendTimeoutAction:Ljava/lang/String;

.field private timerReceivingTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->instance:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activityPusher"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    .line 30
    iput-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->ndefManager:Lcom/huenei/ndefmanager/NDEFManager;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receiving:Z

    .line 197
    iput-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    .line 41
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->activity:Landroid/app/Activity;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/android/implementation/nfc/NfcLibrary;)Lcom/huenei/ndefmanager/NDEFManager;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/nfc/NfcLibrary;

    .prologue
    .line 22
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->ndefManager:Lcom/huenei/ndefmanager/NDEFManager;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/android/implementation/nfc/NfcLibrary;

    .prologue
    .line 22
    invoke-direct {p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->onTimeoutSend()V

    return-void
.end method

.method static synthetic access$200(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/android/implementation/nfc/NfcLibrary;

    .prologue
    .line 22
    invoke-direct {p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->onTimeoutReceive()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lnet/veritran/android/implementation/nfc/NfcLibrary;
    .locals 2
    .param p0, "activityPusher"    # Landroid/app/Activity;

    .prologue
    .line 51
    sget-object v0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->instance:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "NfcLibrary"

    const-string v1, "instance NULL"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lnet/veritran/android/implementation/nfc/NfcLibrary;

    invoke-direct {v0, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->instance:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    .line 62
    :goto_0
    sget-object v0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->instance:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    return-object v0

    .line 58
    :cond_0
    const-string v0, "NfcLibrary"

    const-string v1, "instance NOT NULL"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->instance:Lnet/veritran/android/implementation/nfc/NfcLibrary;

    invoke-virtual {v0, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->setActivityPusher(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onTimeoutReceive()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "NfcLibrary"

    const-string v1, "onTimeoutReceive"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "NfcLibrary"

    const-string v1, "onTimeoutReceive timerReceivingTask != null"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    .line 239
    :cond_0
    const-string v0, "NfcLibrary"

    const-string v1, "onTimeoutReceive Por avisar listeners"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/nfc/NfcListener;->nfcErrorReceived(I)V

    .line 243
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    iget-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receivedFinishedAction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/nfc/NfcListener;->nfcActionExecute(Ljava/lang/String;)V

    .line 246
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receiving:Z

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receivedFinishedAction:Ljava/lang/String;

    .line 248
    return-void
.end method

.method private onTimeoutSend()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->ndefManager:Lcom/huenei/ndefmanager/NDEFManager;

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    new-instance v1, Lnet/veritran/android/implementation/nfc/NfcLibrary$6;

    invoke-direct {v1, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary$6;-><init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V

    invoke-virtual {v0, v1}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    iget-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->sendTimeoutAction:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/nfc/NfcListener;->nfcActionExecute(Ljava/lang/String;)V

    .line 270
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->sendTimeoutAction:Ljava/lang/String;

    .line 271
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/huenei/ndefmanager/NDEFManager;->isAvailableNFC(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receiveNFCMessage(ILjava/lang/String;)I
    .locals 4
    .param p1, "timeout"    # I
    .param p2, "receivedFinishedAction"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 202
    const-string v2, "NfcLibrary"

    const-string v3, "receiveNFCMessage"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/huenei/ndefmanager/NDEFManager;->isAvailableNFC(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const-string v2, "NfcLibrary"

    const-string v3, "receiveNFCMessage NOT NFC AVAILABLE"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return v1

    .line 210
    :cond_0
    iput-boolean v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receiving:Z

    .line 211
    iput-object p2, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receivedFinishedAction:Ljava/lang/String;

    .line 214
    new-instance v1, Lnet/veritran/android/implementation/nfc/NfcLibrary$5;

    invoke-direct {v1, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary$5;-><init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V

    iput-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    .line 222
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 223
    .local v0, "timeoutTimer":Ljava/util/Timer;
    iget-object v1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendNFCMessage(Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "timeoutAction"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 70
    const-string v5, "NfcLibrary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendNFCMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/huenei/ndefmanager/NDEFManager;->isAvailableNFC(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    const-string v5, "NfcLibrary"

    const-string v6, "sendNFCMessage NFC Not AVAILABLE"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return v4

    .line 78
    :cond_0
    iput-object p3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->sendTimeoutAction:Ljava/lang/String;

    .line 80
    new-instance v0, Lnet/veritran/android/implementation/nfc/NfcLibrary$1;

    invoke-direct {v0, p0, p1}, Lnet/veritran/android/implementation/nfc/NfcLibrary$1;-><init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;Ljava/lang/String;)V

    .line 104
    .local v0, "createNdefRecordCallback":Lcom/huenei/ndefmanager/CreateNdefRecordCallback;
    :try_start_0
    new-instance v5, Lcom/huenei/ndefmanager/NDEFManager;

    iget-object v6, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6, v0}, Lcom/huenei/ndefmanager/NDEFManager;-><init>(Landroid/app/Activity;Lcom/huenei/ndefmanager/CreateNdefRecordCallback;)V

    iput-object v5, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->ndefManager:Lcom/huenei/ndefmanager/NDEFManager;

    .line 108
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v5

    new-instance v6, Lnet/veritran/android/implementation/nfc/NfcLibrary$2;

    invoke-direct {v6, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary$2;-><init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V

    invoke-virtual {v5, v6}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    iget-object v5, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->ndefManager:Lcom/huenei/ndefmanager/NDEFManager;

    new-instance v6, Lnet/veritran/android/implementation/nfc/NfcLibrary$3;

    invoke-direct {v6, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary$3;-><init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V

    invoke-virtual {v5, v6}, Lcom/huenei/ndefmanager/NDEFManager;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V

    .line 126
    const-string v5, "NfcLibrary"

    const-string v6, "Paso por preparar para enviar NFC sin errores"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/huenei/ndefmanager/NFCNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    new-instance v2, Lnet/veritran/android/implementation/nfc/NfcLibrary$4;

    invoke-direct {v2, p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary$4;-><init>(Lnet/veritran/android/implementation/nfc/NfcLibrary;)V

    .line 142
    .local v2, "task":Ljava/util/TimerTask;
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 143
    .local v3, "timeoutTimer":Ljava/util/Timer;
    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 149
    const/4 v4, 0x0

    goto :goto_0

    .line 128
    .end local v2    # "task":Ljava/util/TimerTask;
    .end local v3    # "timeoutTimer":Ljava/util/Timer;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "ex":Lcom/huenei/ndefmanager/NFCNotAvailableException;
    goto :goto_0
.end method

.method public setActivityPusher(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activityPusher"    # Landroid/app/Activity;

    .prologue
    .line 46
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->activity:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method public setListener(Lnet/veritran/vtuserapplication/api/nfc/NfcListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    .prologue
    .line 277
    iput-object p1, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    .line 278
    return-void
.end method

.method public tryReceiveNFC(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 154
    const-string v3, "NfcLibrary"

    const-string v4, "tryReceiveNFC"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-boolean v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receiving:Z

    if-nez v3, :cond_0

    .line 157
    const-string v3, "NfcLibrary"

    const-string v4, "Not Receiving"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return v2

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/huenei/ndefmanager/NDEFManager;->processActionNDEFDiscovered(Landroid/content/Intent;)[B

    move-result-object v1

    .line 163
    .local v1, "payloadReceiver":[B
    const-string v3, "NfcLibrary"

    const-string v4, "Before Payload Receiver"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v1, :cond_3

    .line 165
    const-string v3, "NfcLibrary"

    const-string v4, "Payload Receiver != NULL"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 168
    .local v0, "messageReceived":Ljava/lang/String;
    const-string v3, "NfcLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC RECEIVED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    if-eqz v3, :cond_1

    .line 172
    const-string v3, "NfcLibrary"

    const-string v4, "timerReceivingTask != null"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 174
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->timerReceivingTask:Ljava/util/TimerTask;

    .line 177
    :cond_1
    iget-object v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    if-eqz v3, :cond_2

    .line 179
    const-string v3, "NfcLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aviso: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receivedFinishedAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    invoke-interface {v3, v0}, Lnet/veritran/vtuserapplication/api/nfc/NfcListener;->nfcMessageReceived(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->listener:Lnet/veritran/vtuserapplication/api/nfc/NfcListener;

    iget-object v4, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receivedFinishedAction:Ljava/lang/String;

    invoke-interface {v3, v4}, Lnet/veritran/vtuserapplication/api/nfc/NfcListener;->nfcActionExecute(Ljava/lang/String;)V

    .line 187
    :cond_2
    iput-boolean v2, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receiving:Z

    .line 188
    const-string v2, ""

    iput-object v2, p0, Lnet/veritran/android/implementation/nfc/NfcLibrary;->receivedFinishedAction:Ljava/lang/String;

    .line 190
    const/4 v2, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "messageReceived":Ljava/lang/String;
    :cond_3
    const-string v3, "NfcLibrary"

    const-string v4, "Payload Receiver FALSE"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
