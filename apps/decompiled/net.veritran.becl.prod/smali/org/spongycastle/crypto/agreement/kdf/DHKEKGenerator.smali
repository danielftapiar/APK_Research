.class public Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "DHKEKGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 30
    return-void
.end method

.method private integerToBytes(I)[B
    .locals 3
    .param p1, "keySize"    # I

    .prologue
    .line 123
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 125
    .local v0, "val":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 130
    return-object v0
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 19
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v14, v14, p3

    move/from16 v0, p2

    if-ge v14, v0, :cond_0

    .line 52
    new-instance v14, Lorg/spongycastle/crypto/DataLengthException;

    const-string v15, "output buffer too small"

    invoke-direct {v14, v15}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 55
    :cond_0
    move/from16 v0, p3

    int-to-long v8, v0

    .line 56
    .local v8, "oBytes":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v14}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    .line 64
    .local v11, "outLen":I
    const-wide v14, 0x1ffffffffL

    cmp-long v14, v8, v14

    if-lez v14, :cond_1

    .line 66
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Output length too large"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 69
    :cond_1
    int-to-long v14, v11

    add-long/2addr v14, v8

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    int-to-long v0, v11

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v4, v14

    .line 71
    .local v4, "cThreshold":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v14}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    new-array v6, v14, [B

    .line 73
    .local v6, "dig":[B
    const/4 v5, 0x1

    .line 75
    .local v5, "counter":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 80
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 82
    .local v12, "v1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 84
    .local v13, "v2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v13, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 85
    new-instance v14, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->integerToBytes(I)[B

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v13, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 87
    new-instance v14, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v14, v13}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    if-eqz v14, :cond_2

    .line 91
    new-instance v14, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v15, 0x1

    const/16 v16, 0x0

    new-instance v17, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v14 .. v17}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v12, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 94
    :cond_2
    new-instance v14, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v15, 0x1

    const/16 v16, 0x2

    new-instance v17, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->integerToBytes(I)[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v14 .. v17}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    invoke-virtual {v12, v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    .line 96
    new-instance v14, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v14, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14}, Lorg/spongycastle/asn1/DERSequence;->getDEREncoded()[B

    move-result-object v10

    .line 98
    .local v10, "other":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v14, v10, v15, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v15, 0x0

    invoke-interface {v14, v6, v15}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 102
    move/from16 v0, p3

    if-le v0, v11, :cond_3

    .line 104
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v6, v14, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    add-int p2, p2, v11

    .line 106
    sub-int p3, p3, v11

    .line 113
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 75
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 110
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v6, v14, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 116
    .end local v10    # "other":[B
    .end local v12    # "v1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v13    # "v2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v14}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 118
    return p3
.end method

.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 34
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    .line 36
    .local v0, "params":Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 37
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    .line 38
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    .line 39
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 40
    return-void
.end method
