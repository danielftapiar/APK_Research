.class public final Lmin3d/parser/MD2Parser;
.super Lmin3d/parser/AParser;
.source "MD2Parser.java"

# interfaces
.implements Lmin3d/parser/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmin3d/parser/MD2Parser$MD2Header;
    }
.end annotation


# instance fields
.field private currentTextureName:Ljava/lang/String;

.field private frames:[Lmin3d/animation/KeyFrame;

.field private header:Lmin3d/parser/MD2Parser$MD2Header;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmin3d/parser/AParser;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    return-void
.end method

.method private getFrames$7c9e317c([B)V
    .locals 22
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmin3d/parser/MD2Parser$MD2Header;->offsetFrames:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x44

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lmin3d/parser/MD2Parser$MD2Header;->offsetFrames:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    .line 118
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 120
    .local v3, "ba":Ljava/io/ByteArrayInputStream;
    new-instance v7, Lmin3d/parser/LittleEndianDataInputStream;

    invoke-direct {v7, v3}, Lmin3d/parser/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v7, "is":Lmin3d/parser/LittleEndianDataInputStream;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmin3d/parser/MD2Parser$MD2Header;->numFrames:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v4, v0, :cond_0

    .line 154
    return-void

    .line 124
    :cond_0
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readFloat()F

    move-result v10

    .line 125
    .local v10, "scaleX":F
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readFloat()F

    move-result v11

    .line 126
    .local v11, "scaleY":F
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readFloat()F

    move-result v12

    .line 127
    .local v12, "scaleZ":F
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readFloat()F

    move-result v13

    .line 128
    .local v13, "translateX":F
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readFloat()F

    move-result v14

    .line 129
    .local v14, "translateY":F
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readFloat()F

    move-result v15

    .line 130
    .local v15, "translateZ":F
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lmin3d/parser/LittleEndianDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "name":Ljava/lang/String;
    const-string v17, "_"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_1

    .line 133
    const/16 v17, 0x0

    const-string v18, "_"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "frame name: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmin3d/parser/MD2Parser$MD2Header;->numVerts:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 139
    .local v16, "vertices":[F
    const/4 v5, 0x0

    .line 141
    .local v5, "index":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmin3d/parser/MD2Parser$MD2Header;->numVerts:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_2

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->frames:[Lmin3d/animation/KeyFrame;

    move-object/from16 v17, v0

    new-instance v18, Lmin3d/animation/KeyFrame;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1}, Lmin3d/animation/KeyFrame;-><init>(Ljava/lang/String;[F)V

    aput-object v18, v17, v4

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 135
    .end local v5    # "index":I
    .end local v8    # "j":I
    .end local v16    # "vertices":[F
    :cond_1
    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const-string v18, "[0-9]{1,2}$"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 142
    .restart local v5    # "index":I
    .restart local v8    # "j":I
    .restart local v16    # "vertices":[F
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v10

    add-float v17, v17, v13

    aput v17, v16, v5

    .line 143
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v11

    add-float v17, v17, v14

    aput v17, v16, v6

    .line 144
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedByte()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    add-float v17, v17, v15

    aput v17, v16, v5

    .line 146
    invoke-virtual {v7}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedByte()I

    .line 147
    if-nez v4, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lmin3d/parser/MD2Parser;->co:Lmin3d/parser/ParseObjectData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmin3d/parser/ParseObjectData;->vertices:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lmin3d/vos/Number3d;

    add-int/lit8 v19, v6, -0x3

    aget v19, v16, v19

    .line 149
    add-int/lit8 v20, v6, -0x2

    aget v20, v16, v20

    add-int/lit8 v21, v6, -0x1

    aget v21, v16, v21

    invoke-direct/range {v18 .. v21}, Lmin3d/vos/Number3d;-><init>(FFF)V

    .line 148
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto/16 :goto_2
.end method

.method private getMaterials$7c9e317c([B)V
    .locals 11
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 81
    iget-object v7, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v7, v7, Lmin3d/parser/MD2Parser$MD2Header;->offsetSkins:I

    add-int/lit8 v7, v7, -0x44

    array-length v8, p1

    iget-object v9, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v9, v9, Lmin3d/parser/MD2Parser$MD2Header;->offsetSkins:I

    sub-int/2addr v8, v9

    .line 80
    invoke-direct {v0, p1, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 82
    .local v0, "ba":Ljava/io/ByteArrayInputStream;
    new-instance v3, Lmin3d/parser/LittleEndianDataInputStream;

    invoke-direct {v3, v0}, Lmin3d/parser/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v3, "is":Lmin3d/parser/LittleEndianDataInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v7, v7, Lmin3d/parser/MD2Parser$MD2Header;->numSkins:I

    if-lt v2, v7, :cond_0

    .line 102
    return-void

    .line 85
    :cond_0
    const/16 v7, 0x40

    invoke-virtual {v3, v7}, Lmin3d/parser/LittleEndianDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "skinPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lmin3d/parser/MD2Parser;->packageID:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 87
    .local v5, "texture":Ljava/lang/StringBuffer;
    const-string v7, ":drawable/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    .line 89
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, "textureName":Ljava/lang/StringBuffer;
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, "dotIndex":I
    if-ltz v1, :cond_1

    .line 94
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmin3d/parser/MD2Parser;->currentTextureName:Ljava/lang/String;

    .line 99
    iget-object v7, p0, Lmin3d/parser/MD2Parser;->textureAtlas:Lmin3d/parser/AParser$TextureAtlas;

    new-instance v8, Lmin3d/parser/AParser$BitmapAsset;

    iget-object v9, p0, Lmin3d/parser/MD2Parser;->currentTextureName:Ljava/lang/String;

    .line 100
    iget-object v10, p0, Lmin3d/parser/MD2Parser;->currentTextureName:Ljava/lang/String;

    invoke-direct {v8, p0, v9, v10}, Lmin3d/parser/AParser$BitmapAsset;-><init>(Lmin3d/parser/AParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v7, v8}, Lmin3d/parser/AParser$TextureAtlas;->addBitmapAsset(Lmin3d/parser/AParser$BitmapAsset;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private getTexCoords$7c9e317c([B)V
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 107
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v3, v3, Lmin3d/parser/MD2Parser$MD2Header;->offsetTexCoord:I

    add-int/lit8 v3, v3, -0x44

    array-length v4, p1

    .line 108
    iget-object v5, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v5, v5, Lmin3d/parser/MD2Parser$MD2Header;->offsetTexCoord:I

    sub-int/2addr v4, v5

    .line 106
    invoke-direct {v0, p1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 109
    .local v0, "ba":Ljava/io/ByteArrayInputStream;
    new-instance v2, Lmin3d/parser/LittleEndianDataInputStream;

    invoke-direct {v2, v0}, Lmin3d/parser/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    .local v2, "is":Lmin3d/parser/LittleEndianDataInputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v3, v3, Lmin3d/parser/MD2Parser$MD2Header;->numTexCoord:I

    if-lt v1, v3, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v3, v3, Lmin3d/parser/ParseObjectData;->texCoords:Ljava/util/ArrayList;

    new-instance v4, Lmin3d/vos/Uv;

    invoke-virtual {v2}, Lmin3d/parser/LittleEndianDataInputStream;->readShort()S

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v6, v6, Lmin3d/parser/MD2Parser$MD2Header;->skinWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2}, Lmin3d/parser/LittleEndianDataInputStream;->readShort()S

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v7, v7, Lmin3d/parser/MD2Parser$MD2Header;->skinHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lmin3d/vos/Uv;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getTriangles$7c9e317c([B)V
    .locals 12
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 159
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v9, v9, Lmin3d/parser/MD2Parser$MD2Header;->offsetTriangles:I

    add-int/lit8 v9, v9, -0x44

    array-length v10, p1

    .line 160
    iget-object v11, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v11, v11, Lmin3d/parser/MD2Parser$MD2Header;->offsetTriangles:I

    sub-int/2addr v10, v11

    .line 158
    invoke-direct {v0, p1, v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 161
    .local v0, "ba":Ljava/io/ByteArrayInputStream;
    new-instance v5, Lmin3d/parser/LittleEndianDataInputStream;

    invoke-direct {v5, v0}, Lmin3d/parser/LittleEndianDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 162
    .local v5, "is":Lmin3d/parser/LittleEndianDataInputStream;
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v9, v9, Lmin3d/parser/MD2Parser$MD2Header;->numTriangles:I

    mul-int/lit8 v9, v9, 0x3

    new-array v4, v9, [I

    .line 163
    .local v4, "indices":[I
    const/4 v3, 0x0

    .line 165
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v9, v9, Lmin3d/parser/MD2Parser$MD2Header;->numTriangles:I

    if-lt v2, v9, :cond_0

    .line 188
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v9, v9, Lmin3d/parser/MD2Parser$MD2Header;->numFrames:I

    if-lt v6, v9, :cond_1

    .line 192
    return-void

    .line 166
    .end local v6    # "j":I
    :cond_0
    const/4 v9, 0x3

    new-array v8, v9, [I

    .line 167
    .local v8, "vertexIDs":[I
    const/4 v9, 0x3

    new-array v7, v9, [I

    .line 169
    .local v7, "uvIDS":[I
    add-int/lit8 v9, v3, 0x2

    const/4 v10, 0x2

    invoke-virtual {v5}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v11

    aput v11, v8, v10

    aput v11, v4, v9

    .line 170
    add-int/lit8 v9, v3, 0x1

    const/4 v10, 0x1

    invoke-virtual {v5}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v11

    aput v11, v8, v10

    aput v11, v4, v9

    .line 171
    const/4 v9, 0x0

    invoke-virtual {v5}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v10

    aput v10, v8, v9

    aput v10, v4, v3

    .line 172
    add-int/lit8 v3, v3, 0x3

    .line 173
    const/4 v9, 0x2

    invoke-virtual {v5}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v10

    aput v10, v7, v9

    .line 174
    const/4 v9, 0x1

    invoke-virtual {v5}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v10

    aput v10, v7, v9

    .line 175
    const/4 v9, 0x0

    invoke-virtual {v5}, Lmin3d/parser/LittleEndianDataInputStream;->readUnsignedShort()I

    move-result v10

    aput v10, v7, v9

    .line 177
    new-instance v1, Lmin3d/parser/ParseObjectFace;

    invoke-direct {v1}, Lmin3d/parser/ParseObjectFace;-><init>()V

    .line 178
    .local v1, "f":Lmin3d/parser/ParseObjectFace;
    iput-object v8, v1, Lmin3d/parser/ParseObjectFace;->v:[I

    .line 179
    iput-object v7, v1, Lmin3d/parser/ParseObjectFace;->uv:[I

    .line 180
    const/4 v9, 0x1

    iput-boolean v9, v1, Lmin3d/parser/ParseObjectFace;->hasuv:Z

    iput-boolean v9, v1, Lmin3d/parser/ParseObjectFace;->hasn:Z

    .line 181
    const/4 v9, 0x3

    iput v9, v1, Lmin3d/parser/ParseObjectFace;->faceLength:I

    .line 182
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->currentTextureName:Ljava/lang/String;

    iput-object v9, v1, Lmin3d/parser/ParseObjectFace;->materialKey:Ljava/lang/String;

    .line 183
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->co:Lmin3d/parser/ParseObjectData;

    iget v10, v9, Lmin3d/parser/ParseObjectData;->numFaces:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lmin3d/parser/ParseObjectData;->numFaces:I

    .line 184
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->co:Lmin3d/parser/ParseObjectData;

    iget-object v9, v9, Lmin3d/parser/ParseObjectData;->faces:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->co:Lmin3d/parser/ParseObjectData;

    invoke-virtual {v9, v1}, Lmin3d/parser/ParseObjectData;->calculateFaceNormal(Lmin3d/parser/ParseObjectFace;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "f":Lmin3d/parser/ParseObjectFace;
    .end local v7    # "uvIDS":[I
    .end local v8    # "vertexIDs":[I
    .restart local v6    # "j":I
    :cond_1
    iget-object v9, p0, Lmin3d/parser/MD2Parser;->frames:[Lmin3d/animation/KeyFrame;

    aget-object v9, v9, v6

    invoke-virtual {v9, v4}, Lmin3d/animation/KeyFrame;->setIndices([I)V

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final parse()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 56
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->resources:Landroid/content/res/Resources;

    iget-object v4, p0, Lmin3d/parser/MD2Parser;->resources:Landroid/content/res/Resources;

    .line 57
    iget-object v5, p0, Lmin3d/parser/MD2Parser;->resourceID:Ljava/lang/String;

    .line 56
    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    .local v1, "fileIn":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v2, "stream":Ljava/io/BufferedInputStream;
    new-instance v3, Lmin3d/parser/ParseObjectData;

    invoke-direct {v3}, Lmin3d/parser/ParseObjectData;-><init>()V

    iput-object v3, p0, Lmin3d/parser/MD2Parser;->co:Lmin3d/parser/ParseObjectData;

    .line 61
    new-instance v3, Lmin3d/parser/MD2Parser$MD2Header;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmin3d/parser/MD2Parser$MD2Header;-><init>(Lmin3d/parser/MD2Parser;B)V

    iput-object v3, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    .line 63
    :try_start_0
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    invoke-virtual {v3, v2}, Lmin3d/parser/MD2Parser$MD2Header;->parse(Ljava/io/InputStream;)V

    .line 66
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v3, v3, Lmin3d/parser/MD2Parser$MD2Header;->numFrames:I

    new-array v3, v3, [Lmin3d/animation/KeyFrame;

    iput-object v3, p0, Lmin3d/parser/MD2Parser;->frames:[Lmin3d/animation/KeyFrame;

    .line 67
    iget-object v3, p0, Lmin3d/parser/MD2Parser;->header:Lmin3d/parser/MD2Parser$MD2Header;

    iget v3, v3, Lmin3d/parser/MD2Parser$MD2Header;->offsetEnd:I

    add-int/lit8 v3, v3, -0x44

    new-array v0, v3, [B

    .line 68
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 69
    invoke-direct {p0, v0}, Lmin3d/parser/MD2Parser;->getMaterials$7c9e317c([B)V

    .line 70
    invoke-direct {p0, v0}, Lmin3d/parser/MD2Parser;->getTexCoords$7c9e317c([B)V

    .line 71
    invoke-direct {p0, v0}, Lmin3d/parser/MD2Parser;->getFrames$7c9e317c([B)V

    .line 72
    invoke-direct {p0, v0}, Lmin3d/parser/MD2Parser;->getTriangles$7c9e317c([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
