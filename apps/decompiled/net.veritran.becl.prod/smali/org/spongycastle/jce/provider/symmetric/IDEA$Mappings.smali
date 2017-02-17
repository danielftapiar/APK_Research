.class public Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;
.super Ljava/util/HashMap;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 233
    const-string v0, "AlgorithmParameterGenerator.IDEA"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "AlgorithmParameterGenerator.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "AlgorithmParameters.IDEA"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "AlgorithmParameters.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "Cipher.IDEA"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$ECB"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "Cipher.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$CBC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "Cipher.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$PBEWithSHAAndIDEA"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "KeyGenerator.IDEA"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "KeyGenerator.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "SecretKeyFactory.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$PBEWithSHAAndIDEAKeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "Mac.IDEAMAC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$Mac"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "Alg.Alias.Mac.IDEA"

    const-string v1, "IDEAMAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "Mac.IDEAMAC/CFB8"

    const-string v1, "org.spongycastle.jce.provider.symmetric.IDEA$CFB8Mac"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "Alg.Alias.Mac.IDEA/CFB8"

    const-string v1, "IDEAMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/IDEA$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method
