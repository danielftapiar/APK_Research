.class public final Lorg/jnumbers/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final NULL_CHAR:C = '\u0000'

.field public static final NULL_DOUBLE:D = 4.9E-324

.field public static final NULL_FLOAT:F = 1.4E-45f

.field public static final NULL_INT:I = -0x80000000

.field public static final NULL_LONG:J = -0x8000000000000000L

.field public static final NULL_SHORT:S = -0x8000s

.field private static final USE_FAST_NUMBER_PARSER:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static parseDouble(Ljava/lang/CharSequence;)D
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/jnumbers/NumberParser;->getDouble(Ljava/lang/CharSequence;II)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseFloat(Ljava/lang/CharSequence;)F
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 78
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 82
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v3, v4}, Lorg/jnumbers/NumberParser;->getDouble(Ljava/lang/CharSequence;II)D

    move-result-wide v0

    .line 84
    .local v0, "val":D
    const-wide/16 v4, 0x1

    cmpl-double v3, v0, v4

    if-eqz v3, :cond_0

    .line 88
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v0, v4

    if-nez v3, :cond_2

    .line 89
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 91
    :cond_2
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v3, v0, v4

    if-nez v3, :cond_3

    .line 92
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 94
    :cond_3
    const-wide/high16 v4, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double v3, v0, v4

    if-lez v3, :cond_0

    .line 97
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v3, v0, v4

    if-gez v3, :cond_0

    .line 100
    double-to-float v2, v0

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 123
    const/high16 v0, -0x80000000

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/jnumbers/NumberParser;->getInteger(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/CharSequence;)J
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 149
    const-wide/high16 v0, -0x8000000000000000L

    .line 152
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lorg/jnumbers/NumberParser;->getLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static parseShort(Ljava/lang/CharSequence;)S
    .locals 3
    .param p0, "value"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x7fff

    const/16 v1, -0x8000

    .line 173
    if-nez p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    invoke-static {p0}, Lorg/jnumbers/NumberParser;->getInteger(Ljava/lang/CharSequence;)I

    move-result v0

    .line 179
    .local v0, "val":I
    if-le v0, v1, :cond_0

    .line 182
    if-lt v0, v2, :cond_2

    move v1, v2

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    int-to-short v1, v0

    goto :goto_0
.end method
