.class public Lorg/spongycastle/jce/provider/symmetric/Noekeon$KeyGen;
.super Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.source "Noekeon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Noekeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 39
    const-string v0, "Noekeon"

    const/16 v1, 0x80

    new-instance v2, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 40
    return-void
.end method
