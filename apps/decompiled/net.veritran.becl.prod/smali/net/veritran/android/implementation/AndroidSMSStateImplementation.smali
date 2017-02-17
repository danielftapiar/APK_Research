.class public Lnet/veritran/android/implementation/AndroidSMSStateImplementation;
.super Ljava/lang/Object;
.source "AndroidSMSStateImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/states/VTApiStateInterface;


# static fields
.field public static final STATUS_DIALING_ERROR:Ljava/lang/String; = "002"

.field public static final STATUS_GENERIC_ERROR:Ljava/lang/String; = "001"

.field public static final STATUS_OK:Ljava/lang/String; = "000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public process()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    .line 26
    .local v6, "m":Lnet/veritran/vtuserapplication/model/Model;
    const/16 v4, 0x93

    invoke-virtual {v6, v4}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "text":Ljava/lang/String;
    const/16 v4, 0x94

    invoke-virtual {v6, v4}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "address":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "smsManager":Landroid/telephony/SmsManager;
    move-object v4, v2

    move-object v5, v2

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 30
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    const/16 v4, 0x70

    const-string v5, "000"

    invoke-virtual {v2, v4, v5}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    .line 31
    const/4 v2, 0x0

    return v2
.end method
