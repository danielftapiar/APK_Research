.class public Lnet/veritran/android/implementation/AndroidUILibraryImplementation;
.super Ljava/lang/Object;
.source "AndroidUILibraryImplementation.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/ui/UILibraryInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidUILibraryImplementation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildImageFromArray([B)Lnet/veritran/vtuserapplication/ui/VTImageInterface;
    .locals 1
    .param p1, "arr"    # [B

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public buildVTVImage()Lnet/veritran/vtuserapplication/ui/components/VTVImageInterface;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lnet/veritran/android/implementation/AndroidVTVImageImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/AndroidVTVImageImplementation;-><init>()V

    return-object v0
.end method

.method public generateCardImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;F)V
    .locals 32
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "dueDate"    # Ljava/lang/String;
    .param p3, "secCode"    # Ljava/lang/String;
    .param p4, "owner"    # Ljava/lang/String;
    .param p5, "imageId"    # I
    .param p6, "fontColor"    # Ljava/lang/String;
    .param p7, "percentNameLength"    # F

    .prologue
    .line 42
    invoke-static {}, Lnet/veritran/vtuserapplication/states/VTCardImageGenerator;->resolveTemplate()Ljava/lang/String;

    move-result-object v20

    .line 43
    .local v20, "templateId":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/veritran/utils/ImageHandler;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 45
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    const-string v29, "AndroidUILibraryImplementation"

    const-string v30, "mutating"

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    const/16 v30, 0x46

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 47
    const-string v29, "AndroidUILibraryImplementation"

    const-string v30, "mutated"

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 49
    .local v10, "imageW":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 50
    .local v9, "imageH":I
    const-string v29, "AndroidUILibraryImplementation"

    const-string v30, "getting bitmap"

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 53
    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 54
    move-object v12, v5

    .line 62
    .local v12, "mutableBitmap":Landroid/graphics/Bitmap;
    :goto_0
    const-string v29, "AndroidUILibraryImplementation"

    const-string v30, "getting canvas"

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    .local v6, "canvas":Landroid/graphics/Canvas;
    const-string v29, "AndroidUILibraryImplementation"

    const-string v30, "beginpaint"

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .local v14, "paint":Landroid/graphics/Paint;
    if-eqz p6, :cond_1

    const-string v29, ""

    move-object/from16 v0, p6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 69
    :try_start_0
    invoke-static/range {p6 .. p6}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    const v15, 0x3e0f5c29    # 0.14f

    .line 82
    .local v15, "sizePercentHeightBigLetter":F
    const v16, 0x3dcccccd    # 0.1f

    .line 84
    .local v16, "sizePercentHeightSmallLetter":F
    int-to-float v0, v9

    move/from16 v29, v0

    mul-float v17, v15, v29

    .line 85
    .local v17, "sizePixelsBigLetter":F
    int-to-float v0, v9

    move/from16 v29, v0

    mul-float v18, v16, v29

    .line 90
    .local v18, "sizePixelsSmallLetter":F
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v6, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    int-to-float v0, v10

    move/from16 v29, v0

    const v30, 0x3d4ccccd    # 0.05f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v23, v0

    .line 99
    .local v23, "xNumber":I
    div-int/lit8 v27, v9, 0x2

    .line 100
    .local v27, "yNumber":I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    div-int/lit8 v29, v10, 0x7

    sub-int v24, v10, v29

    .line 105
    .local v24, "xSecCode":I
    mul-int/lit8 v29, v9, 0x9

    div-int/lit8 v28, v29, 0xd

    .line 106
    .local v28, "ySecCode":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    int-to-float v0, v10

    move/from16 v29, v0

    const v30, 0x3d4ccccd    # 0.05f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v22, v0

    .line 109
    .local v22, "xName":I
    div-int/lit8 v29, v9, 0xf

    sub-int v26, v9, v29

    .line 111
    .local v26, "yName":I
    mul-int/lit8 v29, v22, 0x2

    sub-int v29, v10, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x42c80000    # 100.0f

    div-float v30, p7, v30

    mul-float v13, v29, v30

    .line 113
    .local v13, "nameMaxSize":F
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 115
    .local v11, "measuredText":F
    :goto_2
    cmpl-float v29, v11, v13

    if-lez v29, :cond_2

    .line 116
    const/16 v29, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, p4

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 117
    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    goto :goto_2

    .line 57
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "measuredText":F
    .end local v12    # "mutableBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "nameMaxSize":F
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "sizePercentHeightBigLetter":F
    .end local v16    # "sizePercentHeightSmallLetter":F
    .end local v17    # "sizePixelsBigLetter":F
    .end local v18    # "sizePixelsSmallLetter":F
    .end local v22    # "xName":I
    .end local v23    # "xNumber":I
    .end local v24    # "xSecCode":I
    .end local v26    # "yName":I
    .end local v27    # "yNumber":I
    .end local v28    # "ySecCode":I
    :cond_0
    sget-object v29, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v29

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "mutableBitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 70
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    .restart local v14    # "paint":Landroid/graphics/Paint;
    :catch_0
    move-exception v8

    .line 73
    .local v8, "ex":Ljava/lang/Exception;
    const-string v29, "#FFFFFF"

    invoke-static/range {v29 .. v29}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 77
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v29, "#FFFFFF"

    invoke-static/range {v29 .. v29}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 120
    .restart local v11    # "measuredText":F
    .restart local v13    # "nameMaxSize":F
    .restart local v15    # "sizePercentHeightBigLetter":F
    .restart local v16    # "sizePercentHeightSmallLetter":F
    .restart local v17    # "sizePixelsBigLetter":F
    .restart local v18    # "sizePixelsSmallLetter":F
    .restart local v22    # "xName":I
    .restart local v23    # "xNumber":I
    .restart local v24    # "xSecCode":I
    .restart local v26    # "yName":I
    .restart local v27    # "yNumber":I
    .restart local v28    # "ySecCode":I
    :cond_2
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p4

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    int-to-float v0, v10

    move/from16 v29, v0

    const v30, 0x3d4ccccd    # 0.05f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v21, v0

    .line 123
    .local v21, "xDueDate":I
    mul-int/lit8 v29, v9, 0x9

    div-int/lit8 v25, v29, 0xd

    .line 124
    .local v25, "yDueDate":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 128
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_L"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Lnet/veritran/utils/ImageHandler;->putSessionImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 131
    const-string v29, "AndroidUILibraryImplementation"

    const-string v30, "rotating"

    invoke-static/range {v29 .. v30}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    sget-object v31, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v29 .. v31}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 138
    .local v4, "bmResult":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 145
    .local v19, "tempCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    const/high16 v29, 0x42b40000    # 90.0f

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 148
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 150
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v29

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "_P"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lnet/veritran/utils/ImageHandler;->putSessionImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 152
    return-void
.end method

.method public getDefaultImage()[B
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
