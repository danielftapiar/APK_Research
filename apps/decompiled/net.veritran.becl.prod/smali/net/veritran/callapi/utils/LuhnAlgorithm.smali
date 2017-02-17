.class public Lnet/veritran/callapi/utils/LuhnAlgorithm;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateVerifierDigit(Ljava/lang/String;)I
    .locals 6

    const/16 v5, 0xa

    const/4 v2, 0x0

    const/4 v0, 0x1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    shl-int/lit8 v3, v3, 0x1

    if-lt v3, v5, :cond_0

    add-int/lit8 v3, v3, -0x9

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, v1, 0xa

    rsub-int/lit8 v0, v0, 0xa

    if-ne v0, v5, :cond_3

    :goto_2
    return v2

    :cond_3
    move v2, v0

    goto :goto_2
.end method
