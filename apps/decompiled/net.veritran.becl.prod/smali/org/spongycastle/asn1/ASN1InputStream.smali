.class public Lorg/spongycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lorg/spongycastle/asn1/DERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 41
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    iput p2, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    .line 98
    iput-boolean p3, p0, Lorg/spongycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 53
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 54
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 68
    return-void
.end method

.method static createPrimitiveDERObject(I[B)Lorg/spongycastle/asn1/DERObject;
    .locals 2
    .param p0, "tagNo"    # I
    .param p1, "bytes"    # [B

    .prologue
    .line 359
    packed-switch p0, :pswitch_data_0

    .line 398
    :pswitch_0
    new-instance v0, Lorg/spongycastle/asn1/DERUnknownTag;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lorg/spongycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    :goto_0
    return-object v0

    .line 362
    :pswitch_1
    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->fromOctetString([B)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    goto :goto_0

    .line 364
    :pswitch_2
    new-instance v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_0

    .line 366
    :pswitch_3
    new-instance v0, Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>([B)V

    goto :goto_0

    .line 368
    :pswitch_4
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    goto :goto_0

    .line 370
    :pswitch_5
    new-instance v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    goto :goto_0

    .line 372
    :pswitch_6
    new-instance v0, Lorg/spongycastle/asn1/DERGeneralString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0

    .line 374
    :pswitch_7
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    .line 376
    :pswitch_8
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>([B)V

    goto :goto_0

    .line 378
    :pswitch_9
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    goto :goto_0

    .line 380
    :pswitch_a
    new-instance v0, Lorg/spongycastle/asn1/DERNumericString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0

    .line 382
    :pswitch_b
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto :goto_0

    .line 384
    :pswitch_c
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    .line 386
    :pswitch_d
    new-instance v0, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    .line 388
    :pswitch_e
    new-instance v0, Lorg/spongycastle/asn1/DERT61String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    .line 390
    :pswitch_f
    new-instance v0, Lorg/spongycastle/asn1/DERUniversalString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERUniversalString;-><init>([B)V

    goto :goto_0

    .line 392
    :pswitch_10
    new-instance v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1UTCTime;-><init>([B)V

    goto :goto_0

    .line 394
    :pswitch_11
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_0

    .line 396
    :pswitch_12
    new-instance v0, Lorg/spongycastle/asn1/DERVisibleString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 26
    instance-of v0, p0, Lorg/spongycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lorg/spongycastle/asn1/LimitedInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v0

    .line 35
    :goto_0
    return v0

    .line 30
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_0
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 32
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    .line 35
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 7
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 308
    .local v1, "length":I
    if-gez v1, :cond_0

    .line 310
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_0
    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    .line 315
    const/4 v4, -0x1

    .line 352
    :goto_0
    return v4

    .line 318
    :cond_1
    const/16 v4, 0x7f

    if-le v1, v4, :cond_6

    .line 320
    and-int/lit8 v3, v1, 0x7f

    .line 323
    .local v3, "size":I
    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 325
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :cond_2
    const/4 v1, 0x0

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 331
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 333
    .local v2, "next":I
    if-gez v2, :cond_3

    .line 335
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 338
    :cond_3
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    .end local v2    # "next":I
    :cond_4
    if-gez v1, :cond_5

    .line 343
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_5
    if-lt v1, p1, :cond_6

    .line 348
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_6
    move v4, v1

    .line 352
    goto :goto_0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    and-int/lit8 v1, p1, 0x1f

    .line 273
    .local v1, "tagNo":I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    .line 275
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 281
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    .line 283
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 288
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 289
    shl-int/lit8 v1, v1, 0x7

    .line 290
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 293
    :cond_1
    if-gez v0, :cond_2

    .line 295
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 301
    .end local v0    # "b":I
    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 1
    .param p1, "dIn"    # Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildEncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 177
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    .local v0, "o":Lorg/spongycastle/asn1/DERObject;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 182
    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lorg/spongycastle/asn1/DERObject;
    .locals 5
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_0

    move v1, v2

    .line 128
    .local v1, "isConstructed":Z
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 130
    .local v0, "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1

    .line 132
    new-instance v2, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v1, p2, v3}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 168
    :goto_1
    return-object v2

    .end local v0    # "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .end local v1    # "isConstructed":Z
    :cond_0
    move v1, v3

    .line 126
    goto :goto_0

    .line 135
    .restart local v0    # "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .restart local v1    # "isConstructed":Z
    :cond_1
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_2

    .line 137
    new-instance v2, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1, p2}, Lorg/spongycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    .line 140
    :cond_2
    if-eqz v1, :cond_4

    .line 143
    sparse-switch p2, :sswitch_data_0

    .line 164
    new-instance v3, Lorg/spongycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v2, p2, v4}, Lorg/spongycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v2, v3

    goto :goto_1

    .line 149
    :sswitch_0
    new-instance v2, Lorg/spongycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    iget-object v3, v3, Lorg/spongycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_1

    .line 151
    :sswitch_1
    iget-boolean v2, p0, Lorg/spongycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_3

    .line 153
    new-instance v2, Lorg/spongycastle/asn1/LazyDERSequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/LazyDERSequence;-><init>([B)V

    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERFactory;->createSequence(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/DERSequence;

    move-result-object v2

    goto :goto_1

    .line 160
    :sswitch_2
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/DERFactory;->createSet(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)Lorg/spongycastle/asn1/DERSet;

    move-result-object v2

    goto :goto_1

    .line 162
    :sswitch_3
    new-instance v2, Lorg/spongycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERExternal;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Lorg/spongycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method protected readFully([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p0, p1}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lorg/spongycastle/asn1/DERObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 194
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    .line 195
    .local v5, "tag":I
    if-gtz v5, :cond_1

    .line 197
    if-nez v5, :cond_0

    .line 199
    new-instance v7, Ljava/io/IOException;

    const-string v8, "unexpected end-of-contents marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 202
    :cond_0
    const/4 v7, 0x0

    .line 256
    :goto_0
    return-object v7

    .line 208
    :cond_1
    invoke-static {p0, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 210
    .local v6, "tagNo":I
    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_2

    move v2, v7

    .line 215
    .local v2, "isConstructed":Z
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->readLength()I

    move-result v3

    .line 217
    .local v3, "length":I
    if-gez v3, :cond_6

    .line 219
    if-nez v2, :cond_3

    .line 221
    new-instance v7, Ljava/io/IOException;

    const-string v8, "indefinite length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    .end local v2    # "isConstructed":Z
    .end local v3    # "length":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 224
    .restart local v2    # "isConstructed":Z
    .restart local v3    # "length":I
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    iget v8, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, v8}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 225
    .local v1, "indIn":Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lorg/spongycastle/asn1/ASN1StreamParser;

    iget v8, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v4, v1, v8}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 227
    .local v4, "sp":Lorg/spongycastle/asn1/ASN1StreamParser;
    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_4

    .line 229
    new-instance v7, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    .line 232
    :cond_4
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_5

    .line 234
    new-instance v8, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v8, v7, v6, v4}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    .line 238
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 249
    new-instance v7, Ljava/io/IOException;

    const-string v8, "unknown BER object encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 241
    :sswitch_0
    new-instance v7, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BEROctetStringParser;->getLoadedObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    .line 243
    :sswitch_1
    new-instance v7, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BERSequenceParser;->getLoadedObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    .line 245
    :sswitch_2
    new-instance v7, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BERSetParser;->getLoadedObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    .line 247
    :sswitch_3
    new-instance v7, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERExternalParser;->getLoadedObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_0

    .line 256
    .end local v1    # "indIn":Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lorg/spongycastle/asn1/ASN1StreamParser;
    :cond_6
    :try_start_0
    invoke-virtual {p0, v5, v6, v3}, Lorg/spongycastle/asn1/ASN1InputStream;->buildObject(III)Lorg/spongycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/spongycastle/asn1/ASN1Exception;

    const-string v8, "corrupted stream detected"

    invoke-direct {v7, v8, v0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
