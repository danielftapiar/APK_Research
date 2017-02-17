.class public final Lcl/birdie/toolkit/Float11;
.super Ljava/lang/Object;
.source "Float11.java"


# direct methods
.method private static _log(D)D
    .locals 15
    .param p0, "x"    # D

    .prologue
    .line 142
    const-wide/16 v13, 0x0

    cmpl-double v13, p0, v13

    if-gtz v13, :cond_1

    .line 143
    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    .line 174
    :cond_0
    return-wide v1

    .line 145
    :cond_1
    const-wide/16 v1, 0x0

    .line 147
    .local v1, "f":D
    const/4 v0, 0x0

    .line 148
    .local v0, "appendix":I
    :goto_0
    const-wide/16 v13, 0x0

    cmpl-double v13, p0, v13

    if-lez v13, :cond_2

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, p0, v13

    if-lez v13, :cond_3

    .line 154
    :cond_2
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v13

    .line 155
    add-int/lit8 v0, v0, -0x1

    .line 157
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v9, p0, v13

    .line 158
    .local v9, "y1":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double v11, p0, v13

    .line 159
    .local v11, "y2":D
    div-double v7, v9, v11

    .line 162
    .local v7, "y":D
    move-wide v5, v7

    .local v5, "k":D
    mul-double v11, v7, v7

    .line 164
    const-wide/16 v3, 0x1

    .local v3, "i":J
    :goto_1
    const-wide/16 v13, 0x32

    cmp-long v13, v3, v13

    if-ltz v13, :cond_4

    .line 170
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v13

    .line 171
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 172
    const-wide v13, -0x4019d1bd0105c611L    # -0.6931471805599453

    add-double/2addr v1, v13

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 150
    .end local v3    # "i":I
    .end local v5    # "k":D
    .end local v7    # "y":D
    .end local v9    # "y1":D
    .end local v11    # "y2":D
    :cond_3
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v13

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .local v3, "i":J
    .restart local v5    # "k":D
    .restart local v7    # "y":D
    .restart local v9    # "y1":D
    .restart local v11    # "y2":D
    :cond_4
    long-to-double v13, v3

    div-double v13, v5, v13

    add-double/2addr v1, v13

    .line 167
    mul-double/2addr v5, v11

    .line 164
    const-wide/16 v13, 0x2

    add-long/2addr v3, v13

    goto :goto_1
.end method

.method public static log(D)D
    .locals 5
    .param p0, "x"    # D

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 179
    cmpl-double v2, p0, v0

    if-gtz v2, :cond_1

    .line 180
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 191
    :cond_0
    :goto_0
    return-wide v0

    .line 182
    :cond_1
    cmpl-double v2, p0, v3

    if-eqz v2, :cond_0

    .line 185
    cmpl-double v0, p0, v3

    if-lez v0, :cond_2

    .line 187
    div-double v0, v3, p0

    .line 188
    invoke-static {v0, v1}, Lcl/birdie/toolkit/Float11;->_log(D)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {p0, p1}, Lcl/birdie/toolkit/Float11;->_log(D)D

    move-result-wide v0

    goto :goto_0
.end method
