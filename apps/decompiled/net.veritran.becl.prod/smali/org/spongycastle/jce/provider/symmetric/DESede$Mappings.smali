.class public Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;
.super Ljava/util/HashMap;
.source "DESede.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/symmetric/DESede;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 264
    const-string v0, "Cipher.DESEDE"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$ECB"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$CBC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$CBC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "Cipher.DESEDEWRAP"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$Wrap"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_CMS3DESwrap:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$Wrap"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "Cipher.DESEDERFC3211WRAP"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$RFC3211"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "KeyGenerator.DESEDE"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$KeyGenerator"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$KeyGenerator3"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "KeyGenerator.DESEDEWRAP"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$KeyGenerator"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "SecretKeyFactory.DESEDE"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$KeyFactory"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "Mac.DESEDECMAC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$CMAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "Mac.DESEDEMAC"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$CBCMAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "Alg.Alias.Mac.DESEDE"

    const-string v1, "DESEDEMAC"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "Mac.DESEDEMAC/CFB8"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$DESedeCFB8"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v0, "Alg.Alias.Mac.DESEDE/CFB8"

    const-string v1, "DESEDEMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "Mac.DESEDEMAC64"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$DESede64"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "Alg.Alias.Mac.DESEDE64"

    const-string v1, "DESEDEMAC64"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "Mac.DESEDEMAC64WITHISO7816-4PADDING"

    const-string v1, "org.spongycastle.jce.provider.symmetric.DESede$DESede64with7816d4"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "Alg.Alias.Mac.DESEDE64WITHISO7816-4PADDING"

    const-string v1, "DESEDEMAC64WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "Alg.Alias.Mac.DESEDEISO9797ALG1MACWITHISO7816-4PADDING"

    const-string v1, "DESEDEMAC64WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "Alg.Alias.Mac.DESEDEISO9797ALG1WITHISO7816-4PADDING"

    const-string v1, "DESEDEMAC64WITHISO7816-4PADDING"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/jce/provider/symmetric/DESede$Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    return-void
.end method
