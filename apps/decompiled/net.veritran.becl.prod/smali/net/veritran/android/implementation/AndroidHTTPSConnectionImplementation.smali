.class public Lnet/veritran/android/implementation/AndroidHTTPSConnectionImplementation;
.super Ljava/lang/Object;
.source "AndroidHTTPSConnectionImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCommand()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public connectCommand()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public connectCommandBlocked()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    .prologue
    .line 12
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 36
    return-void
.end method
