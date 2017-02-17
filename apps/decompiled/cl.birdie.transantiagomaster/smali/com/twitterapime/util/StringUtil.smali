.class public final Lcom/twitterapime/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final MONTHS_ABBREVIATION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "may"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitterapime/util/StringUtil;->MONTHS_ABBREVIATION:[Ljava/lang/String;

    return-void
.end method

.method public static convertTweetDateToLong(Ljava/lang/String;)J
    .locals 11
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 53
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Date must not be null/empty."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xa

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    :goto_0
    invoke-static {p0, v10}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "parts":[Ljava/lang/String;
    aget-object v4, v2, v6

    const/16 v5, 0x2d

    invoke-static {v4, v5}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "dparts":[Ljava/lang/String;
    aget-object v4, v2, v7

    const/16 v5, 0x3a

    invoke-static {v4, v5}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "tparts":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    .local v0, "c":Ljava/util/Calendar;
    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 70
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 71
    const/4 v4, 0x5

    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 72
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 73
    const/16 v4, 0xc

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 74
    const/16 v4, 0xd

    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    return-wide v4

    .line 61
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "dparts":[Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "tparts":[Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/twitterapime/util/StringUtil;->formatTweetDate2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p0, :cond_0

    .line 245
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "String must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_0
    if-nez p1, :cond_1

    .line 248
    const-string p1, "UTF-8"

    .line 254
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v0, "bIn":Ljava/io/ByteArrayInputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 260
    .local v1, "c":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .local v2, "ret":Ljava/lang/StringBuffer;
    :goto_1
    if-ltz v1, :cond_b

    .line 263
    const/16 v3, 0x61

    if-lt v1, v3, :cond_2

    const/16 v3, 0x7a

    if-le v1, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5a

    if-le v1, v3, :cond_5

    :cond_3
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-le v1, v3, :cond_5

    :cond_4
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_5

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_7

    .line 270
    :cond_5
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    goto :goto_1

    .line 256
    .end local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v1    # "c":I
    .end local v2    # "ret":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v0    # "bIn":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 271
    .restart local v1    # "c":I
    .restart local v2    # "ret":Ljava/lang/StringBuffer;
    :cond_7
    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    .line 272
    const-string v3, "%20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 274
    :cond_8
    const/16 v3, 0x80

    if-ge v1, v3, :cond_9

    .line 275
    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->getHexChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 276
    :cond_9
    const/16 v3, 0xe0

    if-ge v1, v3, :cond_a

    .line 277
    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->getHexChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-static {v3}, Lcom/twitterapime/util/StringUtil;->getHexChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 279
    :cond_a
    const/16 v3, 0xf0

    if-ge v1, v3, :cond_6

    .line 280
    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->getHexChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-static {v3}, Lcom/twitterapime/util/StringUtil;->getHexChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-static {v3}, Lcom/twitterapime/util/StringUtil;->getHexChar(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 289
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static formatTweetDate2(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2d

    const/16 v5, 0x20

    .line 409
    invoke-static {p0, v5}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "dtps":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "mon":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/twitterapime/util/StringUtil;->MONTHS_ABBREVIATION:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 413
    sget-object v3, Lcom/twitterapime/util/StringUtil;->MONTHS_ABBREVIATION:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Lcom/twitterapime/util/StringUtil;->zeroPad$13d12155(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid date format: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getHexChar(I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    const-string v0, "%0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "%"

    goto :goto_0
.end method

.method public static getUrlParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x3d

    .line 358
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 360
    .local v1, "ix":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 361
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 364
    :cond_0
    const/16 v3, 0x26

    invoke-static {p0, v3}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "params":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 367
    aget-object v3, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    aget-object v3, v2, v0

    invoke-static {v3, v5}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 372
    :goto_1
    return-object v3

    .line 366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Str must not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v4, "out":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 147
    .local v0, "cs":[C
    const/4 v5, 0x0

    .line 148
    .local v5, "tagFound":Z
    const/4 v2, 0x0

    .line 149
    .local v2, "i1":I
    const/4 v3, 0x0

    .line 151
    .local v3, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 152
    aget-char v6, v0, v1

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2

    if-nez v5, :cond_2

    .line 153
    invoke-virtual {v4, v0, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 155
    move v2, v1

    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v5, 0x1

    .line 164
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 151
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_2
    aget-char v6, v0, v1

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_1

    if-eqz v5, :cond_1

    .line 160
    add-int/lit8 v2, v1, 0x1

    .line 161
    const/4 v3, 0x0

    .line 162
    const/4 v5, 0x0

    goto :goto_1

    .line 167
    :cond_3
    if-lez v3, :cond_4

    .line 168
    invoke-virtual {v4, v0, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 171
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static final split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiter"    # C

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Str must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 95
    .local v3, "v":Ljava/util/Vector;
    const/4 v2, 0x0

    .line 98
    .local v2, "start":I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, "iof":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 99
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 105
    .local v0, "codes":[Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 107
    return-object v0
.end method

.method private static zeroPad$13d12155(I)Ljava/lang/String;
    .locals 4
    .param p0, "n"    # I

    .prologue
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v0, v2, 0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method
