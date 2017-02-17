.class public Lnet/veritran/android/implementation/AndroidConnectionManagerImplementation;
.super Ljava/lang/Object;
.source "AndroidConnectionManagerImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/veritran/android/implementation/AndroidConnectionManagerImplementation;->buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;

    move-result-object v0

    return-object v0
.end method

.method public buildHTTPSConnection(Ljava/lang/String;Ljava/lang/String;I)Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 19
    new-instance v0, Lnet/veritran/android/implementation/HttpsConnection;

    invoke-direct {v0, p1, p2, p3}, Lnet/veritran/android/implementation/HttpsConnection;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public buildSMSConnection()Lnet/veritran/vtuserapplication/comm/connections/sms/SMSConnectionInterface;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
