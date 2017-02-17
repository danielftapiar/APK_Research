.class public Lorg/spongycastle/crypto/engines/IESEngine;
.super Ljava/lang/Object;
.source "IESEngine.java"


# instance fields
.field agree:Lorg/spongycastle/crypto/BasicAgreement;

.field cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field forEncryption:Z

.field kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field mac:Lorg/spongycastle/crypto/Mac;

.field macBuf:[B

.field param:Lorg/spongycastle/crypto/params/IESParameters;

.field privParam:Lorg/spongycastle/crypto/CipherParameters;

.field pubParam:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;)V
    .locals 1
    .param p1, "agree"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    .line 46
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 47
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    .line 48
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 1
    .param p1, "agree"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p4, "cipher"    # Lorg/spongycastle/crypto/BufferedBlockCipher;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    .line 68
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 69
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    .line 70
    invoke-interface {p3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    .line 71
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 72
    return-void
.end method

.method private decryptBlock([BII[B)[B
    .locals 19
    .param p1, "in_enc"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "z"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v9, 0x0

    .line 102
    .local v9, "M":[B
    const/16 v16, 0x0

    .line 103
    .local v16, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v13, Lorg/spongycastle/crypto/params/KDFParameters;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v3

    move-object/from16 v0, p4

    invoke-direct {v13, v0, v3}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 104
    .local v13, "kParam":Lorg/spongycastle/crypto/params/KDFParameters;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v17

    .line 106
    .local v17, "macKeySize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v3, v13}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v3

    sub-int p3, p3, v3

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-nez v3, :cond_1

    .line 112
    div-int/lit8 v3, v17, 0x8

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lorg/spongycastle/crypto/engines/IESEngine;->generateKdfBytes(Lorg/spongycastle/crypto/params/KDFParameters;I)[B

    move-result-object v10

    .line 114
    .local v10, "buf":[B
    move/from16 v0, p3

    new-array v9, v0, [B

    .line 116
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, p3

    if-eq v12, v0, :cond_0

    .line 118
    add-int v3, p2, v12

    aget-byte v3, p1, v3

    aget-byte v4, v10, v12

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v9, v12

    .line 116
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance v16, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v16    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    div-int/lit8 v3, v17, 0x8

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-direct {v0, v10, v1, v3}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 143
    .end local v12    # "i":I
    .restart local v16    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v15

    .line 145
    .local v15, "macIV":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v4, 0x0

    array-length v5, v15

    invoke-interface {v3, v15, v4, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 150
    add-int p2, p2, p3

    .line 152
    const/16 v18, 0x0

    .local v18, "t":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->macBuf:[B

    aget-byte v3, v3, v18

    add-int v4, p2, v18

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_2

    .line 156
    new-instance v3, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v4, "Mac codes failed to equal."

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v10    # "buf":[B
    .end local v15    # "macIV":[B
    .end local v18    # "t":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v3, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v11

    .line 126
    .local v11, "cipherKeySize":I
    div-int/lit8 v3, v11, 0x8

    div-int/lit8 v4, v17, 0x8

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lorg/spongycastle/crypto/engines/IESEngine;->generateKdfBytes(Lorg/spongycastle/crypto/params/KDFParameters;I)[B

    move-result-object v10

    .line 128
    .restart local v10    # "buf":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v6, 0x0

    div-int/lit8 v8, v11, 0x8

    invoke-direct {v5, v10, v6, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v3

    new-array v7, v3, [B

    .line 132
    .local v7, "tmp":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v14

    .line 134
    .local v14, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v3, v7, v14}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v3

    add-int/2addr v14, v3

    .line 136
    new-array v9, v14, [B

    .line 138
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v3, v9, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    new-instance v16, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v16    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    div-int/lit8 v3, v11, 0x8

    div-int/lit8 v4, v17, 0x8

    move-object/from16 v0, v16

    invoke-direct {v0, v10, v3, v4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .restart local v16    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    goto/16 :goto_1

    .line 152
    .end local v7    # "tmp":[B
    .end local v11    # "cipherKeySize":I
    .end local v14    # "len":I
    .restart local v15    # "macIV":[B
    .restart local v18    # "t":I
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 160
    :cond_3
    return-object v9
.end method

.method private encryptBlock([BII[B)[B
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "z"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v7, 0x0

    .line 171
    .local v7, "C":[B
    const/4 v15, 0x0

    .line 172
    .local v15, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v12, Lorg/spongycastle/crypto/params/KDFParameters;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getDerivationV()[B

    move-result-object v1

    move-object/from16 v0, p4

    invoke-direct {v12, v0, v1}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    .line 173
    .local v12, "kParam":Lorg/spongycastle/crypto/params/KDFParameters;
    const/4 v9, 0x0

    .line 174
    .local v9, "c_text_length":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getMacKeySize()I

    move-result v16

    .line 176
    .local v16, "macKeySize":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    if-nez v1, :cond_1

    .line 178
    div-int/lit8 v1, v16, 0x8

    add-int v1, v1, p3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->generateKdfBytes(Lorg/spongycastle/crypto/params/KDFParameters;I)[B

    move-result-object v8

    .line 180
    .local v8, "buf":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int v1, v1, p3

    new-array v7, v1, [B

    .line 181
    move/from16 v9, p3

    .line 183
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p3

    if-eq v11, v0, :cond_0

    .line 185
    add-int v1, p2, v11

    aget-byte v1, p1, v1

    aget-byte v2, v8, v11

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v11

    .line 183
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 188
    :cond_0
    new-instance v15, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v15    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    div-int/lit8 v1, v16, 0x8

    move/from16 v0, p3

    invoke-direct {v15, v8, v0, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 213
    .end local v11    # "i":I
    .restart local v15    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESParameters;->getEncodingV()[B

    move-result-object v14

    .line 215
    .local v14, "macIV":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1, v15}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v7, v2, v9}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    array-length v3, v14

    invoke-interface {v1, v14, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1, v7, v9}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 222
    return-object v7

    .line 192
    .end local v8    # "buf":[B
    .end local v14    # "macIV":[B
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;->getCipherKeySize()I

    move-result v10

    .line 193
    .local v10, "cipherKeySize":I
    div-int/lit8 v1, v10, 0x8

    div-int/lit8 v2, v16, 0x8

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->generateKdfBytes(Lorg/spongycastle/crypto/params/KDFParameters;I)[B

    move-result-object v8

    .line 195
    .restart local v8    # "buf":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v2, 0x1

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    div-int/lit8 v6, v10, 0x8

    invoke-direct {v3, v8, v4, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v9

    .line 199
    new-array v5, v9, [B

    .line 201
    .local v5, "tmp":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v13

    .line 203
    .local v13, "len":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->cipher:Lorg/spongycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v1, v5, v13}, Lorg/spongycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v13, v1

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/engines/IESEngine;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v1

    add-int/2addr v1, v13

    new-array v7, v1, [B

    .line 206
    move v9, v13

    .line 208
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v7, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    new-instance v15, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v15    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    div-int/lit8 v1, v10, 0x8

    div-int/lit8 v2, v16, 0x8

    invoke-direct {v15, v8, v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .restart local v15    # "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    goto/16 :goto_1
.end method

.method private generateKdfBytes(Lorg/spongycastle/crypto/params/KDFParameters;I)[B
    .locals 4
    .param p1, "kParam"    # Lorg/spongycastle/crypto/params/KDFParameters;
    .param p2, "length"    # I

    .prologue
    .line 229
    new-array v0, p2, [B

    .line 231
    .local v0, "buf":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    invoke-interface {v1, p1}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 233
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 235
    return-object v0
.end method


# virtual methods
.method public init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "forEncryption"    # Z
    .param p2, "privParam"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p3, "pubParam"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p4, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    .line 89
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 90
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 91
    check-cast p4, Lorg/spongycastle/crypto/params/IESParameters;

    .end local p4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p4, p0, Lorg/spongycastle/crypto/engines/IESEngine;->param:Lorg/spongycastle/crypto/params/IESParameters;

    .line 92
    return-void
.end method

.method public processBlock([BII)[B
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->privParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 246
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->agree:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IESEngine;->pubParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 248
    .local v0, "z":Ljava/math/BigInteger;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/IESEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->encryptBlock([BII[B)[B

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/spongycastle/crypto/engines/IESEngine;->decryptBlock([BII[B)[B

    move-result-object v1

    goto :goto_0
.end method
