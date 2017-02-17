.class public Lcom/prey/PreyUtils;
.super Ljava/lang/Object;
.source "PreyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildVersionRelease()Ljava/lang/String;
    .locals 7

    .prologue
    .line 52
    const-string v4, ""

    .line 54
    .local v4, "version":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 55
    .local v2, "release":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v3, "st":Ljava/util/StringTokenizer;
    const/4 v0, 0x1

    .line 57
    .local v0, "first":Z
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 60
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_0
    if-eqz v0, :cond_1

    move-object v4, v1

    .line 62
    :goto_1
    const/4 v0, 0x0

    .line 63
    goto :goto_0

    .line 61
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 64
    .end local v0    # "first":Z
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "release":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v5

    .line 66
    :cond_2
    return-object v4
.end method

.method public static getDeviceType(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/prey/PreyUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "Tablet"

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Phone"

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 31
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float v2, v7, v8

    .line 32
    .local v2, "screenWidth":F
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v7, v8

    .line 33
    .local v1, "screenHeight":F
    float-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 34
    .local v4, "size":D
    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    cmpl-double v7, v4, v8

    if-ltz v7, :cond_0

    const/4 v6, 0x1

    .line 36
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "screenHeight":F
    .end local v2    # "screenWidth":F
    .end local v4    # "size":D
    :cond_0
    :goto_0
    return v6

    .line 35
    :catch_0
    move-exception v3

    .line 36
    .local v3, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static randomAlphaNumeric(I)Ljava/lang/String;
    .locals 10
    .param p0, "length"    # I

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 43
    .local v1, "characters":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 44
    .local v2, "charactersLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    int-to-double v8, v2

    mul-double v4, v6, v8

    .line 46
    .local v4, "index":D
    double-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    .end local v4    # "index":D
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
