.class public Lnet/veritran/android/implementation/AndroidDiffieHellmanImplementation;
.super Ljava/lang/Object;
.source "AndroidDiffieHellmanImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/security/DiffieHellmanInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "publicPeerKey"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "DiffieHellmanInterface"

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "DiffieHellmanInterface"

    return-object v0
.end method

.method public setG(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11
    return-void
.end method

.method public setP(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public setPrivateKeySize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 23
    return-void
.end method
