.class Lcom/huenei/ndefmanager/NDEFManager$1;
.super Ljava/lang/Object;
.source "NDEFManager.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huenei/ndefmanager/NDEFManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huenei/ndefmanager/NDEFManager;


# direct methods
.method constructor <init>(Lcom/huenei/ndefmanager/NDEFManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huenei/ndefmanager/NDEFManager;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/huenei/ndefmanager/NDEFManager$1;->this$0:Lcom/huenei/ndefmanager/NDEFManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 7
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 210
    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "domain is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :catch_0
    move-exception v3

    .line 229
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "UnsupportedEncodingException"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "type is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "domain is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "type is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_3
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 220
    .local v1, "byteDomain":[B
    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 222
    .local v2, "byteType":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 223
    .local v0, "b":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    array-length v4, v1

    const/16 v5, 0x3a

    aput-byte v5, v0, v4

    .line 225
    const/4 v4, 0x0

    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    invoke-static {v2, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x4

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-direct {v4, v5, v0, v6, p3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 7
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 195
    iget-object v5, p0, Lcom/huenei/ndefmanager/NDEFManager$1;->this$0:Lcom/huenei/ndefmanager/NDEFManager;

    # getter for: Lcom/huenei/ndefmanager/NDEFManager;->createNdefRecordCallback:Lcom/huenei/ndefmanager/CreateNdefRecordCallback;
    invoke-static {v5}, Lcom/huenei/ndefmanager/NDEFManager;->access$000(Lcom/huenei/ndefmanager/NDEFManager;)Lcom/huenei/ndefmanager/CreateNdefRecordCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/huenei/ndefmanager/CreateNdefRecordCallback;->createPayload()[B

    move-result-object v3

    .line 196
    .local v3, "payload":[B
    if-nez v3, :cond_0

    .line 197
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .line 200
    :cond_0
    iget-object v5, p0, Lcom/huenei/ndefmanager/NDEFManager$1;->this$0:Lcom/huenei/ndefmanager/NDEFManager;

    # getter for: Lcom/huenei/ndefmanager/NDEFManager;->createNdefRecordCallback:Lcom/huenei/ndefmanager/CreateNdefRecordCallback;
    invoke-static {v5}, Lcom/huenei/ndefmanager/NDEFManager;->access$000(Lcom/huenei/ndefmanager/NDEFManager;)Lcom/huenei/ndefmanager/CreateNdefRecordCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/huenei/ndefmanager/CreateNdefRecordCallback;->createDomain()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "domain":Ljava/lang/String;
    iget-object v5, p0, Lcom/huenei/ndefmanager/NDEFManager$1;->this$0:Lcom/huenei/ndefmanager/NDEFManager;

    # getter for: Lcom/huenei/ndefmanager/NDEFManager;->createNdefRecordCallback:Lcom/huenei/ndefmanager/CreateNdefRecordCallback;
    invoke-static {v5}, Lcom/huenei/ndefmanager/NDEFManager;->access$000(Lcom/huenei/ndefmanager/NDEFManager;)Lcom/huenei/ndefmanager/CreateNdefRecordCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/huenei/ndefmanager/CreateNdefRecordCallback;->createType()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "type":Ljava/lang/String;
    invoke-direct {p0, v0, v4, v3}, Lcom/huenei/ndefmanager/NDEFManager$1;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 204
    .local v1, "extRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-direct {v2, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 205
    .local v2, "msg":Landroid/nfc/NdefMessage;
    goto :goto_0
.end method
