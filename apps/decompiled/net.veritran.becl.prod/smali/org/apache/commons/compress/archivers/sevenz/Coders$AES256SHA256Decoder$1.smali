.class Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;
.super Ljava/io/InputStream;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;->decode(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private isInitialized:Z

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;

.field final synthetic val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$passwordBytes:[B


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;Lorg/apache/commons/compress/archivers/sevenz/Coder;[BLjava/io/InputStream;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->this$0:Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$passwordBytes:[B

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->isInitialized:Z

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    return-void
.end method

.method private init()Ljavax/crypto/CipherInputStream;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->isInitialized:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    move-object/from16 v24, v0

    .line 214
    :goto_0
    return-object v24

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-byte v24, v24, v25

    move/from16 v0, v24

    and-int/lit16 v8, v0, 0xff

    .line 160
    .local v8, "byte0":I
    and-int/lit8 v21, v8, 0x3f

    .line 161
    .local v21, "numCyclesPower":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-byte v24, v24, v25

    move/from16 v0, v24

    and-int/lit16 v9, v0, 0xff

    .line 162
    .local v9, "byte1":I
    shr-int/lit8 v24, v8, 0x6

    and-int/lit8 v24, v24, 0x1

    and-int/lit8 v25, v9, 0xf

    add-int v16, v24, v25

    .line 163
    .local v16, "ivSize":I
    shr-int/lit8 v24, v8, 0x7

    and-int/lit8 v24, v24, 0x1

    shr-int/lit8 v25, v9, 0x4

    add-int v23, v24, v25

    .line 164
    .local v23, "saltSize":I
    add-int/lit8 v24, v23, 0x2

    add-int v24, v24, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 165
    new-instance v24, Ljava/io/IOException;

    const-string v25, "Salt size + IV size too long"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 167
    :cond_1
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 168
    .local v22, "salt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v22

    move/from16 v3, v26

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v15, v0, [B

    .line 170
    .local v15, "iv":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    move-object/from16 v24, v0

    add-int/lit8 v25, v23, 0x2

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$passwordBytes:[B

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 173
    new-instance v24, Ljava/io/IOException;

    const-string v25, "Cannot read encrypted files without a password"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 176
    :cond_2
    const/16 v24, 0x3f

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 177
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v7, v0, [B

    .line 178
    .local v7, "aesKeyBytes":[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$passwordBytes:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$passwordBytes:[B

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v7

    move/from16 v27, v0

    sub-int v27, v27, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v26

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :goto_1
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v24, "AES"

    move-object/from16 v0, v24

    invoke-direct {v6, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 210
    .local v6, "aesKey":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v24, "AES/CBC/NoPadding"

    invoke-static/range {v24 .. v24}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 211
    .local v10, "cipher":Ljavax/crypto/Cipher;
    const/16 v24, 0x2

    new-instance v25, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v6, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 212
    new-instance v24, Ljavax/crypto/CipherInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$in:Ljava/io/InputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 213
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->isInitialized:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    move-object/from16 v24, v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 184
    .end local v6    # "aesKey":Ljavax/crypto/SecretKey;
    .end local v7    # "aesKeyBytes":[B
    .end local v10    # "cipher":Ljavax/crypto/Cipher;
    :cond_3
    :try_start_1
    const-string v24, "SHA-256"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 193
    .local v11, "digest":Ljava/security/MessageDigest;
    const/16 v24, 0x8

    move/from16 v0, v24

    new-array v12, v0, [B

    .line 194
    .local v12, "extra":[B
    const-wide/16 v18, 0x0

    .local v18, "j":J
    :goto_2
    const-wide/16 v24, 0x1

    shl-long v24, v24, v21

    cmp-long v24, v18, v24

    if-gez v24, :cond_6

    .line 195
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->val$passwordBytes:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 197
    invoke-virtual {v11, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_3
    array-length v0, v12

    move/from16 v24, v0

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 199
    aget-byte v24, v12, v17

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v12, v17

    .line 200
    aget-byte v24, v12, v17

    if-eqz v24, :cond_5

    .line 194
    :cond_4
    const-wide/16 v24, 0x1

    add-long v18, v18, v24

    goto :goto_2

    .line 185
    .end local v11    # "digest":Ljava/security/MessageDigest;
    .end local v12    # "extra":[B
    .end local v17    # "k":I
    .end local v18    # "j":J
    :catch_0
    move-exception v20

    .line 186
    .local v20, "noSuchAlgorithmException":Ljava/security/NoSuchAlgorithmException;
    new-instance v14, Ljava/io/IOException;

    const-string v24, "SHA-256 is unsupported by your Java implementation"

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    .local v14, "ioe":Ljava/io/IOException;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 188
    throw v14

    .line 198
    .end local v14    # "ioe":Ljava/io/IOException;
    .end local v20    # "noSuchAlgorithmException":Ljava/security/NoSuchAlgorithmException;
    .restart local v11    # "digest":Ljava/security/MessageDigest;
    .restart local v12    # "extra":[B
    .restart local v17    # "k":I
    .restart local v18    # "j":J
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 205
    .end local v17    # "k":I
    :cond_6
    invoke-virtual {v11}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .restart local v7    # "aesKeyBytes":[B
    goto/16 :goto_1

    .line 215
    .end local v11    # "digest":Ljava/security/MessageDigest;
    .end local v12    # "extra":[B
    .end local v18    # "j":J
    .restart local v6    # "aesKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v13

    .line 216
    .local v13, "generalSecurityException":Ljava/security/GeneralSecurityException;
    new-instance v14, Ljava/io/IOException;

    const-string v24, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v14    # "ioe":Ljava/io/IOException;
    invoke-virtual {v14, v13}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 219
    throw v14
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/Coders$AES256SHA256Decoder$1;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method
