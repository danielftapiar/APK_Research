.class public Lnet/veritran/vtuserapplication/adapters/TokenReaderAdapter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnswerChosen(I)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/TokenReaderAdapter;->getTokenValue(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x9

    if-ge v1, v3, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v1, v0

    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_5

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v1, 0x3

    if-ge v5, v6, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v1, 0x0

    add-int/lit8 v6, v1, 0x3

    :try_start_2
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v1, 0x0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    add-int/lit8 v1, v1, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v3, 0x3

    if-ge v6, v7, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v3, 0x0

    add-int/lit8 v7, v3, 0x3

    :try_start_5
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v6

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int v8, v3, v6

    if-ge v7, v8, :cond_8

    new-array v0, v2, [Ljava/lang/String;

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-array v0, v2, [Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    add-int v7, v3, v6

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getAnswerTime(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/TokenReaderAdapter;->getTokenValue(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTokenValue(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->isSecret()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->isEncryted()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static render(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lnet/veritran/vtuserapplication/adapters/TokenReaderAdapter;->getTokenValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/veritran/vtuserapplication/adapters/StringFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
