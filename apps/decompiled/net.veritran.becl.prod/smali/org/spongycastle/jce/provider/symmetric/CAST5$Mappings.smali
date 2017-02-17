.class public Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;
.super Ljava/util/HashMap;
.source "CAST5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/CAST5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string v0, "AlgorithmParameters.CAST5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.CAST5$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10"

    const-string v1, "CAST5"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "AlgorithmParameterGenerator.CAST5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.CAST5$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10"

    const-string v1, "CAST5"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "Cipher.CAST5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.CAST5$ECB"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "Cipher.1.2.840.113533.7.66.10"

    const-string v1, "org.spongycastle.jce.provider.symmetric.CAST5$CBC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "KeyGenerator.CAST5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.CAST5$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "Alg.Alias.KeyGenerator.1.2.840.113533.7.66.10"

    const-string v1, "CAST5"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/CAST5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method
