.class public Lorg/spongycastle/jce/provider/JDKDigestSignature$MD4WithRSAEncryption;
.super Lorg/spongycastle/jce/provider/JDKDigestSignature;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKDigestSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD4WithRSAEncryption"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 318
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD4Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD4Digest;-><init>()V

    new-instance v2, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v3, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jce/provider/JDKDigestSignature;-><init>(Lorg/spongycastle/asn1/DERObjectIdentifier;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 319
    return-void
.end method
