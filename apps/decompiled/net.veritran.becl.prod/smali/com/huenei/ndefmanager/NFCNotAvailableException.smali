.class public Lcom/huenei/ndefmanager/NFCNotAvailableException;
.super Ljava/lang/RuntimeException;
.source "NFCNotAvailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "NFC is not available on this device."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
