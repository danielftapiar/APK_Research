.class public Lorg/spongycastle/jce/provider/JCEKeyGenerator$RIPEMD160HMAC;
.super Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIPEMD160HMAC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 180
    const-string v0, "HMACRIPEMD160"

    const/16 v1, 0xa0

    new-instance v2, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 181
    return-void
.end method
