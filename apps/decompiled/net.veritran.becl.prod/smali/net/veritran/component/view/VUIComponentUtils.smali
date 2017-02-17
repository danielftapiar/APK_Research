.class public abstract Lnet/veritran/component/view/VUIComponentUtils;
.super Ljava/lang/Object;
.source "VUIComponentUtils.java"


# static fields
.field private static final NO_COLOR:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFixedNinePatch(Landroid/graphics/Bitmap;IIIIIIIILjava/lang/String;)Landroid/graphics/NinePatch;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I
    .param p5, "paddingLeft"    # I
    .param p6, "paddingRight"    # I
    .param p7, "paddingTop"    # I
    .param p8, "paddingBottom"    # I
    .param p9, "srcName"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 28
    .local v1, "xAxis":[I
    const/4 v3, 0x0

    aput p2, v1, v3

    .line 29
    const/4 v3, 0x1

    aput p4, v1, v3

    .line 30
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 31
    .local v2, "yAxis":[I
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 32
    const/4 v3, 0x1

    aput p3, v2, v3

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 33
    invoke-static/range {v1 .. v6}, Lnet/veritran/component/view/VUIComponentUtils;->getByteBufferFixed([I[IIIII)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 35
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    new-instance v8, Landroid/graphics/NinePatch;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object/from16 v0, p9

    invoke-direct {v8, p0, v3, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 36
    .local v8, "patch":Landroid/graphics/NinePatch;
    return-object v8
.end method

.method public static createFixedNinePatch(Landroid/graphics/Bitmap;[I[IIIIILjava/lang/String;)Landroid/graphics/NinePatch;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "xAxis"    # [I
    .param p2, "yAxis"    # [I
    .param p3, "paddingLeft"    # I
    .param p4, "paddingRight"    # I
    .param p5, "paddingTop"    # I
    .param p6, "paddingBottom"    # I
    .param p7, "srcName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static/range {p1 .. p6}, Lnet/veritran/component/view/VUIComponentUtils;->getByteBufferFixed([I[IIIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, p0, v2, p7}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 45
    .local v1, "patch":Landroid/graphics/NinePatch;
    return-object v1
.end method

.method private static getByteBufferFixed([I[IIIII)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "xAxis"    # [I
    .param p1, "yAxis"    # [I
    .param p2, "paddingLeft"    # I
    .param p3, "paddingRight"    # I
    .param p4, "paddingTop"    # I
    .param p5, "paddingBottom"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x20

    array-length v3, p0

    add-int/lit8 v3, v3, 0x1

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 52
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 56
    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 58
    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 76
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 79
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_1
    const/4 v1, 0x0

    :goto_2
    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 82
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :cond_2
    return-object v0
.end method

.method public static getMeasureSpecModeAsString(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    const-string v0, "UNSPECIFIED"

    .line 20
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    .line 16
    const-string v0, "AT_MOST"

    goto :goto_0

    .line 17
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_2

    .line 18
    const-string v0, "EXACTLY"

    goto :goto_0

    .line 20
    :cond_2
    const-string v0, "OTHER"

    goto :goto_0
.end method
