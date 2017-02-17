.class public final Lde/viktorreiser/toolbox/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    return-void
.end method

.method public static append(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "postfix"    # Ljava/lang/Object;

    .prologue
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given object is not an array!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v1

    .line 224
    .local v1, "isArray":Z
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 226
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 231
    return-object v2

    .line 227
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    aput-object v3, v2, v0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 228
    goto :goto_1
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "version1"    # Ljava/lang/String;
    .param p2, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 503
    invoke-static {p0, p1, v8}, Lde/viktorreiser/toolbox/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "v1Parts":[Ljava/lang/String;
    invoke-static {p0, p2, v8}, Lde/viktorreiser/toolbox/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, "v2Parts":[Ljava/lang/String;
    array-length v9, v3

    array-length v10, v5

    if-ge v9, v10, :cond_1

    array-length v0, v3

    .line 507
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 518
    move v1, v0

    :goto_2
    array-length v9, v3

    if-lt v1, v9, :cond_4

    .line 524
    move v1, v0

    :goto_3
    array-length v6, v5

    if-lt v1, v6, :cond_5

    move v6, v8

    .line 530
    :cond_0
    :goto_4
    return v6

    .line 505
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    array-length v0, v5

    goto :goto_0

    .line 508
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    aget-object v9, v3, v1

    invoke-static {v9, v8}, Lde/viktorreiser/toolbox/util/StringUtils;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 509
    .local v2, "v1":I
    aget-object v9, v5, v1

    invoke-static {v9, v8}, Lde/viktorreiser/toolbox/util/StringUtils;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 511
    .local v4, "v2":I
    if-gt v2, v4, :cond_0

    .line 513
    if-ge v2, v4, :cond_3

    move v6, v7

    .line 514
    goto :goto_4

    .line 507
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 519
    .end local v2    # "v1":I
    .end local v4    # "v2":I
    :cond_4
    aget-object v9, v3, v1

    invoke-static {v9, v8}, Lde/viktorreiser/toolbox/util/StringUtils;->getInteger(Ljava/lang/String;I)I

    move-result v9

    if-gtz v9, :cond_0

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 525
    :cond_5
    aget-object v6, v5, v1

    invoke-static {v6, v8}, Lde/viktorreiser/toolbox/util/StringUtils;->getInteger(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    move v6, v7

    .line 526
    goto :goto_4

    .line 524
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given object is not an array!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 303
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 298
    :cond_1
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    const/4 v1, 0x1

    goto :goto_1

    .line 297
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static extractNameFromUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 544
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 547
    .local v1, "lastDot":I
    if-eq v1, v2, :cond_0

    .line 548
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 552
    if-eq v1, v2, :cond_0

    .line 553
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_1
    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 356
    if-eqz p0, :cond_0

    .line 358
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 477
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/StringUtils;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 478
    .local v0, "v":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method

.method public static getDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 462
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/StringUtils;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 463
    .local v0, "v":Ljava/lang/Double;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":D
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0
.end method

.method public static getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 396
    if-eqz p0, :cond_0

    .line 398
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 447
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/StringUtils;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 448
    .local v0, "v":Ljava/lang/Float;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultValue":F
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0
.end method

.method public static getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 376
    if-eqz p0, :cond_0

    .line 378
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 417
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/StringUtils;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 418
    .local v0, "v":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 336
    if-eqz p0, :cond_0

    .line 338
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 432
    invoke-static {p0}, Lde/viktorreiser/toolbox/util/StringUtils;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 433
    .local v0, "v":Ljava/lang/Long;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 318
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given object is not an array!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, "s":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 137
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v0, v1, :cond_1

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 138
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    if-eq v0, v1, :cond_2

    .line 141
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static prepend(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "prefix"    # Ljava/lang/Object;

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given object is not an array!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v1

    .line 181
    .local v1, "isArray":Z
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 183
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 188
    return-object v2

    .line 184
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    aput-object v3, v2, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 184
    goto :goto_1
.end method

.method public static prependAndAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "prefix"    # Ljava/lang/Object;
    .param p2, "postfix"    # Ljava/lang/Object;

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Given object is not an array!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v2

    .line 266
    .local v2, "isPrefixArray":Z
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v1

    .line 267
    .local v1, "isPostfixArray":Z
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 269
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    .line 275
    return-object v3

    .line 270
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    if-eqz v1, :cond_3

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    aput-object v4, v3, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 270
    goto :goto_1

    :cond_3
    move-object v4, p2

    .line 272
    goto :goto_2
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lde/viktorreiser/toolbox/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "removeEmpty"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lde/viktorreiser/toolbox/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;ZI)[Ljava/lang/String;
    .locals 8
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "removeEmpty"    # Z
    .param p3, "minSplits"    # I

    .prologue
    const/4 v7, -0x1

    .line 68
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, "delimiterLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 73
    .local v5, "stringLength":I
    const/4 v0, 0x0

    .line 74
    .local v0, "currentMatch":I
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, "nextMatch":I
    if-ne v4, v7, :cond_3

    .line 77
    if-eqz p2, :cond_0

    if-eqz v5, :cond_1

    .line 78
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :goto_1
    if-lt v2, p3, :cond_6

    .line 104
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 92
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 94
    if-ne v4, v7, :cond_3

    .line 95
    move v4, v5

    .line 82
    :cond_3
    if-eqz p2, :cond_4

    if-eq v0, v4, :cond_5

    .line 83
    :cond_4
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    add-int v0, v4, v1

    .line 88
    if-eq v4, v5, :cond_1

    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 101
    .restart local v2    # "i":I
    :cond_6
    const-string v6, ""

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
