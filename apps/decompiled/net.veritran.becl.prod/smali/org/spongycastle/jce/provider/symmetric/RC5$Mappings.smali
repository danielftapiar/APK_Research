.class public Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;
.super Ljava/util/HashMap;
.source "RC5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/RC5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v0, "Cipher.RC5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$ECB32"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "Alg.Alias.Cipher.RC5-32"

    const-string v1, "RC5"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "Cipher.RC5-64"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$ECB64"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "KeyGenerator.RC5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$KeyGen32"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "Alg.Alias.KeyGenerator.RC5-32"

    const-string v1, "RC5"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "KeyGenerator.RC5-64"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$KeyGen64"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "AlgorithmParameters.RC5"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "AlgorithmParameters.RC5-64"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "Mac.RC5MAC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$Mac32"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "Alg.Alias.Mac.RC5"

    const-string v1, "RC5MAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v0, "Mac.RC5MAC/CFB8"

    const-string v1, "org.spongycastle.jce.provider.symmetric.RC5$CFB8Mac32"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "Alg.Alias.Mac.RC5/CFB8"

    const-string v1, "RC5MAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/RC5$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method
