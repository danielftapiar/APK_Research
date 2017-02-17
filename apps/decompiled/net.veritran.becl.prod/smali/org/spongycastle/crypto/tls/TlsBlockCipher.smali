.class public Lorg/spongycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source "TlsBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 9
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p2, "encryptCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p3, "decryptCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p4, "writeDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "readDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p6, "cipherKeySize"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 29
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 30
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 32
    mul-int/lit8 v0, p6, 0x2

    invoke-interface {p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    add-int v7, v0, v1

    .line 36
    .local v7, "prfSize":I
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v8

    .line 38
    .local v8, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v0, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const-string v1, "key expansion"

    iget-object v2, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v4, v8, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-static {v2, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    invoke-static {v0, v1, v2, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v3

    .line 42
    .local v3, "key_block":[B
    const/4 v5, 0x0

    .line 45
    .local v5, "offset":I
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface {p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-direct {v0, p4, v3, v5, v1}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/Digest;[BII)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 46
    invoke-interface {p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    add-int/2addr v5, v0

    .line 47
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface {p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    invoke-direct {v0, p5, v3, v5, v1}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/Digest;[BII)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 48
    invoke-interface {p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    add-int/2addr v5, v0

    .line 51
    const/4 v1, 0x1

    mul-int/lit8 v0, p6, 0x2

    add-int v6, v5, v0

    move-object v0, p0

    move-object v2, p2

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->initCipher(ZLorg/spongycastle/crypto/BlockCipher;[BIII)V

    .line 53
    add-int/2addr v5, p6

    .line 54
    const/4 v1, 0x0

    add-int v0, v5, p6

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int v6, v0, v2

    move-object v0, p0

    move-object v2, p3

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->initCipher(ZLorg/spongycastle/crypto/BlockCipher;[BIII)V

    .line 57
    return-void
.end method


# virtual methods
.method protected chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I
    .locals 3
    .param p1, "r"    # Ljava/security/SecureRandom;
    .param p2, "max"    # I

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    .line 200
    .local v1, "x":I
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->lowestBitSet(I)I

    move-result v0

    .line 201
    .local v0, "n":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public decodeCiphertext(S[BII)[B
    .locals 21
    .param p1, "type"    # S
    .param p2, "ciphertext"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v18

    add-int/lit8 v13, v18, 0x1

    .line 101
    .local v13, "minLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 102
    .local v5, "blocksize":I
    const/4 v8, 0x0

    .line 107
    .local v8, "decrypterror":Z
    move/from16 v0, p4

    if-ge v0, v13, :cond_0

    .line 109
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x32

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18

    .line 115
    :cond_0
    rem-int v18, p4, v5

    if-eqz v18, :cond_1

    .line 117
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x15

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18

    .line 123
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v10, v0, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v18, v0

    add-int v19, v10, p3

    add-int v20, v10, p3

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    move-object/from16 v3, p2

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 123
    add-int/2addr v10, v5

    goto :goto_0

    .line 131
    :cond_2
    add-int v18, p3, p4

    add-int/lit8 v11, v18, -0x1

    .line 133
    .local v11, "lastByteOffset":I
    aget-byte v15, p2, v11

    .line 136
    .local v15, "paddingsizebyte":B
    and-int/lit16 v14, v15, 0xff

    .line 138
    .local v14, "paddingsize":I
    sub-int v12, p4, v13

    .line 139
    .local v12, "maxPaddingSize":I
    if-le v14, v12, :cond_5

    .line 141
    const/4 v8, 0x1

    .line 142
    const/4 v14, 0x0

    .line 167
    :cond_3
    :goto_1
    sub-int v18, p4, v13

    sub-int v17, v18, v14

    .line 168
    .local v17, "plaintextlength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object v6

    .line 173
    .local v6, "calculatedMac":[B
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 174
    .local v7, "decryptedMac":[B
    add-int v18, p3, v17

    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    invoke-static {v6, v7}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v18

    if-nez v18, :cond_4

    .line 179
    const/4 v8, 0x1

    .line 185
    :cond_4
    if-eqz v8, :cond_7

    .line 187
    new-instance v18, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v19, 0x14

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v18

    .line 149
    .end local v6    # "calculatedMac":[B
    .end local v7    # "decryptedMac":[B
    .end local v17    # "plaintextlength":I
    :cond_5
    const/4 v9, 0x0

    .line 150
    .local v9, "diff":B
    sub-int v10, v11, v14

    :goto_2
    if-ge v10, v11, :cond_6

    .line 152
    aget-byte v18, p2, v10

    xor-int v18, v18, v15

    or-int v18, v18, v9

    move/from16 v0, v18

    int-to-byte v9, v0

    .line 150
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 154
    :cond_6
    if-eqz v9, :cond_3

    .line 157
    const/4 v8, 0x1

    .line 158
    const/4 v14, 0x0

    goto :goto_1

    .line 190
    .end local v9    # "diff":B
    .restart local v6    # "calculatedMac":[B
    .restart local v7    # "decryptedMac":[B
    .restart local v17    # "plaintextlength":I
    :cond_7
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 191
    .local v16, "plaintext":[B
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v16

    move/from16 v3, v18

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    return-object v16
.end method

.method public encodePlaintext(S[BII)[B
    .locals 16
    .param p1, "type"    # S
    .param p2, "plaintext"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v14}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 73
    .local v5, "blocksize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v14

    add-int v14, v14, p4

    add-int/lit8 v14, v14, 0x1

    rem-int/2addr v14, v5

    sub-int v9, v5, v14

    .line 74
    .local v9, "minPaddingSize":I
    rsub-int v14, v9, 0xff

    div-int v8, v14, v5

    .line 75
    .local v8, "maxExtraPadBlocks":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v14}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I

    move-result v4

    .line 76
    .local v4, "actualExtraPadBlocks":I
    mul-int v14, v4, v5

    add-int v11, v9, v14

    .line 78
    .local v11, "paddingsize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v14

    add-int v14, v14, p4

    add-int/2addr v14, v11

    add-int/lit8 v13, v14, 0x1

    .line 79
    .local v13, "totalsize":I
    new-array v10, v13, [B

    .line 80
    .local v10, "outbuf":[B
    const/4 v14, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v10, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object v7

    .line 82
    .local v7, "mac":[B
    const/4 v14, 0x0

    array-length v15, v7

    move/from16 v0, p4

    invoke-static {v7, v14, v10, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length v14, v7

    add-int v12, p4, v14

    .line 84
    .local v12, "paddoffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-gt v6, v11, :cond_0

    .line 86
    add-int v14, v6, v12

    int-to-byte v15, v11

    aput-byte v15, v10, v14

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v13, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v14, v10, v6, v10, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 88
    add-int/2addr v6, v5

    goto :goto_1

    .line 92
    :cond_1
    return-object v10
.end method

.method protected initCipher(ZLorg/spongycastle/crypto/BlockCipher;[BIII)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p3, "key_block"    # [B
    .param p4, "key_size"    # I
    .param p5, "key_offset"    # I
    .param p6, "iv_offset"    # I

    .prologue
    .line 62
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p5, p4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 63
    .local v0, "key_parameter":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    invoke-direct {v1, v0, p3, p6, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    .line 65
    .local v1, "parameters_with_iv":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-interface {p2, p1, v1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 66
    return-void
.end method

.method protected lowestBitSet(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 208
    const/16 v0, 0x20

    .line 217
    :cond_0
    return v0

    .line 211
    :cond_1
    const/4 v0, 0x0

    .line 212
    .local v0, "n":I
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
