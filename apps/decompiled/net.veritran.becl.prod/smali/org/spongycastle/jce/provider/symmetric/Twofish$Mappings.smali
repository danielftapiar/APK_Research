.class public Lorg/spongycastle/jce/provider/symmetric/Twofish$Mappings;
.super Ljava/util/HashMap;
.source "Twofish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/Twofish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-string v0, "Cipher.Twofish"

    const-string v1, "org.spongycastle.jce.provider.symmetric.Twofish$ECB"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/Twofish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "KeyGenerator.Twofish"

    const-string v1, "org.spongycastle.jce.provider.symmetric.Twofish$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/Twofish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "AlgorithmParameters.Twofish"

    const-string v1, "org.spongycastle.jce.provider.symmetric.Twofish$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/Twofish$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
