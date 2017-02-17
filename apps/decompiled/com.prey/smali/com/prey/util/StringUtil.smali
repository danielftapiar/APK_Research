.class public Lcom/prey/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "myString"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v2, "out":Ljava/lang/StringBuffer;
    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 49
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/prey/util/StringUtil;->firstCharUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static firstCharUpper(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "myString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 14
    .local v0, "stringArray":[C
    aget-char v1, v0, v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v3

    .line 15
    new-instance p0, Ljava/lang/String;

    .end local p0    # "myString":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 17
    .end local v0    # "stringArray":[C
    .restart local p0    # "myString":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static isTextBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "texto"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "out":Z
    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 24
    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 28
    .end local v0    # "out":Z
    :cond_1
    return v0
.end method

.method public static isTextInteger(Ljava/lang/String;)Z
    .locals 3
    .param p0, "texto"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "out":Z
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 36
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v1, 0x1

    .line 42
    .end local v1    # "out":Z
    :cond_0
    :goto_0
    return v1

    .line 38
    .restart local v1    # "out":Z
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
