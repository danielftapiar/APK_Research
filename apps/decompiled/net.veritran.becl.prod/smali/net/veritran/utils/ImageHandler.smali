.class public Lnet/veritran/utils/ImageHandler;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;,
        Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;,
        Lnet/veritran/utils/ImageHandler$DownloadImageAsync;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageHandler"

.field private static cache:Lnet/veritran/utils/LruCacheBitmap;

.field private static final currentDeviceCapability:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

.field private static persistentImages:Lnet/veritran/utils/PersistentImageHandler;

.field private static sessionImages:Lnet/veritran/utils/SessionImageHandler;


# instance fields
.field svgIdRendering:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    sput-object v0, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    .line 138
    sput-object v0, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    .line 140
    sput-object v0, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    .line 162
    invoke-static {}, Lnet/veritran/utils/ImageHandler;->getCurrentDeviceCapability()Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    move-result-object v0

    sput-object v0, Lnet/veritran/utils/ImageHandler;->currentDeviceCapability:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/veritran/utils/ImageHandler;->svgIdRendering:Ljava/lang/String;

    .line 165
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-int v1, v4

    .line 167
    .local v1, "maxMemory":I
    const v2, 0x3e4ccccd    # 0.2f

    .line 169
    .local v2, "multiplier":F
    sget-object v3, Lnet/veritran/utils/ImageHandler$1;->$SwitchMap$net$veritran$utils$ImageHandler$DeviceHardwareCapability:[I

    sget-object v4, Lnet/veritran/utils/ImageHandler;->currentDeviceCapability:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    invoke-virtual {v4}, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 183
    :goto_0
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v0, v3

    .line 184
    .local v0, "cacheSize":I
    new-instance v3, Lnet/veritran/utils/LruCacheBitmap;

    invoke-direct {v3, v0}, Lnet/veritran/utils/LruCacheBitmap;-><init>(I)V

    sput-object v3, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    .line 185
    new-instance v3, Lnet/veritran/utils/SessionImageHandler;

    invoke-direct {v3}, Lnet/veritran/utils/SessionImageHandler;-><init>()V

    sput-object v3, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    .line 186
    new-instance v3, Lnet/veritran/utils/PersistentImageHandler;

    invoke-direct {v3}, Lnet/veritran/utils/PersistentImageHandler;-><init>()V

    sput-object v3, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    .line 187
    return-void

    .line 171
    .end local v0    # "cacheSize":I
    :pswitch_0
    const v2, 0x3e4ccccd    # 0.2f

    .line 172
    goto :goto_0

    .line 175
    :pswitch_1
    const v2, 0x3e19999a    # 0.15f

    .line 176
    goto :goto_0

    .line 179
    :pswitch_2
    const v2, 0x3e19999a    # 0.15f

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000()Lnet/veritran/utils/SessionImageHandler;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 192
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 193
    .local v0, "height":I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 194
    .local v3, "width":I
    const/4 v2, 0x1

    .line 196
    .local v2, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v3, p1, :cond_1

    .line 199
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 200
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 203
    .local v4, "widthRatio":I
    const-string v5, "ImageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HeightRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v5, "ImageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WidthRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 211
    :goto_0
    const-string v5, "ImageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InSampleSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 209
    goto :goto_0
.end method

.method private getBitmapForSVG(Ljava/lang/String;Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "svgFileName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .prologue
    .line 356
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 358
    .local v7, "fis":Ljava/io/FileInputStream;
    new-instance v16, Ljava/lang/StringBuffer;

    const-string v18, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 360
    .local v16, "svgText":Ljava/lang/StringBuffer;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 363
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v7, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "n":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_0

    .line 365
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v8}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 425
    .end local v4    # "buffer":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "n":I
    .end local v16    # "svgText":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    .line 426
    .local v6, "e":Lcom/caverock/androidsvg/SVGParseException;
    const-string v18, "ImageHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error parseando archivo SVG: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v3, 0x0

    .line 433
    .end local v6    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :goto_1
    return-object v3

    .line 368
    .restart local v4    # "buffer":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "n":I
    .restart local v16    # "svgText":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 370
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "svgResult":Ljava/lang/String;
    invoke-static {v14}, Lcom/caverock/androidsvg/SVG;->getFromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v12

    .line 374
    .local v12, "svg":Lcom/caverock/androidsvg/SVG;
    new-instance v18, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;-><init>(Lnet/veritran/utils/ImageHandler;Lnet/veritran/utils/ImageHandler$1;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG;->registerExternalFileResolver(Lcom/caverock/androidsvg/SVGExternalFileResolver;)V

    .line 375
    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVG;->getDocumentWidth()F

    move-result v17

    .line 376
    .local v17, "svgWidth":F
    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVG;->getDocumentHeight()F

    move-result v13

    .line 380
    .local v13, "svgHeight":F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [I

    const/16 v18, 0x0

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVG;->getDocumentWidth()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v15, v18

    const/16 v18, 0x1

    invoke-virtual {v12}, Lcom/caverock/androidsvg/SVG;->getDocumentHeight()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v15, v18

    .line 382
    .local v15, "svgSize":[I
    sget-object v18, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lnet/veritran/utils/SessionImageHandler;->setSvgSize(Ljava/lang/String;[I)[I

    .line 394
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v10, v18, v17

    .line 395
    .local v10, "scaleX":F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v11, v18, v13

    .line 397
    .local v11, "scaleY":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 399
    .local v9, "scale":F
    const/16 v18, 0x0

    cmpl-float v18, v10, v18

    if-lez v18, :cond_3

    const/16 v18, 0x0

    cmpl-float v18, v11, v18

    if-lez v18, :cond_3

    .line 401
    cmpg-float v18, v10, v11

    if-gez v18, :cond_2

    move v9, v10

    .line 413
    :cond_1
    :goto_2
    mul-float v18, v17, v9

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    mul-float v19, v13, v9

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 414
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 416
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 418
    invoke-virtual {v12, v5}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 428
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "buffer":[B
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "n":I
    .end local v9    # "scale":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v12    # "svg":Lcom/caverock/androidsvg/SVG;
    .end local v13    # "svgHeight":F
    .end local v14    # "svgResult":Ljava/lang/String;
    .end local v15    # "svgSize":[I
    .end local v16    # "svgText":Ljava/lang/StringBuffer;
    .end local v17    # "svgWidth":F
    :catch_1
    move-exception v6

    .line 429
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v18, "ImageHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error abriendo archivo SVG: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v3, 0x0

    goto/16 :goto_1

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "buffer":[B
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "n":I
    .restart local v9    # "scale":F
    .restart local v10    # "scaleX":F
    .restart local v11    # "scaleY":F
    .restart local v12    # "svg":Lcom/caverock/androidsvg/SVG;
    .restart local v13    # "svgHeight":F
    .restart local v14    # "svgResult":Ljava/lang/String;
    .restart local v15    # "svgSize":[I
    .restart local v16    # "svgText":Ljava/lang/StringBuffer;
    .restart local v17    # "svgWidth":F
    :cond_2
    move v9, v11

    .line 401
    goto :goto_2

    .line 403
    :cond_3
    const/16 v18, 0x0

    cmpl-float v18, v10, v18

    if-lez v18, :cond_4

    .line 405
    move v9, v10

    goto :goto_2

    .line 407
    :cond_4
    const/16 v18, 0x0

    cmpl-float v18, v11, v18

    if-lez v18, :cond_1

    .line 409
    move v9, v11

    goto :goto_2

    .line 431
    .end local v4    # "buffer":[B
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "n":I
    .end local v9    # "scale":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v12    # "svg":Lcom/caverock/androidsvg/SVG;
    .end local v13    # "svgHeight":F
    .end local v14    # "svgResult":Ljava/lang/String;
    .end local v15    # "svgSize":[I
    .end local v16    # "svgText":Ljava/lang/StringBuffer;
    .end local v17    # "svgWidth":F
    :catch_2
    move-exception v6

    .line 432
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "ImageHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error abriendo archivo SVG error generico: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private getBitmapSizeForSVG(Ljava/lang/String;)[I
    .locals 6
    .param p1, "svgFileName"    # Ljava/lang/String;

    .prologue
    .line 339
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 340
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2

    .line 342
    .local v2, "svg":Lcom/caverock/androidsvg/SVG;
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getDocumentWidth()F

    move-result v5

    float-to-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->getDocumentHeight()F

    move-result v5

    float-to-int v5, v5

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "svg":Lcom/caverock/androidsvg/SVG;
    :goto_0
    return-object v3

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "ImageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error abriendo archivo SVG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Lcom/caverock/androidsvg/SVGParseException;
    const-string v3, "ImageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parseando archivo SVG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getCurrentDeviceCapability()Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;
    .locals 2

    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .local v0, "currentapiVersion":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 156
    sget-object v1, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->HIGH:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    .line 159
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->MEDIUM:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    goto :goto_0
.end method


# virtual methods
.method public cleanCachedAndSessionImages()V
    .locals 1

    .prologue
    .line 852
    sget-object v0, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v0}, Lnet/veritran/utils/SessionImageHandler;->cleanAll()V

    .line 853
    sget-object v0, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v0}, Lnet/veritran/utils/LruCacheBitmap;->clear()V

    .line 854
    return-void
.end method

.method public cleanPersistentImages()V
    .locals 1

    .prologue
    .line 858
    sget-object v0, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v0}, Lnet/veritran/utils/PersistentImageHandler;->cleanAll()V

    .line 859
    return-void
.end method

.method public getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForExactSize(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "keepAspect"    # Z

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 315
    const/4 v5, 0x0

    .line 333
    :goto_0
    return-object v5

    .line 318
    :cond_0
    move v1, p3

    .line 319
    .local v1, "calculatedHeight":I
    move v2, p2

    .line 321
    .local v2, "calculatedWidth":I
    if-eqz p4, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 324
    .local v4, "imageScale":F
    int-to-float v5, p2

    int-to-float v6, p3

    div-float v3, v5, v6

    .line 326
    .local v3, "currentScale":F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    .line 327
    int-to-float v5, p3

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 333
    .end local v3    # "currentScale":F
    .end local v4    # "imageScale":F
    :cond_1
    :goto_1
    const/4 v5, 0x1

    invoke-static {v0, v2, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 329
    .restart local v3    # "currentScale":F
    .restart local v4    # "imageScale":F
    :cond_2
    int-to-float v5, p2

    div-float/2addr v5, v4

    float-to-int v1, v5

    goto :goto_1
.end method

.method public getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    .prologue
    .line 450
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapForSize("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") without format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-static/range {p1 .. p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "id":Ljava/lang/String;
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapForSize("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget-object v2, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v2, v4}, Lnet/veritran/utils/LruCacheBitmap;->containsBitmap(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    sget-object v2, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v2, v4}, Lnet/veritran/utils/LruCacheBitmap;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 623
    :goto_0
    return-object v8

    .line 460
    :cond_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 461
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 463
    sget-object v2, Lnet/veritran/utils/ImageHandler$1;->$SwitchMap$net$veritran$utils$ImageHandler$DeviceHardwareCapability:[I

    sget-object v5, Lnet/veritran/utils/ImageHandler;->currentDeviceCapability:Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;

    invoke-virtual {v5}, Lnet/veritran/utils/ImageHandler$DeviceHardwareCapability;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    .line 479
    :goto_1
    :pswitch_0
    sget-object v2, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v2, v4}, Lnet/veritran/utils/SessionImageHandler;->getSvgFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "svgFileName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 483
    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/veritran/utils/ImageHandler;->svgIdRendering:Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 484
    invoke-direct/range {v2 .. v7}, Lnet/veritran/utils/ImageHandler;->getBitmapForSVG(Ljava/lang/String;Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 468
    .end local v3    # "svgFileName":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 471
    :pswitch_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 472
    div-int/lit8 p2, p2, 0x2

    .line 473
    div-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 488
    .restart local v3    # "svgFileName":Ljava/lang/String;
    :cond_1
    sget-object v2, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v2, v4}, Lnet/veritran/utils/SessionImageHandler;->getImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 490
    .local v12, "fileCachedName":Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    :cond_2
    sget-object v2, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v2, v4}, Lnet/veritran/utils/PersistentImageHandler;->getPersistentImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 494
    :cond_3
    if-eqz v12, :cond_5

    .line 495
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmapForSize("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") already in session"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {v12, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 498
    const/4 v14, 0x1

    .line 500
    .local v14, "inSampleSize":I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_4

    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_4

    .line 502
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v15, v0, v1}, Lnet/veritran/utils/ImageHandler;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v14

    .line 509
    :cond_4
    :goto_2
    :try_start_0
    iput v14, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 513
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inSampleSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v2, 0x0

    iput-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 517
    invoke-static {v12, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 519
    .local v8, "b":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    .line 520
    sget-object v2, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v2, v4, v8}, Lnet/veritran/utils/LruCacheBitmap;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 525
    .end local v8    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 526
    .local v11, "ex":Ljava/lang/OutOfMemoryError;
    mul-int/lit8 v14, v14, 0x2

    .line 527
    goto :goto_2

    .line 593
    .end local v11    # "ex":Ljava/lang/OutOfMemoryError;
    .end local v14    # "inSampleSize":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/veritran/utils/ImageHandler;->getPredefinedImage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 594
    .local v13, "imageRes":Ljava/lang/Integer;
    if-eqz v13, :cond_6

    .line 595
    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 596
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 597
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v15, v0, v1}, Lnet/veritran/utils/ImageHandler;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v14

    .line 598
    .restart local v14    # "inSampleSize":I
    iput v14, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 599
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inSampleSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 602
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 603
    .restart local v8    # "b":Landroid/graphics/Bitmap;
    sget-object v2, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v2, v4, v8}, Lnet/veritran/utils/LruCacheBitmap;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 605
    .end local v8    # "b":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v9

    .line 606
    .local v9, "ee":Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMAGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OutOfMemoryError:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 610
    :goto_3
    mul-int/lit8 v14, v14, 0x2

    .line 611
    :try_start_2
    iput v14, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 612
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inSampleSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 614
    .restart local v8    # "b":Landroid/graphics/Bitmap;
    sget-object v2, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v2, v4, v8}, Lnet/veritran/utils/LruCacheBitmap;->addBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 616
    .end local v8    # "b":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v10

    .line 617
    .local v10, "ee2":Ljava/lang/OutOfMemoryError;
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMAGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OutOfMemoryError2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 622
    .end local v9    # "ee":Ljava/lang/OutOfMemoryError;
    .end local v10    # "ee2":Ljava/lang/OutOfMemoryError;
    .end local v14    # "inSampleSize":I
    :cond_6
    const-string v2, "ImageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMAGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBitmapSize(Ljava/lang/String;)[I
    .locals 14
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 218
    const-string v8, "ImageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmapSize("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") without format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "id":Ljava/lang/String;
    sget-object v8, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/LruCacheBitmap;->containsBitmap(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 223
    sget-object v8, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/LruCacheBitmap;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, "b":Landroid/graphics/Bitmap;
    new-array v8, v13, [I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    aput v9, v8, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    aput v9, v8, v11

    .line 300
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 228
    :cond_0
    sget-object v8, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/SessionImageHandler;->getSvgFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "svgFilename":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 231
    sget-object v8, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/SessionImageHandler;->getSvgSize(Ljava/lang/String;)[I

    move-result-object v8

    if-nez v8, :cond_1

    .line 233
    sget-object v8, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-direct {p0, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapSizeForSVG(Ljava/lang/String;)[I

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lnet/veritran/utils/SessionImageHandler;->setSvgSize(Ljava/lang/String;[I)[I

    .line 236
    :cond_1
    sget-object v8, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/SessionImageHandler;->getSvgSize(Ljava/lang/String;)[I

    move-result-object v8

    goto :goto_0

    .line 239
    :cond_2
    const-string v8, "ImageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmapSize("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 243
    sget-object v8, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/SessionImageHandler;->getImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "fileCachedName":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 246
    :cond_3
    sget-object v8, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v8, v3}, Lnet/veritran/utils/PersistentImageHandler;->getPersistentImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_4
    if-eqz v1, :cond_5

    .line 250
    const-string v8, "ImageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmapSize("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") already in session"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 256
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ltz v8, :cond_5

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ltz v8, :cond_5

    .line 258
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 259
    .local v7, "w":I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 261
    .local v2, "h":I
    new-array v8, v13, [I

    aput v7, v8, v12

    aput v2, v8, v11

    goto/16 :goto_0

    .line 294
    .end local v2    # "h":I
    .end local v7    # "w":I
    :cond_5
    invoke-virtual {p0, v3}, Lnet/veritran/utils/ImageHandler;->getPredefinedImage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 295
    .local v4, "imageRes":Ljava/lang/Integer;
    if-eqz v4, :cond_6

    .line 296
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 297
    new-array v8, v13, [I

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v9, v8, v12

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v9, v8, v11

    goto/16 :goto_0

    .line 299
    :cond_6
    const-string v8, "ImageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmapSize("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") IS NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 13
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 934
    .local v5, "id":Ljava/lang/String;
    sget-object v10, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v10, v5}, Lnet/veritran/utils/SessionImageHandler;->getImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 936
    .local v4, "fileCachedName":Ljava/lang/String;
    const-string v10, "ImageHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File Animated Gif ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    if-eqz v4, :cond_0

    .line 940
    const-string v10, "ImageHandler"

    const-string v11, "File Animated Gif not null"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 v6, 0x0

    .line 942
    .local v6, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 945
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    const/16 v10, 0x400

    :try_start_1
    new-array v1, v10, [B

    .line 949
    .local v1, "data":[B
    :goto_0
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v7, v1, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .local v8, "nRead":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    .line 950
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 956
    .end local v1    # "data":[B
    .end local v8    # "nRead":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 957
    .end local v7    # "is":Ljava/io/InputStream;
    .local v3, "e1":Ljava/io/FileNotFoundException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string v10, "ImageHandler"

    const-string v11, "File Animated Gif Ex1"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 972
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 974
    if-eqz v6, :cond_0

    .line 976
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f

    .line 986
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_2
    invoke-virtual {p0, v5}, Lnet/veritran/utils/ImageHandler;->getPredefinedImage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 988
    .local v9, "resId":Ljava/lang/Integer;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_5

    .line 990
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v10

    invoke-virtual {v10}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 992
    .restart local v6    # "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 997
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    :try_start_4
    new-array v1, v10, [B

    .line 998
    .restart local v1    # "data":[B
    :goto_3
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v6, v1, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .restart local v8    # "nRead":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_4

    .line 999
    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 1005
    .end local v1    # "data":[B
    .end local v8    # "nRead":I
    :catch_1
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 1017
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1018
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 1025
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "resId":Ljava/lang/Integer;
    :cond_1
    :goto_4
    return-object v10

    .line 953
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "nRead":I
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 954
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v10

    .line 972
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 974
    if-eqz v7, :cond_1

    .line 976
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 978
    :catch_2
    move-exception v11

    goto :goto_4

    .line 959
    .end local v1    # "data":[B
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "nRead":I
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 961
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v10, "ImageHandler"

    const-string v11, "File Animated Gif Ex2"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 962
    const/4 v10, 0x0

    .line 972
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 974
    if-eqz v6, :cond_1

    .line 976
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 978
    :catch_4
    move-exception v11

    goto :goto_4

    .line 964
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 966
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_a
    const-string v10, "ImageHandler"

    const-string v11, "File Animated Gif Ex3"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 967
    const/4 v10, 0x0

    .line 972
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 974
    if-eqz v6, :cond_1

    .line 976
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_4

    .line 978
    :catch_6
    move-exception v11

    goto :goto_4

    .line 971
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v10

    .line 972
    :goto_7
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 974
    if-eqz v6, :cond_3

    .line 976
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 980
    :cond_3
    :goto_8
    throw v10

    .line 1002
    .restart local v1    # "data":[B
    .restart local v8    # "nRead":I
    .restart local v9    # "resId":Ljava/lang/Integer;
    :cond_4
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1003
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v10

    .line 1017
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1018
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_4

    .line 1019
    :catch_7
    move-exception v11

    goto :goto_4

    .line 1009
    .end local v1    # "data":[B
    .end local v8    # "nRead":I
    :catch_8
    move-exception v2

    .line 1011
    .restart local v2    # "e":Ljava/lang/OutOfMemoryError;
    const/4 v10, 0x0

    .line 1017
    :try_start_f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1018
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_4

    .line 1019
    :catch_9
    move-exception v11

    goto :goto_4

    .line 1015
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v10

    .line 1017
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1018
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 1021
    :goto_9
    throw v10

    .line 1025
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 1019
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v11

    goto :goto_9

    .local v2, "e":Ljava/io/IOException;
    :catch_b
    move-exception v11

    goto :goto_4

    .line 978
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "resId":Ljava/lang/Integer;
    :catch_c
    move-exception v11

    goto :goto_8

    .line 971
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 964
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_d
    move-exception v2

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 959
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_e
    move-exception v2

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 978
    .restart local v3    # "e1":Ljava/io/FileNotFoundException;
    :catch_f
    move-exception v10

    goto/16 :goto_2

    .line 956
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    :catch_10
    move-exception v3

    goto/16 :goto_1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 629
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDrawable("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") DEPRECATED, SHOULD NOT BE USED ANYMORE"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDrawable("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") without format"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static/range {p1 .. p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, "id":Ljava/lang/String;
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDrawable("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v13, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v13, v8}, Lnet/veritran/utils/SessionImageHandler;->getImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 640
    .local v7, "fileCachedName":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 641
    :cond_0
    sget-object v13, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v13, v8}, Lnet/veritran/utils/PersistentImageHandler;->getPersistentImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 644
    :cond_1
    if-eqz v7, :cond_2

    .line 645
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDrawable("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") already in session"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 649
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 655
    :goto_0
    :try_start_0
    invoke-static {v7, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 657
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 658
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 659
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v3, v13, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v3

    .line 664
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v12

    .line 665
    .local v12, "outOfMemory":Ljava/lang/OutOfMemoryError;
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v13, v13, 0x2

    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 670
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "outOfMemory":Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_1
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    iget-object v13, v13, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v13, v8}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getResourceResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResource;

    invoke-virtual {v13}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResource;->getBase64data()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 671
    .local v2, "data":[B
    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 673
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDrawable("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") stored in session"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v3, v13, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 675
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 676
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "data":[B
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    .line 677
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "ImageHandler"

    const-string v14, "Catched exception empty (fortify)"

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lnet/veritran/utils/ImageHandler;->getPredefinedImage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 685
    .local v9, "imageRes":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    .line 686
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 687
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 688
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 689
    const/16 v13, 0x3e8

    const/16 v14, 0x3e8

    invoke-static {v11, v13, v14}, Lnet/veritran/utils/ImageHandler;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    .line 690
    .local v10, "inSampleSize":I
    iput v10, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 691
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inSampleSize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 694
    const/4 v1, 0x0

    .line 697
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .line 708
    :goto_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTAbstractActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v3, v13, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 710
    .restart local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 679
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "imageRes":Ljava/lang/Integer;
    .end local v10    # "inSampleSize":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v4

    .line 680
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 681
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    .line 698
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "imageRes":Ljava/lang/Integer;
    .restart local v10    # "inSampleSize":I
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v5

    .line 699
    .local v5, "ee":Ljava/lang/OutOfMemoryError;
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMAGE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " OutOfMemoryError:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 702
    mul-int/lit8 v13, v10, 0x2

    :try_start_3
    iput v13, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 703
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v13

    invoke-virtual {v13}, Lnet/veritran/VTUserApplicationSmart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v13, v14, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    goto :goto_3

    .line 704
    :catch_4
    move-exception v6

    .line 705
    .local v6, "ee2":Ljava/lang/OutOfMemoryError;
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMAGE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " OutOfMemoryError2:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 712
    .end local v1    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "ee":Ljava/lang/OutOfMemoryError;
    .end local v6    # "ee2":Ljava/lang/OutOfMemoryError;
    .end local v10    # "inSampleSize":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    const-string v13, "ImageHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMAGE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IS NULL"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public getPredefinedImage(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 719
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 722
    :goto_0
    return-object v1

    .line 720
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "img_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "res":Ljava/lang/String;
    const-string v1, "GETPREDEFINEDIMAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPredefinedImage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getDrawableResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public initializeSavedSVGImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 878
    sget-object v0, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/utils/SessionImageHandler;->initializeSavedSVGImage(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public initializeSavedSessionImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 863
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v1, p1}, Lnet/veritran/utils/SessionImageHandler;->initializeSavedSessionImage(Ljava/lang/String;)V

    .line 867
    sget-object v1, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    if-eqz v1, :cond_0

    .line 869
    sget-object v1, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v1, v0}, Lnet/veritran/utils/LruCacheBitmap;->removeBitmap(Ljava/lang/String;)V

    .line 871
    :cond_0
    return-void
.end method

.method public isImageSVG(Ljava/lang/String;)Z
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 443
    sget-object v1, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v1, p1}, Lnet/veritran/utils/SessionImageHandler;->getSvgFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "svgFileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public preLoadImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "expiration"    # Ljava/lang/String;

    .prologue
    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/veritran/utils/ImageHandler;->preLoadImage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 759
    return-void
.end method

.method public preLoadImage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "expiration"    # Ljava/lang/String;
    .param p3, "forceDownload"    # Z

    .prologue
    .line 762
    const-string v9, "Error"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preLoadSessionImage"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 765
    .local v5, "imageUrl":Ljava/lang/String;
    if-eqz p2, :cond_6

    const-string v9, ""

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "session"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 767
    .local v7, "persistent":Ljava/lang/Boolean;
    if-nez p3, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/veritran/utils/SessionImageHandler;->containsImage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 768
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lnet/veritran/utils/PersistentImageHandler;->containsImage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_5

    .line 770
    :cond_1
    const/4 v6, 0x0

    .line 771
    .local v6, "in":Ljava/io/InputStream;
    invoke-static {v5}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, "idImg":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 774
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 775
    .local v1, "c":Ljava/net/URLConnection;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 776
    const v9, 0xea60

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 777
    const v9, 0xea60

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 779
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 784
    const-string v9, "ImageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "putImage InputStream() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 787
    sget-object v9, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v9, v4, v6, p2}, Lnet/veritran/utils/PersistentImageHandler;->putImage(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 789
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3

    .line 790
    sget-object v9, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v9, v4, v6}, Lnet/veritran/utils/SessionImageHandler;->putImage(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 792
    :cond_3
    sget-object v9, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    if-eqz v9, :cond_4

    .line 794
    sget-object v9, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v9, v4}, Lnet/veritran/utils/LruCacheBitmap;->removeBitmap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    :cond_4
    if-eqz v6, :cond_5

    .line 824
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 832
    .end local v1    # "c":Ljava/net/URLConnection;
    .end local v4    # "idImg":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "url":Ljava/net/URL;
    :cond_5
    :goto_1
    return-void

    .line 765
    .end local v7    # "persistent":Ljava/lang/Boolean;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 825
    .restart local v1    # "c":Ljava/net/URLConnection;
    .restart local v4    # "idImg":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "persistent":Ljava/lang/Boolean;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "ImageHandler"

    const-string v10, "Catched exception empty (fortify)"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 796
    .end local v1    # "c":Ljava/net/URLConnection;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 797
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error downloading image from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 799
    .local v3, "err":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 803
    :cond_7
    const-string v9, "Error"

    invoke-static {v9, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 807
    .local v0, "bmpPixelTransparent":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 808
    sget-object v9, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v9, v4, v0, p2}, Lnet/veritran/utils/PersistentImageHandler;->putImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    .line 810
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    .line 811
    sget-object v9, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v9, v4, v0}, Lnet/veritran/utils/SessionImageHandler;->putImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 814
    :cond_9
    sget-object v9, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    if-eqz v9, :cond_a

    .line 816
    sget-object v9, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v9, v4}, Lnet/veritran/utils/LruCacheBitmap;->removeBitmap(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    :cond_a
    if-eqz v6, :cond_5

    .line 824
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 825
    :catch_2
    move-exception v2

    .line 826
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "ImageHandler"

    const-string v10, "Catched exception empty (fortify)"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 821
    .end local v0    # "bmpPixelTransparent":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_b

    .line 824
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 828
    :cond_b
    :goto_2
    throw v9

    .line 825
    :catch_3
    move-exception v2

    .line 826
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "ImageHandler"

    const-string v11, "Catched exception empty (fortify)"

    invoke-static {v10, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public putPersistentImage(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/io/InputStream;
    .param p3, "expiration"    # Ljava/lang/String;

    .prologue
    .line 836
    sget-object v0, Lnet/veritran/utils/ImageHandler;->persistentImages:Lnet/veritran/utils/PersistentImageHandler;

    invoke-virtual {v0, p1, p2, p3}, Lnet/veritran/utils/PersistentImageHandler;->putImage(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 837
    sget-object v0, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v0, p1}, Lnet/veritran/utils/SessionImageHandler;->deleteIdImage(Ljava/lang/String;)Z

    .line 838
    sget-object v0, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    if-eqz v0, :cond_0

    .line 840
    sget-object v0, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v0, p1}, Lnet/veritran/utils/LruCacheBitmap;->removeBitmap(Ljava/lang/String;)V

    .line 843
    :cond_0
    return-void
.end method

.method public putPublicImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 924
    sget-object v0, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/utils/SessionImageHandler;->putPublicImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putSessionImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 913
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v1, v0, p2}, Lnet/veritran/utils/SessionImageHandler;->putImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 917
    sget-object v1, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    if-eqz v1, :cond_0

    .line 919
    sget-object v1, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v1, v0}, Lnet/veritran/utils/LruCacheBitmap;->removeBitmap(Ljava/lang/String;)V

    .line 921
    :cond_0
    return-void
.end method

.method public putSessionImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 899
    const-string v1, "ImageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSessionImageBase64 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v1, v0, p2}, Lnet/veritran/utils/SessionImageHandler;->putImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 905
    sget-object v1, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    if-eqz v1, :cond_0

    .line 907
    sget-object v1, Lnet/veritran/utils/ImageHandler;->cache:Lnet/veritran/utils/LruCacheBitmap;

    invoke-virtual {v1, v0}, Lnet/veritran/utils/LruCacheBitmap;->removeBitmap(Ljava/lang/String;)V

    .line 909
    :cond_0
    return-void
.end method

.method public putSvgImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 884
    const-string v1, "ImageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSvgImageBase64 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;

    invoke-virtual {v1, v0, p2}, Lnet/veritran/utils/SessionImageHandler;->putSvgImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 895
    return-void
.end method
