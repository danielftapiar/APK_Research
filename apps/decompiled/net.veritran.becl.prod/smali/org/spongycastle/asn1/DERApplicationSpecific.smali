.class public Lorg/spongycastle/asn1/DERApplicationSpecific;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 6
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 70
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 85
    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/DEREncodable;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "object"    # Lorg/spongycastle/asn1/DEREncodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/DEREncodable;)V

    .line 41
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "octets"    # [B

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 33
    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/DEREncodable;)V
    .locals 5
    .param p1, "explicit"    # Z
    .param p2, "tag"    # I
    .param p3, "object"    # Lorg/spongycastle/asn1/DEREncodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 49
    invoke-interface {p3}, Lorg/spongycastle/asn1/DEREncodable;->getDERObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v0

    .line 51
    .local v0, "data":[B
    iput-boolean p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 52
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 54
    if-eqz p1, :cond_0

    .line 56
    iput-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getLengthOfLength([B)I

    move-result v1

    .line 61
    .local v1, "lenBytes":I
    array-length v3, v0

    sub-int/2addr v3, v1

    new-array v2, v3, [B

    .line 62
    .local v2, "tmp":[B
    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    goto :goto_0
.end method

.method constructor <init>(ZI[B)V
    .locals 0
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 24
    iput p2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    .line 25
    iput-object p3, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 26
    return-void
.end method

.method private getLengthOfLength([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 89
    const/4 v0, 0x2

    .line 91
    .local v0, "count":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return v0
.end method

.method private replaceTagNumber(I[B)[B
    .locals 8
    .param p1, "newTag"    # I
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 189
    aget-byte v5, p2, v7

    and-int/lit8 v3, v5, 0x1f

    .line 190
    .local v3, "tagNo":I
    const/4 v1, 0x1

    .line 194
    .local v1, "index":I
    const/16 v5, 0x1f

    if-ne v3, v5, :cond_2

    .line 196
    const/4 v3, 0x0

    .line 198
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v0, v5, 0xff

    .line 202
    .local v0, "b":I
    and-int/lit8 v5, v0, 0x7f

    if-nez v5, :cond_0

    .line 204
    new-instance v5, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string v6, "corrupted stream - invalid high tag number found"

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    .line 209
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    .line 210
    shl-int/lit8 v3, v3, 0x7

    .line 211
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v0, v5, 0xff

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 214
    :cond_1
    and-int/lit8 v5, v0, 0x7f

    or-int/2addr v3, v5

    move v1, v2

    .line 217
    .end local v0    # "b":I
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_2
    array-length v5, p2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 219
    .local v4, "tmp":[B
    const/4 v5, 0x1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {p2, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    int-to-byte v5, p1

    aput-byte v5, v4, v7

    .line 223
    return-object v4
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/DERObject;)Z
    .locals 4
    .param p1, "o"    # Lorg/spongycastle/asn1/DERObject;

    .prologue
    const/4 v1, 0x0

    .line 169
    instance-of v2, p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 174
    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 176
    .local v0, "other":Lorg/spongycastle/asn1/DERApplicationSpecific;
    iget-boolean v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget v3, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    iget-object v3, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/DEROutputStream;)V
    .locals 3
    .param p1, "out"    # Lorg/spongycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/16 v0, 0x40

    .line 158
    .local v0, "classBits":I
    iget-boolean v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_0

    .line 160
    or-int/lit8 v0, v0, 0x20

    .line 163
    :cond_0
    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 164
    return-void
.end method

.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    return v0
.end method

.method public getContents()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject()Lorg/spongycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lorg/spongycastle/asn1/DERObject;
    .locals 4
    .param p1, "derTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 136
    const/16 v2, 0x1f

    if-lt p1, v2, :cond_0

    .line 138
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unsupported tag number"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getEncoded()[B

    move-result-object v0

    .line 142
    .local v0, "orig":[B
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->replaceTagNumber(I[B)[B

    move-result-object v1

    .line 144
    .local v1, "tmp":[B
    aget-byte v2, v0, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 146
    aget-byte v2, v1, v3

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 149
    :cond_1
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/DERObject;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConstructed()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/spongycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    return v0
.end method
