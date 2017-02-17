.class public final Lmin3d/parser/Max3DSParser;
.super Lmin3d/parser/AParser;
.source "Max3DSParser.java"

# interfaces
.implements Lmin3d/parser/IParser;


# instance fields
.field private final FACES:I

.field private final IDENTIFIER_3DS:I

.field private final MATERIAL:I

.field private final MESH_BLOCK:I

.field private final OBJECT_BLOCK:I

.field private final TEXCOORD:I

.field private final TEX_FILENAME:I

.field private final TEX_MAP:I

.field private final TEX_NAME:I

.field private final TRIMESH:I

.field private final TRI_MATERIAL:I

.field private final VERTICES:I

.field private chunkEndOffset:I

.field private chunkID:I

.field private currentObjName:Ljava/lang/String;

.field private endReached:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmin3d/parser/AParser;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 17
    const/16 v0, 0x4d4d

    iput v0, p0, Lmin3d/parser/Max3DSParser;->IDENTIFIER_3DS:I

    .line 18
    const/16 v0, 0x3d3d

    iput v0, p0, Lmin3d/parser/Max3DSParser;->MESH_BLOCK:I

    .line 19
    const/16 v0, 0x4000

    iput v0, p0, Lmin3d/parser/Max3DSParser;->OBJECT_BLOCK:I

    .line 20
    const/16 v0, 0x4100

    iput v0, p0, Lmin3d/parser/Max3DSParser;->TRIMESH:I

    .line 21
    const/16 v0, 0x4130

    iput v0, p0, Lmin3d/parser/Max3DSParser;->TRI_MATERIAL:I

    .line 22
    const/16 v0, 0x4110

    iput v0, p0, Lmin3d/parser/Max3DSParser;->VERTICES:I

    .line 23
    const/16 v0, 0x4120

    iput v0, p0, Lmin3d/parser/Max3DSParser;->FACES:I

    .line 24
    const/16 v0, 0x4140

    iput v0, p0, Lmin3d/parser/Max3DSParser;->TEXCOORD:I

    .line 25
    const v0, 0xa200

    iput v0, p0, Lmin3d/parser/Max3DSParser;->TEX_MAP:I

    .line 26
    const v0, 0xa000

    iput v0, p0, Lmin3d/parser/Max3DSParser;->TEX_NAME:I

    .line 27
    const v0, 0xa300

    iput v0, p0, Lmin3d/parser/Max3DSParser;->TEX_FILENAME:I

    .line 28
    const v0, 0xafff

    iput v0, p0, Lmin3d/parser/Max3DSParser;->MATERIAL:I

    .line 37
    return-void
.end method

.method private readChunk(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 79
    invoke-direct {p0, p1}, Lmin3d/parser/Max3DSParser;->readHeader(Ljava/io/InputStream;)V

    .line 81
    iget v8, p0, Lmin3d/parser/Max3DSParser;->chunkID:I

    sparse-switch v8, :sswitch_data_0

    .line 142
    invoke-direct {p0, p1}, Lmin3d/parser/Max3DSParser;->skipRead(Ljava/io/InputStream;)V

    .line 144
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 85
    :sswitch_1
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmin3d/parser/Max3DSParser;->currentObjName:Ljava/lang/String;

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsing object "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lmin3d/parser/Max3DSParser;->currentObjName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 89
    :sswitch_2
    iget-boolean v8, p0, Lmin3d/parser/Max3DSParser;->firstObject:Z

    if-eqz v8, :cond_1

    .line 91
    iget-object v8, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v9, p0, Lmin3d/parser/Max3DSParser;->currentObjName:Ljava/lang/String;

    iput-object v9, v8, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    .line 92
    iput-boolean v10, p0, Lmin3d/parser/Max3DSParser;->firstObject:Z

    goto :goto_0

    .line 96
    :cond_1
    new-instance v8, Lmin3d/parser/ParseObjectData;

    invoke-direct {v8}, Lmin3d/parser/ParseObjectData;-><init>()V

    iput-object v8, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    .line 97
    iget-object v8, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v9, p0, Lmin3d/parser/Max3DSParser;->currentObjName:Ljava/lang/String;

    iput-object v9, v8, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    .line 98
    iget-object v8, p0, Lmin3d/parser/Max3DSParser;->parseObjects:Ljava/util/ArrayList;

    iget-object v9, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :sswitch_3
    invoke-direct {p0, p1}, Lmin3d/parser/Max3DSParser;->readVertices(Ljava/io/InputStream;)V

    goto :goto_0

    .line 105
    :sswitch_4
    invoke-direct {p0, p1}, Lmin3d/parser/Max3DSParser;->readFaces(Ljava/io/InputStream;)V

    goto :goto_0

    .line 108
    :sswitch_5
    invoke-direct {p0, p1}, Lmin3d/parser/Max3DSParser;->readTexCoords(Ljava/io/InputStream;)V

    goto :goto_0

    .line 111
    :sswitch_6
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmin3d/parser/Max3DSParser;->currentMaterialKey:Ljava/lang/String;

    goto :goto_0

    .line 114
    :sswitch_7
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v8, p0, Lmin3d/parser/Max3DSParser;->packageID:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "texture":Ljava/lang/StringBuffer;
    const-string v8, ":drawable/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    .local v7, "textureName":Ljava/lang/StringBuffer;
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, "dotIndex":I
    if-ltz v0, :cond_2

    .line 121
    invoke-virtual {v7, v10, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :goto_1
    iget-object v8, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    new-instance v9, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v10, p0, Lmin3d/parser/Max3DSParser;->currentMaterialKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11}, Lmin3d/parser/AParser$BitmapAsset;-><init>(Lmin3d/parser/AParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lmin3d/parser/AParser$TextureAtlas;->addBitmapAsset(Lmin3d/parser/AParser$BitmapAsset;)V

    goto/16 :goto_0

    .line 123
    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 128
    .end local v0    # "dotIndex":I
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v6    # "texture":Ljava/lang/StringBuffer;
    .end local v7    # "textureName":Ljava/lang/StringBuffer;
    :sswitch_8
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "materialName":Ljava/lang/String;
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v5

    .line 131
    .local v5, "numFaces":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_0

    .line 133
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v1

    .line 134
    .local v1, "faceIndex":I
    iget-object v8, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v8, v8, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmin3d/parser/ParseObjectFace;

    iput-object v4, v8, Lmin3d/parser/ParseObjectFace;->materialKey:Ljava/lang/String;

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x3d3d -> :sswitch_0
        0x4000 -> :sswitch_1
        0x4100 -> :sswitch_2
        0x4110 -> :sswitch_3
        0x4120 -> :sswitch_4
        0x4130 -> :sswitch_8
        0x4140 -> :sswitch_5
        0xa000 -> :sswitch_6
        0xa200 -> :sswitch_0
        0xa300 -> :sswitch_7
        0xafff -> :sswitch_0
    .end sparse-switch
.end method

.method private readFaces(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "buffer"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 171
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v2

    .line 172
    .local v2, "triangles":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 188
    return-void

    .line 173
    :cond_0
    new-array v3, v7, [I

    .line 174
    .local v3, "vertexIDs":[I
    const/4 v4, 0x0

    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v5

    aput v5, v3, v4

    .line 175
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v4

    aput v4, v3, v6

    .line 176
    const/4 v4, 0x2

    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v5

    aput v5, v3, v4

    .line 177
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    .line 178
    new-instance v0, Lmin3d/parser/ParseObjectFace;

    invoke-direct {v0}, Lmin3d/parser/ParseObjectFace;-><init>()V

    .line 179
    .local v0, "face":Lmin3d/parser/ParseObjectFace;
    iput-object v3, v0, Lmin3d/parser/ParseObjectFace;->v:[I

    .line 180
    iput-object v3, v0, Lmin3d/parser/ParseObjectFace;->uv:[I

    .line 181
    iput v7, v0, Lmin3d/parser/ParseObjectFace;->faceLength:I

    .line 182
    iput-boolean v6, v0, Lmin3d/parser/ParseObjectFace;->hasuv:Z

    .line 183
    iget-object v4, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget v5, v4, Lmin3d/parser/ParseObjectData;->numFaces:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmin3d/parser/ParseObjectData;->numFaces:I

    .line 184
    iget-object v4, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v4, v4, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v4, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    invoke-virtual {v4, v0}, Lmin3d/parser/ParseObjectData;->calculateFaceNormal(Lmin3d/parser/ParseObjectFace;)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readHeader(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/Max3DSParser;->chunkID:I

    .line 74
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lmin3d/parser/Max3DSParser;->chunkEndOffset:I

    .line 75
    iget v0, p0, Lmin3d/parser/Max3DSParser;->chunkID:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lmin3d/parser/Max3DSParser;->endReached:Z

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readTexCoords(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "buffer"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v1

    .line 193
    .local v1, "numVertices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 199
    return-void

    .line 194
    :cond_0
    new-instance v2, Lmin3d/vos/Uv;

    invoke-direct {v2}, Lmin3d/vos/Uv;-><init>()V

    .line 195
    .local v2, "uv":Lmin3d/vos/Uv;
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readFloat(Ljava/io/InputStream;)F

    move-result v3

    iput v3, v2, Lmin3d/vos/Uv;->u:F

    .line 196
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readFloat(Ljava/io/InputStream;)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    iput v3, v2, Lmin3d/vos/Uv;->v:F

    .line 197
    iget-object v3, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v3, v3, Lmin3d/parser/ParseObjectData;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readVertices(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "buffer"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readShort(Ljava/io/InputStream;)I

    move-result v1

    .line 158
    .local v1, "numVertices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 168
    return-void

    .line 159
    :cond_0
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readFloat(Ljava/io/InputStream;)F

    move-result v3

    .line 160
    .local v3, "x":F
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readFloat(Ljava/io/InputStream;)F

    move-result v4

    .line 161
    .local v4, "y":F
    invoke-static {p1}, Lmin3d/parser/Max3DSParser;->readFloat(Ljava/io/InputStream;)F

    move-result v5

    .line 162
    .local v5, "z":F
    move v2, v4

    .line 163
    .local v2, "tmpy":F
    move v4, v5

    .line 164
    neg-float v5, v2

    .line 166
    iget-object v6, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v6, v6, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    new-instance v7, Lmin3d/vos/Number3d;

    invoke-direct {v7, v3, v4, v5}, Lmin3d/vos/Number3d;-><init>(FFF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private skipRead(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lmin3d/parser/Max3DSParser;->chunkEndOffset:I

    add-int/lit8 v1, v1, -0x6

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lmin3d/parser/Max3DSParser;->endReached:Z

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lmin3d/parser/Max3DSParser;->endReached:Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final getParsedObject()Lmin3d/core/Object3dContainer;
    .locals 8

    .prologue
    .line 202
    new-instance v3, Lmin3d/core/Object3dContainer;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lmin3d/core/Object3dContainer;-><init>(B)V

    .line 204
    .local v3, "obj":Lmin3d/core/Object3dContainer;
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->parseObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 205
    .local v1, "numObjects":I
    const/4 v4, 0x0

    .line 207
    .local v4, "texture":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->hasBitmaps()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->generate()V

    .line 210
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 211
    invoke-static {}, Lmin3d/Shared;->textureManager()Lmin3d/core/TextureManager;

    move-result-object v5

    iget-object v6, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v6}, Lmin3d/parser/AParser$TextureAtlas;->getId()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lmin3d/parser/Max3DSParser;->generateMipMap:Z

    invoke-virtual {v5, v4, v6, v7}, Lmin3d/core/TextureManager;->addTextureId(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Ljava/lang/String;

    .line 214
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 220
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v5}, Lmin3d/parser/AParser$TextureAtlas;->hasBitmaps()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    :cond_1
    invoke-super {p0}, Lmin3d/parser/AParser;->cleanup()V

    .line 228
    return-object v3

    .line 215
    :cond_2
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->parseObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/ParseObjectData;

    .line 216
    .local v2, "o":Lmin3d/parser/ParseObjectData;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating object "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    iget-object v5, p0, Lmin3d/parser/Max3DSParser;->materialMap:Ljava/util/HashMap;

    iget-object v6, p0, Lmin3d/parser/Max3DSParser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    invoke-virtual {v2, v5, v6}, Lmin3d/parser/ParseObjectData;->getParsedObject(Ljava/util/HashMap;Lmin3d/parser/AParser$TextureAtlas;)Lmin3d/core/Object3d;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmin3d/core/Object3dContainer;->addChild(Lmin3d/core/Object3d;)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final parse()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 41
    iget-object v2, p0, Lmin3d/parser/Max3DSParser;->resources:Landroid/content/res/Resources;

    iget-object v3, p0, Lmin3d/parser/Max3DSParser;->resources:Landroid/content/res/Resources;

    .line 42
    iget-object v4, p0, Lmin3d/parser/Max3DSParser;->resourceID:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, "fileIn":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .local v1, "stream":Ljava/io/BufferedInputStream;
    new-instance v2, Lmin3d/parser/ParseObjectData;

    invoke-direct {v2}, Lmin3d/parser/ParseObjectData;-><init>()V

    iput-object v2, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    .line 48
    iget-object v2, p0, Lmin3d/parser/Max3DSParser;->parseObjects:Ljava/util/ArrayList;

    iget-object v3, p0, Lmin3d/parser/Max3DSParser;->co:Lmin3d/parser/ParseObjectData;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :try_start_0
    invoke-direct {p0, v1}, Lmin3d/parser/Max3DSParser;->readHeader(Ljava/io/InputStream;)V

    .line 52
    iget v2, p0, Lmin3d/parser/Max3DSParser;->chunkID:I

    const/16 v3, 0x4d4d

    if-eq v2, v3, :cond_1

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, v1}, Lmin3d/parser/Max3DSParser;->readChunk(Ljava/io/InputStream;)V

    .line 61
    :cond_1
    iget-boolean v2, p0, Lmin3d/parser/Max3DSParser;->endReached:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
