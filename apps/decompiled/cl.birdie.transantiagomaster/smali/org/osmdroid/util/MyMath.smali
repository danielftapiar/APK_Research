.class public final Lorg/osmdroid/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"


# direct methods
.method public static mod(II)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "modulus"    # I

    .prologue
    .line 51
    if-lez p0, :cond_1

    .line 52
    rem-int/2addr p0, p1

    .line 57
    .end local p0    # "number":I
    :cond_0
    return p0

    .line 54
    .restart local p0    # "number":I
    :cond_1
    :goto_0
    if-gez p0, :cond_0

    .line 55
    add-int/2addr p0, p1

    goto :goto_0
.end method
