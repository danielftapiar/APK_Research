.class public final Lmin3d/parser/AParser$TextureAtlas;
.super Ljava/lang/Object;
.source "AParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmin3d/parser/AParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextureAtlas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmin3d/parser/AParser$TextureAtlas$BitmapHeightComparer;
    }
.end annotation


# instance fields
.field private atlas:Landroid/graphics/Bitmap;

.field private atlasId:Ljava/lang/String;

.field private bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/parser/AParser$BitmapAsset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmin3d/parser/AParser;


# direct methods
.method public constructor <init>(Lmin3d/parser/AParser;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lmin3d/parser/AParser$TextureAtlas;->this$0:Lmin3d/parser/AParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    .line 192
    return-void
.end method

.method private getBitmapAssetByResourceID(Ljava/lang/String;)Lmin3d/parser/AParser$BitmapAsset;
    .locals 3
    .param p1, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    .local v1, "numBitmaps":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 236
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 232
    :cond_0
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v2, v2, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/AParser$BitmapAsset;

    goto :goto_1

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final addBitmapAsset(Lmin3d/parser/AParser$BitmapAsset;)V
    .locals 6
    .param p1, "ba"    # Lmin3d/parser/AParser$BitmapAsset;

    .prologue
    const/4 v5, 0x0

    .line 201
    iget-object v3, p1, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    invoke-direct {p0, v3}, Lmin3d/parser/AParser$TextureAtlas;->getBitmapAssetByResourceID(Ljava/lang/String;)Lmin3d/parser/AParser$BitmapAsset;

    move-result-object v2

    .line 203
    .local v2, "existingBA":Lmin3d/parser/AParser$BitmapAsset;
    if-nez v2, :cond_1

    .line 205
    iget-object v3, p0, Lmin3d/parser/AParser$TextureAtlas;->this$0:Lmin3d/parser/AParser;

    iget-object v3, v3, Lmin3d/parser/AParser;->resources:Landroid/content/res/Resources;

    iget-object v4, p1, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "bmResourceID":I
    if-nez v1, :cond_0

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Texture not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .end local v1    # "bmResourceID":I
    :goto_0
    return-void

    .line 212
    .restart local v1    # "bmResourceID":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Adding texture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    invoke-static {}, Lmin3d/Shared;->context()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lmin3d/Utils;->makeBitmapFromResourceId(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    iput-boolean v3, p1, Lmin3d/parser/AParser$BitmapAsset;->useForAtlasDimensions:Z

    .line 216
    iput-object v0, p1, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 223
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bmResourceID":I
    :goto_1
    iget-object v3, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, v2, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public final cleanup()V
    .locals 3

    .prologue
    .line 367
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 369
    .local v1, "numBitmaps":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 373
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->atlas:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->atlas:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    :cond_0
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->this$0:Lmin3d/parser/AParser;

    iget-object v2, v2, Lmin3d/parser/AParser;->vertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->this$0:Lmin3d/parser/AParser;

    iget-object v2, v2, Lmin3d/parser/AParser;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->this$0:Lmin3d/parser/AParser;

    iget-object v2, v2, Lmin3d/parser/AParser;->normals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 378
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v2, v2, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final generate()V
    .locals 24

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    new-instance v6, Lmin3d/parser/AParser$TextureAtlas$BitmapHeightComparer;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lmin3d/parser/AParser$TextureAtlas$BitmapHeightComparer;-><init>(Lmin3d/parser/AParser$TextureAtlas;B)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 307
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmin3d/parser/AParser$BitmapAsset;

    .line 248
    .local v21, "largestBitmap":Lmin3d/parser/AParser$BitmapAsset;
    const/16 v23, 0x0

    .line 249
    .local v23, "totalWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 250
    .local v22, "numBitmaps":I
    const/4 v14, 0x0

    .line 251
    .local v14, "uOffset":I
    const/16 v20, 0x0

    .line 253
    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 258
    move-object/from16 v0, v21

    iget-object v4, v0, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 259
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 258
    move/from16 v0, v23

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->atlas:Landroid/graphics/Bitmap;

    .line 261
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 306
    invoke-static {}, Lmin3d/Shared;->textureManager()Lmin3d/core/TextureManager;

    invoke-static {}, Lmin3d/core/TextureManager;->getNewAtlasId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->atlasId:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmin3d/parser/AParser$BitmapAsset;

    iget-boolean v4, v4, Lmin3d/parser/AParser$BitmapAsset;->useForAtlasDimensions:Z

    if-eqz v4, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v4, v4, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int v23, v23, v4

    .line 253
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmin3d/parser/AParser$BitmapAsset;

    .line 263
    .local v18, "ba":Lmin3d/parser/AParser$BitmapAsset;
    move-object/from16 v0, v18

    iget-object v4, v0, Lmin3d/parser/AParser$BitmapAsset;->resourceID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmin3d/parser/AParser$TextureAtlas;->getBitmapAssetByResourceID(Ljava/lang/String;)Lmin3d/parser/AParser$BitmapAsset;

    move-result-object v19

    .line 265
    .local v19, "existingBA":Lmin3d/parser/AParser$BitmapAsset;
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lmin3d/parser/AParser$BitmapAsset;->useForAtlasDimensions:Z

    if-eqz v4, :cond_4

    .line 267
    move-object/from16 v0, v18

    iget-object v2, v0, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 268
    .local v2, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 269
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 270
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 272
    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 273
    move-object/from16 v0, p0

    iget-object v10, v0, Lmin3d/parser/AParser$TextureAtlas;->atlas:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 275
    int-to-float v4, v14

    move/from16 v0, v23

    int-to-float v6, v0

    div-float/2addr v4, v6

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->uOffset:F

    .line 276
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->vOffset:F

    .line 277
    int-to-float v4, v5

    move/from16 v0, v23

    int-to-float v6, v0

    div-float/2addr v4, v6

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->uScale:F

    .line 278
    int-to-float v4, v9

    move-object/from16 v0, v21

    iget-object v6, v0, Lmin3d/parser/AParser$BitmapAsset;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->vScale:F

    .line 280
    add-int/2addr v14, v5

    .line 281
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "pixels":[I
    .end local v5    # "w":I
    .end local v9    # "h":I
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 285
    :cond_4
    move-object/from16 v0, v19

    iget v4, v0, Lmin3d/parser/AParser$BitmapAsset;->uOffset:F

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->uOffset:F

    .line 286
    move-object/from16 v0, v19

    iget v4, v0, Lmin3d/parser/AParser$BitmapAsset;->vOffset:F

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->vOffset:F

    .line 287
    move-object/from16 v0, v19

    iget v4, v0, Lmin3d/parser/AParser$BitmapAsset;->uScale:F

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->uScale:F

    .line 288
    move-object/from16 v0, v19

    iget v4, v0, Lmin3d/parser/AParser$BitmapAsset;->vScale:F

    move-object/from16 v0, v18

    iput v4, v0, Lmin3d/parser/AParser$BitmapAsset;->vScale:F

    goto :goto_3
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lmin3d/parser/AParser$TextureAtlas;->atlas:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getBitmapAssetByName(Ljava/lang/String;)Lmin3d/parser/AParser$BitmapAsset;
    .locals 3
    .param p1, "materialKey"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 357
    .local v1, "numBitmaps":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 362
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 358
    :cond_0
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v2, v2, Lmin3d/parser/AParser$BitmapAsset;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/AParser$BitmapAsset;

    goto :goto_1

    .line 357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lmin3d/parser/AParser$TextureAtlas;->atlasId:Ljava/lang/String;

    return-object v0
.end method

.method public final hasBitmaps()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lmin3d/parser/AParser$TextureAtlas;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
