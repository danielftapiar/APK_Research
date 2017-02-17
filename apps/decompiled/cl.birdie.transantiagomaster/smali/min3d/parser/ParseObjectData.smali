.class public final Lmin3d/parser/ParseObjectData;
.super Ljava/lang/Object;
.source "ParseObjectData.java"


# instance fields
.field protected faces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/parser/ParseObjectFace;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field protected normals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Number3d;",
            ">;"
        }
    .end annotation
.end field

.field protected numFaces:I

.field protected texCoords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Uv;",
            ">;"
        }
    .end annotation
.end field

.field protected vertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Number3d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lmin3d/parser/ParseObjectData;->numFaces:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->texCoords:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->normals:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Number3d;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Uv;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lmin3d/vos/Number3d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "vertices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmin3d/vos/Number3d;>;"
    .local p2, "texCoords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmin3d/vos/Uv;>;"
    .local p3, "normals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmin3d/vos/Number3d;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lmin3d/parser/ParseObjectData;->numFaces:I

    .line 41
    iput-object p1, p0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    .line 42
    iput-object p2, p0, Lmin3d/parser/ParseObjectData;->texCoords:Ljava/util/ArrayList;

    .line 43
    iput-object p3, p0, Lmin3d/parser/ParseObjectData;->normals:Ljava/util/ArrayList;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public final calculateFaceNormal(Lmin3d/parser/ParseObjectFace;)V
    .locals 12
    .param p1, "face"    # Lmin3d/parser/ParseObjectFace;

    .prologue
    .line 127
    iget-object v9, p0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    iget-object v10, p1, Lmin3d/parser/ParseObjectFace;->v:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmin3d/vos/Number3d;

    .line 128
    .local v4, "v1":Lmin3d/vos/Number3d;
    iget-object v9, p0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    iget-object v10, p1, Lmin3d/parser/ParseObjectFace;->v:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmin3d/vos/Number3d;

    .line 129
    .local v5, "v2":Lmin3d/vos/Number3d;
    iget-object v9, p0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    iget-object v10, p1, Lmin3d/parser/ParseObjectFace;->v:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmin3d/vos/Number3d;

    .line 131
    .local v6, "v3":Lmin3d/vos/Number3d;
    invoke-static {v5, v4}, Lmin3d/vos/Number3d;->subtract(Lmin3d/vos/Number3d;Lmin3d/vos/Number3d;)Lmin3d/vos/Number3d;

    move-result-object v7

    .line 132
    .local v7, "vector1":Lmin3d/vos/Number3d;
    invoke-static {v6, v4}, Lmin3d/vos/Number3d;->subtract(Lmin3d/vos/Number3d;Lmin3d/vos/Number3d;)Lmin3d/vos/Number3d;

    move-result-object v8

    .line 134
    .local v8, "vector2":Lmin3d/vos/Number3d;
    new-instance v3, Lmin3d/vos/Number3d;

    invoke-direct {v3}, Lmin3d/vos/Number3d;-><init>()V

    .line 135
    .local v3, "normal":Lmin3d/vos/Number3d;
    iget v9, v7, Lmin3d/vos/Number3d;->y:F

    iget v10, v8, Lmin3d/vos/Number3d;->z:F

    mul-float/2addr v9, v10

    iget v10, v7, Lmin3d/vos/Number3d;->z:F

    iget v11, v8, Lmin3d/vos/Number3d;->y:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, v3, Lmin3d/vos/Number3d;->x:F

    .line 136
    iget v9, v8, Lmin3d/vos/Number3d;->z:F

    iget v10, v7, Lmin3d/vos/Number3d;->x:F

    mul-float/2addr v9, v10

    iget v10, v8, Lmin3d/vos/Number3d;->x:F

    iget v11, v7, Lmin3d/vos/Number3d;->z:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    neg-float v9, v9

    iput v9, v3, Lmin3d/vos/Number3d;->y:F

    .line 137
    iget v9, v7, Lmin3d/vos/Number3d;->x:F

    iget v10, v8, Lmin3d/vos/Number3d;->y:F

    mul-float/2addr v9, v10

    iget v10, v7, Lmin3d/vos/Number3d;->y:F

    iget v11, v8, Lmin3d/vos/Number3d;->x:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, v3, Lmin3d/vos/Number3d;->z:F

    .line 139
    iget v9, v3, Lmin3d/vos/Number3d;->x:F

    iget v10, v3, Lmin3d/vos/Number3d;->x:F

    mul-float/2addr v9, v10

    iget v10, v3, Lmin3d/vos/Number3d;->y:F

    iget v11, v3, Lmin3d/vos/Number3d;->y:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v3, Lmin3d/vos/Number3d;->z:F

    iget v11, v3, Lmin3d/vos/Number3d;->z:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 141
    .local v1, "normFactor":D
    iget v9, v3, Lmin3d/vos/Number3d;->x:F

    float-to-double v9, v9

    div-double/2addr v9, v1

    double-to-float v9, v9

    iput v9, v3, Lmin3d/vos/Number3d;->x:F

    .line 142
    iget v9, v3, Lmin3d/vos/Number3d;->y:F

    float-to-double v9, v9

    div-double/2addr v9, v1

    double-to-float v9, v9

    iput v9, v3, Lmin3d/vos/Number3d;->y:F

    .line 143
    iget v9, v3, Lmin3d/vos/Number3d;->z:F

    float-to-double v9, v9

    div-double/2addr v9, v1

    double-to-float v9, v9

    iput v9, v3, Lmin3d/vos/Number3d;->z:F

    .line 145
    iget-object v9, p0, Lmin3d/parser/ParseObjectData;->normals:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v9, p0, Lmin3d/parser/ParseObjectData;->normals:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 148
    .local v0, "index":I
    const/4 v9, 0x3

    new-array v9, v9, [I

    iput-object v9, p1, Lmin3d/parser/ParseObjectFace;->n:[I

    .line 149
    iget-object v9, p1, Lmin3d/parser/ParseObjectFace;->n:[I

    const/4 v10, 0x0

    aput v0, v9, v10

    .line 150
    iget-object v9, p1, Lmin3d/parser/ParseObjectFace;->n:[I

    const/4 v10, 0x1

    aput v0, v9, v10

    .line 151
    iget-object v9, p1, Lmin3d/parser/ParseObjectFace;->n:[I

    const/4 v10, 0x2

    aput v0, v9, v10

    .line 152
    const/4 v9, 0x1

    iput-boolean v9, p1, Lmin3d/parser/ParseObjectFace;->hasn:Z

    .line 153
    return-void
.end method

.method public final getParsedObject(Ljava/util/HashMap;Lmin3d/parser/AParser$TextureAtlas;)Lmin3d/core/Object3d;
    .locals 16
    .param p2, "textureAtlas"    # Lmin3d/parser/AParser$TextureAtlas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmin3d/parser/AParser$Material;",
            ">;",
            "Lmin3d/parser/AParser$TextureAtlas;",
            ")",
            "Lmin3d/core/Object3d;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "materialMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmin3d/parser/AParser$Material;>;"
    new-instance v1, Lmin3d/core/Object3d;

    move-object/from16 v0, p0

    iget v2, v0, Lmin3d/parser/ParseObjectData;->numFaces:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lmin3d/parser/ParseObjectData;->numFaces:I

    invoke-direct {v1, v2, v3}, Lmin3d/core/Object3d;-><init>(II)V

    .line 61
    .local v1, "obj":Lmin3d/core/Object3d;
    move-object/from16 v0, p0

    iget-object v2, v0, Lmin3d/parser/ParseObjectData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmin3d/core/Object3d;->name(Ljava/lang/String;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lmin3d/parser/AParser$TextureAtlas;->hasBitmaps()Z

    move-result v11

    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_0
    if-lt v8, v10, :cond_1

    if-eqz v11, :cond_0

    invoke-virtual {v1}, Lmin3d/core/Object3d;->textures()Lmin3d/core/TextureList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lmin3d/parser/AParser$TextureAtlas;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmin3d/core/TextureList;->addById(Ljava/lang/String;)Lmin3d/vos/TextureVo;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 65
    return-object v1

    .line 63
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmin3d/parser/ParseObjectFace;

    iget-object v3, v2, Lmin3d/parser/ParseObjectFace;->materialKey:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lmin3d/parser/AParser$TextureAtlas;->getBitmapAssetByName(Ljava/lang/String;)Lmin3d/parser/AParser$BitmapAsset;

    move-result-object v12

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    iget v3, v2, Lmin3d/parser/ParseObjectFace;->faceLength:I

    if-lt v5, v3, :cond_3

    iget v3, v2, Lmin3d/parser/ParseObjectFace;->faceLength:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    invoke-virtual {v1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v3

    new-instance v4, Lmin3d/vos/Face;

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v6, v9, 0x2

    invoke-direct {v4, v9, v5, v6}, Lmin3d/vos/Face;-><init>(III)V

    invoke-virtual {v3, v4}, Lmin3d/core/FacesBufferedList;->add(Lmin3d/vos/Face;)V

    :cond_2
    :goto_2
    iget v2, v2, Lmin3d/parser/ParseObjectFace;->faceLength:I

    add-int v3, v9, v2

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    iget-object v4, v2, Lmin3d/parser/ParseObjectFace;->v:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmin3d/vos/Number3d;

    iget-boolean v4, v2, Lmin3d/parser/ParseObjectFace;->hasuv:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/ParseObjectData;->texCoords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, v2, Lmin3d/parser/ParseObjectFace;->uv:[I

    aget v6, v6, v5

    if-le v4, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/ParseObjectData;->texCoords:Ljava/util/ArrayList;

    iget-object v6, v2, Lmin3d/parser/ParseObjectFace;->uv:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmin3d/vos/Uv;

    invoke-virtual {v4}, Lmin3d/vos/Uv;->clone()Lmin3d/vos/Uv;

    move-result-object v4

    move-object v6, v4

    :goto_3
    iget-boolean v4, v2, Lmin3d/parser/ParseObjectFace;->hasn:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/ParseObjectData;->normals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v7, v2, Lmin3d/parser/ParseObjectFace;->n:[I

    aget v7, v7, v5

    if-le v4, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmin3d/parser/ParseObjectData;->normals:Ljava/util/ArrayList;

    iget-object v7, v2, Lmin3d/parser/ParseObjectFace;->n:[I

    aget v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmin3d/vos/Number3d;

    move-object v7, v4

    :goto_4
    iget-object v4, v2, Lmin3d/parser/ParseObjectFace;->materialKey:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmin3d/parser/AParser$Material;

    new-instance v13, Lmin3d/vos/Color4;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lmin3d/vos/Color4;-><init>(I)V

    if-eqz v4, :cond_4

    iget-object v14, v4, Lmin3d/parser/AParser$Material;->diffuseColor:Lmin3d/vos/Color4;

    if-eqz v14, :cond_4

    iget-object v14, v4, Lmin3d/parser/AParser$Material;->diffuseColor:Lmin3d/vos/Color4;

    iget-short v14, v14, Lmin3d/vos/Color4;->r:S

    iput-short v14, v13, Lmin3d/vos/Color4;->r:S

    iget-object v14, v4, Lmin3d/parser/AParser$Material;->diffuseColor:Lmin3d/vos/Color4;

    iget-short v14, v14, Lmin3d/vos/Color4;->g:S

    iput-short v14, v13, Lmin3d/vos/Color4;->g:S

    iget-object v14, v4, Lmin3d/parser/AParser$Material;->diffuseColor:Lmin3d/vos/Color4;

    iget-short v14, v14, Lmin3d/vos/Color4;->b:S

    iput-short v14, v13, Lmin3d/vos/Color4;->b:S

    iget-object v4, v4, Lmin3d/parser/AParser$Material;->diffuseColor:Lmin3d/vos/Color4;

    iget-short v4, v4, Lmin3d/vos/Color4;->a:S

    iput-short v4, v13, Lmin3d/vos/Color4;->a:S

    :cond_4
    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    iget v4, v12, Lmin3d/parser/AParser$BitmapAsset;->uOffset:F

    iget v14, v6, Lmin3d/vos/Uv;->u:F

    iget v15, v12, Lmin3d/parser/AParser$BitmapAsset;->uScale:F

    mul-float/2addr v14, v15

    add-float/2addr v4, v14

    iput v4, v6, Lmin3d/vos/Uv;->u:F

    iget v4, v12, Lmin3d/parser/AParser$BitmapAsset;->vOffset:F

    iget v14, v6, Lmin3d/vos/Uv;->v:F

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v14, v15

    iget v15, v12, Lmin3d/parser/AParser$BitmapAsset;->vScale:F

    mul-float/2addr v14, v15

    add-float/2addr v4, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v4, v14

    iput v4, v6, Lmin3d/vos/Uv;->v:F

    :cond_5
    invoke-virtual {v1}, Lmin3d/core/Object3d;->vertices()Lmin3d/core/Vertices;

    move-result-object v4

    invoke-virtual {v4, v3, v6, v7, v13}, Lmin3d/core/Vertices;->addVertex(Lmin3d/vos/Number3d;Lmin3d/vos/Uv;Lmin3d/vos/Number3d;Lmin3d/vos/Color4;)S

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_1

    :cond_6
    new-instance v4, Lmin3d/vos/Uv;

    invoke-direct {v4}, Lmin3d/vos/Uv;-><init>()V

    move-object v6, v4

    goto :goto_3

    :cond_7
    new-instance v4, Lmin3d/vos/Number3d;

    invoke-direct {v4}, Lmin3d/vos/Number3d;-><init>()V

    move-object v7, v4

    goto :goto_4

    :cond_8
    iget v3, v2, Lmin3d/parser/ParseObjectFace;->faceLength:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v3

    new-instance v4, Lmin3d/vos/Face;

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v6, v9, 0x3

    invoke-direct {v4, v9, v5, v6}, Lmin3d/vos/Face;-><init>(III)V

    invoke-virtual {v3, v4}, Lmin3d/core/FacesBufferedList;->add(Lmin3d/vos/Face;)V

    invoke-virtual {v1}, Lmin3d/core/Object3d;->faces()Lmin3d/core/FacesBufferedList;

    move-result-object v3

    new-instance v4, Lmin3d/vos/Face;

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v6, v9, 0x2

    add-int/lit8 v7, v9, 0x3

    invoke-direct {v4, v5, v6, v7}, Lmin3d/vos/Face;-><init>(III)V

    invoke-virtual {v3, v4}, Lmin3d/core/FacesBufferedList;->add(Lmin3d/vos/Face;)V

    goto/16 :goto_2
.end method
