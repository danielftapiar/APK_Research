.class public Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/barcode/Code128Constants;
.implements Lnet/veritran/vtuserapplication/utils/barcode/Code128Encoder;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a:I

    return-void
.end method

.method private static a(CI)I
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x20

    const/16 v0, 0xf1

    if-ne p0, v0, :cond_0

    const/16 v0, 0x66

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf2

    if-ne p0, v0, :cond_1

    const/16 v0, 0x61

    goto :goto_0

    :cond_1
    const/16 v0, 0xf3

    if-ne p0, v0, :cond_2

    const/16 v0, 0x60

    goto :goto_0

    :cond_2
    const/16 v0, 0xf4

    if-ne p0, v0, :cond_4

    if-ne p1, v2, :cond_3

    const/16 v0, 0x65

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_7

    if-ltz p0, :cond_5

    if-ge p0, v1, :cond_5

    add-int/lit8 v0, p0, 0x40

    goto :goto_0

    :cond_5
    if-lt p0, v1, :cond_6

    const/16 v0, 0x5f

    if-gt p0, v0, :cond_6

    add-int/lit8 v0, p0, -0x20

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    if-lt p0, v1, :cond_8

    const/16 v0, 0x80

    if-ge p0, v0, :cond_8

    add-int/lit8 v0, p0, -0x20

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only A or B allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;II[II)I
    .locals 8

    if-ne p2, p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(C)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-eqz v3, :cond_7

    add-int/lit8 v1, p5, 0x1

    if-nez p2, :cond_6

    const/16 v0, 0x68

    :goto_3
    aput v0, p4, p5

    const/4 v0, 0x1

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_4
    move v4, v0

    move v0, v3

    move v3, v2

    move v2, v1

    :goto_5
    if-ge p2, p3, :cond_d

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v0, :cond_b

    invoke-static {v5}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_9

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(C)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v1, v3, 0x1

    const/16 v0, 0x65

    aput v0, p4, v3

    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x1

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_7
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(CI)I

    move-result v5

    aput v5, p4, v2

    move v2, v1

    move v1, v4

    :goto_8
    add-int/lit8 p2, p2, 0x1

    move v4, v1

    goto :goto_5

    :cond_2
    invoke-static {v4}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->b(C)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int v0, p3, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The message has an odd number of digits. The number of digits must be even for Codeset C."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid characters found for Code 128 Codeset A or B which are disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v0, 0x64

    goto :goto_3

    :cond_7
    add-int/lit8 v2, p5, 0x1

    if-nez p2, :cond_8

    const/16 v0, 0x67

    :goto_9
    aput v0, p4, p5

    const/4 v0, 0x1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_4

    :cond_8
    const/16 v0, 0x65

    goto :goto_9

    :cond_9
    add-int/lit8 v1, v3, 0x1

    const/16 v2, 0x62

    aput v2, p4, v3

    goto :goto_6

    :cond_a
    add-int/lit8 v1, v3, 0x1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(CI)I

    move-result v5

    aput v5, p4, v3

    move v3, v1

    move v1, v4

    goto :goto_8

    :cond_b
    invoke-static {v5}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->b(C)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v1, p2, 0x1

    if-ge v1, p3, :cond_c

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->b(C)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int/lit8 v1, v3, 0x1

    const/16 v0, 0x64

    aput v0, p4, v3

    const/4 v0, 0x1

    :goto_a
    const/4 v3, 0x1

    add-int/lit8 v4, v1, 0x1

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(CI)I

    move-result v5

    aput v5, p4, v1

    move v1, v3

    move v3, v4

    goto :goto_8

    :cond_c
    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x62

    aput v4, p4, v3

    goto :goto_a

    :cond_d
    if-eqz v2, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(I)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid characters found for Code 128 Codeset A which is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v4, :cond_f

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(I)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid characters found for Code 128 Codeset B which is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    sub-int v0, v3, p5

    goto/16 :goto_0

    :cond_10
    move v1, v2

    move v2, v3

    goto/16 :goto_7
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    iget v0, p0, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x60

    if-lt p0, v0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[I
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_b

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    move v6, v1

    :goto_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    add-int v1, v3, v6

    if-ge v1, v8, :cond_c

    add-int v1, v3, v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x30

    if-lt v1, v9, :cond_5

    const/16 v9, 0x39

    if-gt v1, v9, :cond_5

    add-int v1, v3, v6

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v8, :cond_4

    const/4 v1, 0x1

    :goto_2
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    if-ne v6, v8, :cond_3

    :cond_0
    if-eqz v1, :cond_2

    const/16 v0, 0xf1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_1

    add-int v1, v3, v6

    if-le v0, v1, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(Ljava/lang/String;II[II)I

    move-result v0

    add-int v7, v5, v0

    add-int v2, v3, v6

    if-ne v3, v2, :cond_7

    const/4 v0, 0x0

    :goto_3
    add-int v5, v7, v0

    :cond_3
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_4
    add-int v1, v3, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x30

    if-lt v1, v9, :cond_c

    const/16 v9, 0x39

    if-gt v1, v9, :cond_c

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v6, 0x2

    move v6, v1

    goto :goto_1

    :cond_5
    const/16 v9, 0xf1

    if-ne v1, v9, :cond_c

    if-eqz v3, :cond_6

    if-lez v6, :cond_c

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v7, 0x1

    if-nez v3, :cond_8

    const/16 v0, 0x69

    :goto_4
    aput v0, v4, v7

    move v0, v1

    move v5, v3

    :goto_5
    if-ge v5, v2, :cond_a

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v1, 0xf1

    if-ne v9, v1, :cond_9

    add-int/lit8 v1, v0, 0x1

    const/16 v9, 0x66

    aput v9, v4, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v1

    goto :goto_5

    :cond_8
    const/16 v0, 0x63

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v0, 0x1

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v4, v0

    add-int/lit8 v0, v5, 0x2

    move v5, v0

    move v0, v1

    goto :goto_5

    :cond_a
    sub-int/2addr v0, v7

    goto :goto_3

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lnet/veritran/vtuserapplication/utils/barcode/DefaultCode128Encoder;->a(Ljava/lang/String;II[II)I

    move-result v0

    add-int/2addr v0, v5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_c
    move v1, v7

    goto/16 :goto_2
.end method
