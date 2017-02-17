.class public Lcom/prey/backwardcompatibility/CupcakeSupport;
.super Ljava/lang/Object;
.source "CupcakeSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSMSMessage([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "pdus"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v2, "smsMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 19
    .local v1, "msgs":[Landroid/telephony/gsm/SmsMessage;
    array-length v3, p0

    new-array v1, v3, [Landroid/telephony/gsm/SmsMessage;

    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 21
    aget-object v3, p0, v0

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v3

    aput-object v3, v1, v0

    .line 26
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-object v2
.end method

.method public static sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "destSMS"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .local v0, "sm":Landroid/telephony/gsm/SmsManager;
    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 35
    return-void
.end method
