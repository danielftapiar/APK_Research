.class public final Lmin3d/parser/ObjParser;
.super Lmin3d/parser/AParser;
.source "ObjParser.java"

# interfaces
.implements Lmin3d/parser/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmin3d/parser/ObjParser$ObjFace;
    }
.end annotation


# instance fields
.field private final DIFFUSE_COLOR:Ljava/lang/String;

.field private final DIFFUSE_TEX_MAP:Ljava/lang/String;

.field private final FACE:Ljava/lang/String;

.field private final MATERIAL_LIB:Ljava/lang/String;

.field private final NEW_MATERIAL:Ljava/lang/String;

.field private final NORMAL:Ljava/lang/String;

.field private final OBJECT:Ljava/lang/String;

.field private final TEXCOORD:Ljava/lang/String;

.field private final USE_MATERIAL:Ljava/lang/String;

.field private final VERTEX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmin3d/parser/AParser;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    const-string v0, "v"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->VERTEX:Ljava/lang/String;

    .line 35
    const-string v0, "f"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->FACE:Ljava/lang/String;

    .line 36
    const-string v0, "vt"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->TEXCOORD:Ljava/lang/String;

    .line 37
    const-string v0, "vn"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->NORMAL:Ljava/lang/String;

    .line 38
    const-string v0, "o"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->OBJECT:Ljava/lang/String;

    .line 39
    const-string v0, "mtllib"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->MATERIAL_LIB:Ljava/lang/String;

    .line 40
    const-string v0, "usemtl"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->USE_MATERIAL:Ljava/lang/String;

    .line 41
    const-string v0, "newmtl"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->NEW_MATERIAL:Ljava/lang/String;

    .line 42
    const-string v0, "Kd"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->DIFFUSE_COLOR:Ljava/lang/String;

    .line 43
    const-string v0, "map_Kd"

    iput-object v0, p0, Lmin3d/parser/ObjParser;->DIFFUSE_TEX_MAP:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private readMaterialLib(Ljava/lang/String;)V
    .locals 18
    .param p1, "libID"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v9, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->packageID:Ljava/lang/String;

    invoke-direct {v9, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 167
    .local v9, "resourceID":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, "libIDSbuf":Ljava/lang/StringBuffer;
    const-string v13, "."

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 169
    .local v4, "dotIndex":I
    if-ltz v4, :cond_0

    .line 170
    add-int/lit8 v13, v4, 0x1

    const-string v14, "_"

    invoke-virtual {v6, v4, v13, v14}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 172
    :cond_0
    const-string v13, ":raw/"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->resources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmin3d/parser/ObjParser;->resources:Landroid/content/res/Resources;

    .line 176
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 175
    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 177
    .local v5, "fileIn":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    .line 178
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 177
    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    .local v1, "buffer":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 183
    .local v2, "currentMaterial":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 221
    .end local v7    # "line":Ljava/lang/String;
    :goto_1
    return-void

    .line 184
    .restart local v7    # "line":Ljava/lang/String;
    :cond_2
    const-string v13, " "

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, "parts":[Ljava/lang/String;
    array-length v13, v8

    if-eqz v13, :cond_1

    .line 186
    const/4 v13, 0x0

    aget-object v12, v8, v13

    .line 189
    .local v12, "type":Ljava/lang/String;
    const-string v13, "newmtl"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 190
    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 191
    const/4 v13, 0x1

    aget-object v2, v8, v13

    .line 192
    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->materialMap:Ljava/util/HashMap;

    new-instance v14, Lmin3d/parser/AParser$Material;

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lmin3d/parser/AParser$Material;-><init>(Lmin3d/parser/AParser;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v13, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 195
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "parts":[Ljava/lang/String;
    .restart local v12    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v13, "Kd"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "map_Kd"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 196
    new-instance v3, Lmin3d/vos/Color4;

    const/4 v13, 0x1

    aget-object v13, v8, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v13, v14

    const/4 v14, 0x2

    aget-object v14, v8, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float/2addr v14, v15

    const/4 v15, 0x3

    aget-object v15, v8, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v15, v15, v16

    invoke-direct {v3, v13, v14, v15}, Lmin3d/vos/Color4;-><init>(FFF)V

    .line 197
    .local v3, "diffuseColor":Lmin3d/vos/Color4;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->materialMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmin3d/parser/AParser$Material;

    iput-object v3, v13, Lmin3d/parser/AParser$Material;->diffuseColor:Lmin3d/vos/Color4;

    goto :goto_0

    .line 198
    .end local v3    # "diffuseColor":Lmin3d/vos/Color4;
    :cond_4
    const-string v13, "map_Kd"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 199
    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->materialMap:Ljava/util/HashMap;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmin3d/parser/AParser$Material;

    const/4 v14, 0x1

    aget-object v14, v8, v14

    iput-object v14, v13, Lmin3d/parser/AParser$Material;->diffuseTextureMap:Ljava/lang/String;

    .line 201
    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->packageID:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 202
    .local v10, "texture":Ljava/lang/StringBuffer;
    const-string v13, ":drawable/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    new-instance v11, Ljava/lang/StringBuffer;

    const/4 v13, 0x1

    aget-object v13, v8, v13

    invoke-direct {v11, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 205
    .local v11, "textureName":Ljava/lang/StringBuffer;
    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 206
    if-ltz v4, :cond_5

    .line 207
    const/4 v13, 0x0

    invoke-virtual {v11, v13, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->resources:Landroid/content/res/Resources;

    .line 212
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 211
    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 213
    invoke-static {}, Lmin3d/Shared;->context()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13}, Lmin3d/Utils;->makeBitmapFromResourceId(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    new-instance v14, Lmin3d/parser/AParser$BitmapAsset;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v15}, Lmin3d/parser/AParser$BitmapAsset;-><init>(Lmin3d/parser/AParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lmin3d/parser/AParser$TextureAtlas;->addBitmapAsset(Lmin3d/parser/AParser$BitmapAsset;)V

    goto/16 :goto_0

    .line 209
    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected final cleanup()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lmin3d/parser/AParser;->cleanup()V

    .line 226
    iget-object v0, p0, Lmin3d/parser/ObjParser;->materialMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    return-void
.end method

.method public final getParsedObject()Lmin3d/core/Object3dContainer;
    .locals 8

    .prologue
    .line 136
    new-instance v3, Lmin3d/core/Object3dContainer;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lmin3d/core/Object3dContainer;-><init>(B)V

    .line 138
    .local v3, "obj":Lmin3d/core/Object3dContainer;
    iget-object v5, p0, Lmin3d/parser/ObjParser;->parseObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    .local v1, "numObjects":I
    const/4 v4, 0x0

    .line 141
    .local v4, "texture":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->hasBitmaps()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    iget-object v5, p0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->generate()V

    .line 144
    iget-object v5, p0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 145
    invoke-static {}, Lmin3d/Shared;->textureManager()Lmin3d/core/TextureManager;

    move-result-object v5

    iget-object v6, p0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v6}, Lmin3d/parser/AParser$TextureAtlas;->getId()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lmin3d/parser/ObjParser;->generateMipMap:Z

    invoke-virtual {v5, v4, v6, v7}, Lmin3d/core/TextureManager;->addTextureId(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/lang/String;

    .line 148
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 154
    iget-object v5, p0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->hasBitmaps()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lmin3d/parser/ObjParser;->cleanup()V

    .line 162
    return-object v3

    .line 149
    :cond_2
    iget-object v5, p0, Lmin3d/parser/ObjParser;->parseObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/ParseObjectData;

    .line 150
    .local v2, "o":Lmin3d/parser/ParseObjectData;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    iget-object v5, p0, Lmin3d/parser/ObjParser;->materialMap:Ljava/util/HashMap;

    iget-object v6, p0, Lmin3d/parser/ObjParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v2, v5, v6}, Lmin3d/parser/ParseObjectData;->getParsedObject(Ljava/util/HashMap;Lmin3d/parser/AParser$TextureAtlas;)Lmin3d/core/Object3d;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmin3d/core/Object3dContainer;->addChild(Lmin3d/core/Object3d;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final parse()V
    .locals 23

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 59
    .local v13, "startTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->resources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->resources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->resourceID:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 59
    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 61
    .local v7, "fileIn":Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedReader;

    .line 62
    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v4, "buffer":Ljava/io/BufferedReader;
    new-instance v18, Lmin3d/parser/ParseObjectData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->vertices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->texCoords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->normals:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lmin3d/parser/ParseObjectData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->parseObjects:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Start parsing object "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->resourceID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Start time "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 131
    .end local v8    # "line":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 132
    .local v5, "endTime":J
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "End time "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v19, v5, v13

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    return-void

    .line 75
    .end local v5    # "endTime":J
    .restart local v8    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-direct {v12, v8, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v12, "parts":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    .line 77
    .local v10, "numTokens":I
    if-eqz v10, :cond_0

    .line 78
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, "type":Ljava/lang/String;
    const-string v18, "v"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 82
    new-instance v17, Lmin3d/vos/Number3d;

    invoke-direct/range {v17 .. v17}, Lmin3d/vos/Number3d;-><init>()V

    .line 83
    .local v17, "vertex":Lmin3d/vos/Number3d;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmin3d/vos/Number3d;->x:F

    .line 84
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmin3d/vos/Number3d;->y:F

    .line 85
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmin3d/vos/Number3d;->z:F

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->vertices:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "numTokens":I
    .end local v12    # "parts":Ljava/util/StringTokenizer;
    .end local v16    # "type":Ljava/lang/String;
    .end local v17    # "vertex":Lmin3d/vos/Number3d;
    :catch_0
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 87
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v10    # "numTokens":I
    .restart local v12    # "parts":Ljava/util/StringTokenizer;
    .restart local v16    # "type":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v18, "f"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 88
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v10, v0, :cond_3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmin3d/parser/ParseObjectData;->numFaces:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmin3d/parser/ParseObjectData;->numFaces:I

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lmin3d/parser/ObjParser$ObjFace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->currentMaterialKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lmin3d/parser/ObjParser$ObjFace;-><init>(Lmin3d/parser/ObjParser;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 91
    :cond_3
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmin3d/parser/ParseObjectData;->numFaces:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lmin3d/parser/ParseObjectData;->numFaces:I

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lmin3d/parser/ObjParser$ObjFace;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->currentMaterialKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lmin3d/parser/ObjParser$ObjFace;-><init>(Lmin3d/parser/ObjParser;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    :cond_4
    const-string v18, "vt"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 96
    new-instance v15, Lmin3d/vos/Uv;

    invoke-direct {v15}, Lmin3d/vos/Uv;-><init>()V

    .line 97
    .local v15, "texCoord":Lmin3d/vos/Uv;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Lmin3d/vos/Uv;->u:F

    .line 98
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    const/high16 v19, -0x40800000    # -1.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v15, Lmin3d/vos/Uv;->v:F

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->texCoords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 100
    .end local v15    # "texCoord":Lmin3d/vos/Uv;
    :cond_5
    const-string v18, "vn"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 101
    new-instance v9, Lmin3d/vos/Number3d;

    invoke-direct {v9}, Lmin3d/vos/Number3d;-><init>()V

    .line 102
    .local v9, "normal":Lmin3d/vos/Number3d;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Lmin3d/vos/Number3d;->x:F

    .line 103
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Lmin3d/vos/Number3d;->y:F

    .line 104
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Lmin3d/vos/Number3d;->z:F

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->normals:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    .end local v9    # "normal":Lmin3d/vos/Number3d;
    :cond_6
    const-string v18, "mtllib"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 107
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lmin3d/parser/ObjParser;->readMaterialLib(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_7
    const-string v18, "usemtl"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 109
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmin3d/parser/ObjParser;->currentMaterialKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    :cond_8
    const-string v18, "o"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 111
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "objName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmin3d/parser/ObjParser;->firstObject:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 114
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Create object "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v11, v0, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    .line 116
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmin3d/parser/ObjParser;->firstObject:Z

    goto/16 :goto_0

    .line 111
    .end local v11    # "objName":Ljava/lang/String;
    :cond_9
    const-string v11, ""

    goto :goto_2

    .line 120
    .restart local v11    # "objName":Ljava/lang/String;
    :cond_a
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Create object "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    new-instance v18, Lmin3d/parser/ParseObjectData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->vertices:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->texCoords:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->normals:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lmin3d/parser/ParseObjectData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v11, v0, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->parseObjects:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/ObjParser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
