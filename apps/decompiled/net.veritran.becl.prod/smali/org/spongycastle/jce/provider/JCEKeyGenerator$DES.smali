.class public Lorg/spongycastle/jce/provider/JCEKeyGenerator$DES;
.super Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "DES"

    const/16 v1, 0x40

    new-instance v2, Lorg/spongycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/DESKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 93
    return-void
.end method
