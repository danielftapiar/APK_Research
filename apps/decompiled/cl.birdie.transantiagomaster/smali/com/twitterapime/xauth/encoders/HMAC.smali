.class public final Lcom/twitterapime/xauth/encoders/HMAC;
.super Ljava/lang/Object;
.source "HMAC.java"


# direct methods
.method public static getHmac(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x40

    .line 13
    const/16 v9, 0x40

    :try_start_0
    new-array v2, v9, [B

    .line 14
    .local v2, "ipadArray":[B
    const/16 v9, 0x40

    new-array v5, v9, [B

    .line 15
    .local v5, "opadArray":[B
    const/16 v9, 0x40

    new-array v4, v9, [B

    .line 16
    .local v4, "keyArray":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 17
    .local v0, "ex":I
    new-instance v6, Lcom/twitterapime/xauth/encoders/SHA1;

    invoke-direct {v6}, Lcom/twitterapime/xauth/encoders/SHA1;-><init>()V

    .line 18
    .local v6, "sha1":Lcom/twitterapime/xauth/encoders/SHA1;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v10, :cond_0

    .line 19
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->getDigestOfBytes([B)[B

    move-result-object v7

    .line 20
    .local v7, "temp":[B
    array-length v0, v7

    .line 21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 22
    aget-byte v9, v7, v1

    aput-byte v9, v4, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v1    # "i":I
    .end local v7    # "temp":[B
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 26
    .restart local v7    # "temp":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_1

    .line 27
    aget-byte v9, v7, v1

    aput-byte v9, v4, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30
    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v10, :cond_2

    .line 31
    const/4 v9, 0x0

    aput-byte v9, v4, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v10, :cond_3

    .line 34
    aget-byte v9, v4, v3

    xor-int/lit8 v9, v9, 0x36

    int-to-byte v9, v9

    aput-byte v9, v2, v3

    .line 35
    aget-byte v9, v4, v3

    xor-int/lit8 v9, v9, 0x5c

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 33
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 37
    :cond_3
    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v2, v9}, Lcom/twitterapime/xauth/encoders/HMAC;->join([B[B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->getDigestOfBytes([B)[B

    move-result-object v8

    .line 40
    .local v8, "tempResult":[B
    invoke-static {v5, v8}, Lcom/twitterapime/xauth/encoders/HMAC;->join([B[B)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/twitterapime/xauth/encoders/SHA1;->getDigestOfBytes([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 42
    .end local v0    # "ex":I
    .end local v1    # "i":I
    .end local v2    # "ipadArray":[B
    .end local v3    # "j":I
    .end local v4    # "keyArray":[B
    .end local v5    # "opadArray":[B
    .end local v6    # "sha1":Lcom/twitterapime/xauth/encoders/SHA1;
    .end local v7    # "temp":[B
    .end local v8    # "tempResult":[B
    :goto_4
    return-object v9

    :catch_0
    move-exception v9

    const/4 v9, 0x0

    goto :goto_4
.end method

.method private static join([B[B)[B
    .locals 4
    .param p0, "b1"    # [B
    .param p1, "b2"    # [B

    .prologue
    .line 52
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    .line 53
    new-array v1, v2, [B

    .line 54
    .local v1, "newer":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 55
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 58
    array-length v2, p0

    add-int/2addr v2, v0

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_1
    return-object v1
.end method
