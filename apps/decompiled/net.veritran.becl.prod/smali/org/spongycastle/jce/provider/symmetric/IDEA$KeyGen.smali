.class public Lorg/spongycastle/jce/provider/symmetric/IDEA$KeyGen;
.super Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "IDEA"

    const/16 v1, 0x80

    new-instance v2, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 59
    return-void
.end method
