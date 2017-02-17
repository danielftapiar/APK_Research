.class public Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;
.super Landroid/os/Handler;
.source "ConnectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/dz/activities/ConnectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncomingFingerprintHandler"
.end annotation


# instance fields
.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;->context:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget-object v2, p0, Lcom/mwr/dz/activities/ConnectorActivity$IncomingFingerprintHandler;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/activities/ConnectorActivity;

    .line 33
    .local v0, "context":Lcom/mwr/dz/activities/ConnectorActivity;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "certificate:fingerprint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "certificate:fingerprint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mwr/dz/activities/ConnectorActivity;->receiveFingerprint(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    const v2, 0x7f060052

    invoke-virtual {v0, v2}, Lcom/mwr/dz/activities/ConnectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mwr/dz/activities/ConnectorActivity;->receiveFingerprint(Ljava/lang/String;)V

    goto :goto_0
.end method
