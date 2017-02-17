.class public final Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;
    }
.end annotation


# direct methods
.method public static computeImageSampleSize(Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .param p0, "srcSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p1, "targetSize"    # Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .param p2, "viewScaleType"    # Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .param p3, "powerOf2Scale"    # Z

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v3

    .line 113
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v2

    .line 114
    .local v2, "srcHeight":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 115
    .local v5, "targetWidth":I
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 117
    .local v4, "targetHeight":I
    const/4 v1, 0x1

    .line 119
    .local v1, "scale":I
    div-int v6, v3, v5

    .line 120
    .local v6, "widthScale":I
    div-int v0, v2, v4

    .line 122
    .local v0, "heightScale":I
    sget-object v7, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    if-gtz v1, :cond_1

    .line 148
    const/4 v1, 0x1

    .line 151
    :cond_1
    return v1

    .line 124
    :pswitch_0
    if-eqz p3, :cond_3

    .line 125
    :goto_1
    div-int/lit8 v7, v3, 0x2

    if-ge v7, v5, :cond_2

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_0

    .line 126
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 127
    div-int/lit8 v2, v2, 0x2

    .line 128
    mul-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_1
    if-eqz p3, :cond_4

    .line 136
    :goto_2
    div-int/lit8 v7, v3, 0x2

    if-lt v7, v5, :cond_0

    div-int/lit8 v7, v2, 0x2

    if-lt v7, v4, :cond_0

    .line 137
    div-int/lit8 v3, v3, 0x2

    .line 138
    div-int/lit8 v2, v2, 0x2

    .line 139
    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static defineTargetSizeForView(Landroid/widget/ImageView;II)Lcom/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 6
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "maxImageWidth"    # I
    .param p2, "maxImageHeight"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x2

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 54
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_8

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_8

    move v3, v1

    .line 55
    .local v3, "width":I
    :goto_0
    if-gtz v3, :cond_0

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    :cond_0
    if-gtz v3, :cond_1

    const-string v4, "mMaxWidth"

    invoke-static {p0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 57
    :cond_1
    if-gtz v3, :cond_2

    move v3, p1

    .line 58
    :cond_2
    if-gtz v3, :cond_3

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 60
    :cond_3
    if-eqz v2, :cond_9

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_9

    .line 61
    .local v1, "height":I
    :goto_1
    if-gtz v1, :cond_4

    if-eqz v2, :cond_4

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    :cond_4
    if-gtz v1, :cond_5

    const-string v4, "mMaxHeight"

    invoke-static {p0, v4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 63
    :cond_5
    if-gtz v1, :cond_6

    move v1, p2

    .line 64
    :cond_6
    if-gtz v1, :cond_7

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    :cond_7
    new-instance v4, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v4, v3, v1}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v4

    .line 54
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_0

    .line 60
    .restart local v3    # "width":I
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 72
    .local v3, "value":I
    :try_start_0
    const-class v4, Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 73
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    .local v2, "fieldValue":I
    if-lez v2, :cond_0

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_0

    .line 76
    move v3, v2

    .line 81
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldValue":I
    :cond_0
    :goto_0
    return v3

    .line 78
    :catch_0
    move-exception v4

    const/4 v0, 0x0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
