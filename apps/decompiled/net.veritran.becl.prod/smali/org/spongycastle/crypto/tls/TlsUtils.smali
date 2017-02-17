.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static PRF([BLjava/lang/String;[BI)[B
    .locals 10
    .param p0, "secret"    # [B
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "seed"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 273
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 275
    .local v2, "label":[B
    array-length v8, p0

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v7, v8, 0x2

    .line 276
    .local v7, "s_half":I
    new-array v5, v7, [B

    .line 277
    .local v5, "s1":[B
    new-array v6, v7, [B

    .line 278
    .local v6, "s2":[B
    invoke-static {p0, v9, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    array-length v8, p0

    sub-int/2addr v8, v7

    invoke-static {p0, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v3

    .line 283
    .local v3, "ls":[B
    new-array v0, p3, [B

    .line 284
    .local v0, "buf":[B
    new-array v4, p3, [B

    .line 285
    .local v4, "prf":[B
    new-instance v8, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v8}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-static {v8, v5, v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 286
    new-instance v8, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v8}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-static {v8, v6, v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 289
    aget-byte v8, v0, v1

    aget-byte v9, v4, v1

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-object v0
.end method

.method protected static checkVersion(Ljava/io/InputStream;Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 220
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 221
    .local v1, "i2":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 223
    :cond_0
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 225
    :cond_1
    return-void
.end method

.method protected static checkVersion([BLorg/spongycastle/crypto/tls/TlsProtocolHandler;)V
    .locals 3
    .param p0, "readVersion"    # [B
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 210
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, v2

    if-eq v0, v2, :cond_1

    .line 212
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 214
    :cond_1
    return-void
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 296
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 297
    .local v0, "c":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v0
.end method

.method private static hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 12
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B

    .prologue
    const/4 v11, 0x0

    .line 250
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v5, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 251
    .local v5, "mac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v6, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 252
    .local v6, "param":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v0, p2

    .line 253
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    .line 254
    .local v7, "size":I
    array-length v8, p3

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    div-int v4, v8, v7

    .line 255
    .local v4, "iterations":I
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v1, v8, [B

    .line 256
    .local v1, "buf":[B
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v2, v8, [B

    .line 257
    .local v2, "buf2":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 259
    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 260
    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 261
    invoke-virtual {v5, v1, v11}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 262
    move-object v0, v1

    .line 263
    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 264
    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 265
    array-length v8, p2

    invoke-virtual {v5, p2, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 266
    invoke-virtual {v5, v2, v11}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 267
    mul-int v8, v7, v3

    array-length v9, p3

    mul-int v10, v7, v3

    sub-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v11, p3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method protected static readFully([BLjava/io/InputStream;)V
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1, p0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p0

    if-eq v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 189
    :cond_0
    return-void
.end method

.method protected static readOpaque16(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 202
    .local v0, "length":I
    new-array v1, v0, [B

    .line 203
    .local v1, "value":[B
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 204
    return-object v1
.end method

.method protected static readOpaque8(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 194
    .local v0, "length":S
    new-array v1, v0, [B

    .line 195
    .local v1, "value":[B
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 196
    return-object v1
.end method

.method protected static readUint16(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 150
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 151
    .local v1, "i2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 153
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 155
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method protected static readUint24(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 161
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 162
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 163
    .local v2, "i3":I
    or-int v3, v0, v1

    or-int/2addr v3, v2

    if-gez v3, :cond_0

    .line 165
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 167
    :cond_0
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method protected static readUint32(Ljava/io/InputStream;)J
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 173
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 174
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 175
    .local v2, "i3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 176
    .local v3, "i4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 178
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 180
    :cond_0
    int-to-long v4, v0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    int-to-long v6, v1

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    int-to-long v6, v2

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    return-wide v4
.end method

.method protected static readUint8(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 140
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 144
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method static validateKeyUsage(Lorg/spongycastle/asn1/x509/X509CertificateStructure;I)V
    .locals 6
    .param p0, "c"    # Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    .param p1, "keyUsageBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 305
    .local v2, "exts":Lorg/spongycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 307
    sget-object v4, Lorg/spongycastle/asn1/x509/X509Extension;->keyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/x509/X509Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 308
    .local v1, "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 310
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    .line 311
    .local v3, "ku":Lorg/spongycastle/asn1/DERBitString;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 312
    .local v0, "bits":I
    and-int v4, v0, p1

    if-eq v4, p1, :cond_0

    .line 314
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 318
    .end local v0    # "bits":I
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    .end local v3    # "ku":Lorg/spongycastle/asn1/DERBitString;
    :cond_0
    return-void
.end method

.method protected static writeGMTUnixTime([BI)V
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 230
    .local v0, "t":I
    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 231
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 232
    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 233
    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 234
    return-void
.end method

.method protected static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 112
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 113
    return-void
.end method

.method protected static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 118
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 119
    return-void
.end method

.method protected static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    array-length v0, p0

    int-to-short v0, v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 106
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 107
    return-void
.end method

.method protected static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 39
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    return-void
.end method

.method protected static writeUint16(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 44
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 45
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 46
    return-void
.end method

.method protected static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 133
    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method protected static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    shr-int/lit8 v0, p0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 51
    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 52
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 53
    return-void
.end method

.method protected static writeUint24(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 57
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 58
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 59
    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 60
    return-void
.end method

.method protected static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 65
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 66
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 67
    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 68
    return-void
.end method

.method protected static writeUint32(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 72
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 73
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 74
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 75
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 76
    return-void
.end method

.method protected static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 81
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 82
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 83
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 84
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 85
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 86
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 87
    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 88
    return-void
.end method

.method protected static writeUint64(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 93
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 94
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 95
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 96
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 97
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 98
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 99
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 100
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 101
    return-void
.end method

.method protected static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # S
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 29
    return-void
.end method

.method protected static writeUint8(S[BI)V
    .locals 1
    .param p0, "i"    # S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 33
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 34
    return-void
.end method

.method protected static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 125
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method protected static writeVersion(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 240
    return-void
.end method

.method protected static writeVersion([BI)V
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x3

    aput-byte v0, p0, p1

    .line 245
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    aput-byte v1, p0, v0

    .line 246
    return-void
.end method
