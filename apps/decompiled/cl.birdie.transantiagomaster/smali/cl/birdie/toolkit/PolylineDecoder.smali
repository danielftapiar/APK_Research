.class public final Lcl/birdie/toolkit/PolylineDecoder;
.super Ljava/lang/Object;
.source "PolylineDecoder.java"


# direct methods
.method public static decodeSignedNumberWithIndex(Ljava/lang/String;I)[I
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "string is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v2, v3

    move v4, v3

    .end local p1    # "index":I
    :goto_0
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x3f

    and-int/lit8 v7, v6, 0x1f

    shl-int/2addr v7, v2

    or-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x5

    const/16 v7, 0x20

    if-ge v6, v7, :cond_2

    const/4 v2, 0x2

    new-array v0, v2, [I

    aput v4, v0, v3

    const/4 v2, 0x1

    aput v5, v0, v2

    .line 39
    .local v0, "r":[I
    aget v1, v0, v3

    .line 40
    .local v1, "sgn_num":I
    and-int/lit8 v2, v1, 0x1

    if-lez v2, :cond_1

    .line 41
    xor-int/lit8 v1, v1, -0x1

    .line 43
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    aput v2, v0, v3

    .line 44
    return-object v0

    .end local v0    # "r":[I
    .end local v1    # "sgn_num":I
    :cond_2
    move p1, v5

    goto :goto_0
.end method
