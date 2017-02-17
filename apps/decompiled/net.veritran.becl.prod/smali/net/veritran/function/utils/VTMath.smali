.class public Lnet/veritran/function/utils/VTMath;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exp(D)D
    .locals 2

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v0, v1, p0, p1}, Lnet/veritran/function/utils/VTMath;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static log(D)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static pow(DD)D
    .locals 14

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p0, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v6, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double v2, p2, v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    move v2, v0

    move-wide v0, p0

    :goto_1
    int-to-double v4, v2

    cmpg-double v3, v4, p2

    if-gez v3, :cond_a

    mul-double/2addr v0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p0, v2

    div-double v4, p0, v2

    :goto_2
    if-eqz v0, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v4

    :goto_3
    const/4 v1, 0x2

    move v8, v1

    move v9, v6

    move-wide v6, v2

    :goto_4
    const/16 v1, 0x1e

    if-ge v8, v1, :cond_7

    const/4 v1, 0x1

    move-wide v2, v4

    :goto_5
    if-ge v1, v8, :cond_4

    mul-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v4, p0, v2

    goto :goto_2

    :cond_3
    move-wide v2, v4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v8

    mul-double/2addr v2, v12

    div-double v2, v10, v2

    :goto_6
    if-eqz v0, :cond_6

    add-double/2addr v2, v6

    :goto_7
    neg-int v6, v9

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v6

    move-wide v6, v2

    goto :goto_4

    :cond_5
    int-to-double v10, v8

    div-double/2addr v2, v10

    goto :goto_6

    :cond_6
    int-to-double v10, v9

    mul-double/2addr v2, v10

    add-double/2addr v2, v6

    goto :goto_7

    :cond_7
    mul-double v8, p2, v6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v8

    const/4 v3, 0x2

    :goto_8
    const/16 v2, 0x1e

    if-gt v3, v2, :cond_a

    const/4 v2, 0x1

    move-wide v6, v8

    :goto_9
    if-ge v2, v3, :cond_8

    mul-double v4, v6, v8

    add-int/lit8 v2, v2, 0x1

    move-wide v6, v4

    goto :goto_9

    :cond_8
    const/4 v2, 0x2

    move v4, v2

    move v2, v3

    :goto_a
    const/4 v5, 0x2

    if-le v2, v5, :cond_9

    mul-int/2addr v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_9
    int-to-double v4, v4

    div-double v4, v6, v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    return-wide v0
.end method

.method public static powSqrt(DD)D
    .locals 10

    const/4 v1, 0x1

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/16 v3, 0x400

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, p2

    double-to-int v2, v6

    const/16 v0, 0xa

    move v6, v0

    move v7, v2

    move v8, v3

    move-wide v2, v4

    :cond_0
    :goto_0
    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2

    if-le v6, v1, :cond_2

    move v0, v1

    move-wide v2, p0

    :goto_1
    if-ge v0, v7, :cond_1

    mul-double/2addr v2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    add-int/lit8 v0, v6, -0x1

    div-int/lit8 v7, v8, 0x2

    int-to-double v8, v7

    mul-double/2addr v8, p2

    double-to-int v6, v8

    move v8, v7

    move v7, v6

    move v6, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-wide v2
.end method

.method public static round(D)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
