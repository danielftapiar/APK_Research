.class public Lorg/spongycastle/jce/provider/symmetric/RC5$KeyGen64;
.super Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.source "RC5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/RC5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen64"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "RC5-64"

    const/16 v1, 0x100

    new-instance v2, Lorg/spongycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 81
    return-void
.end method
