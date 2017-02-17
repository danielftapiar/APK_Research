.class public Lcom/huenei/ndefmanager/NDEFManager;
.super Ljava/lang/Object;
.source "NDEFManager.java"


# instance fields
.field private activityPusher:Landroid/app/Activity;

.field private createNdefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

.field private createNdefRecordCallback:Lcom/huenei/ndefmanager/CreateNdefRecordCallback;

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/huenei/ndefmanager/CreateNdefRecordCallback;)V
    .locals 4
    .param p1, "activityPusher"    # Landroid/app/Activity;
    .param p2, "createNdefRecordCallback"    # Lcom/huenei/ndefmanager/CreateNdefRecordCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huenei/ndefmanager/NFCNotAvailableException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Lcom/huenei/ndefmanager/NDEFManager$1;

    invoke-direct {v0, p0}, Lcom/huenei/ndefmanager/NDEFManager$1;-><init>(Lcom/huenei/ndefmanager/NDEFManager;)V

    iput-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->createNdefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 67
    invoke-static {p1}, Lcom/huenei/ndefmanager/NDEFManager;->isAvailableNFC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/huenei/ndefmanager/NFCNotAvailableException;

    invoke-direct {v0}, Lcom/huenei/ndefmanager/NFCNotAvailableException;-><init>()V

    throw v0

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "createNdefRecordCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    .line 75
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 76
    iput-object p2, p0, Lcom/huenei/ndefmanager/NDEFManager;->createNdefRecordCallback:Lcom/huenei/ndefmanager/CreateNdefRecordCallback;

    .line 78
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/huenei/ndefmanager/NDEFManager;->createNdefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    iget-object v2, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/huenei/ndefmanager/NDEFManager;)Lcom/huenei/ndefmanager/CreateNdefRecordCallback;
    .locals 1
    .param p0, "x0"    # Lcom/huenei/ndefmanager/NDEFManager;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->createNdefRecordCallback:Lcom/huenei/ndefmanager/CreateNdefRecordCallback;

    return-object v0
.end method

.method public static isAvailableNFC(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 106
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_0
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    goto :goto_0
.end method

.method public static processActionNDEFDiscovered(Landroid/content/Intent;)[B
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 181
    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 184
    .local v1, "rawMsgs":[Landroid/os/Parcelable;
    aget-object v0, v1, v4

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 186
    .local v0, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 188
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    .end local v1    # "rawMsgs":[Landroid/os/Parcelable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableForegroundDispatch()V
    .locals 3

    .prologue
    .line 160
    const-string v1, "NDEFManager"

    const-string v2, "disableForegroundDispatch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 163
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 165
    const-string v1, "NDEFManager"

    const-string v2, "nfcAdapter is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method public enableForegroundDispatch()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->pendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->pendingIntent:Landroid/app/PendingIntent;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    iget-object v4, p0, Lcom/huenei/ndefmanager/NDEFManager;->pendingIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 3
    .param p1, "onNdefPushCompleteCallback"    # Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huenei/ndefmanager/NDEFManager;->nfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/huenei/ndefmanager/NDEFManager;->activityPusher:Landroid/app/Activity;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, p1, v1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 90
    return-void
.end method
