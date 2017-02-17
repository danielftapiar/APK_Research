.class public Ljavax/microedition/rms/RecordStoreNotFoundException;
.super Ljavax/microedition/rms/RecordStoreException;
.source "RecordStoreNotFoundException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
