.class public final Lorg/mapsforge/map/reader/header/MapFileHeader;
.super Ljava/lang/Object;
.source "MapFileHeader.java"


# instance fields
.field private mapFileInfo:Lorg/mapsforge/map/reader/header/MapFileInfo;

.field private subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

.field private zoomLevelMaximum:B

.field private zoomLevelMinimum:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readSubFileParameters(Lorg/mapsforge/map/reader/ReadBuffer;JLorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 21
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p2, "fileSize"    # J
    .param p4, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v7

    .line 162
    .local v7, "numberOfSubFiles":B
    if-gtz v7, :cond_0

    .line 163
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid number of sub-files: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-object v18

    .line 165
    :cond_0
    move-object/from16 v0, p4

    iput-byte v7, v0, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->numberOfSubFiles:B

    .line 167
    new-array v14, v7, [Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 168
    .local v14, "tempSubFileParameters":[Lorg/mapsforge/map/reader/header/SubFileParameter;
    const/16 v18, 0x7f

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    .line 169
    const/16 v18, -0x80

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    .line 172
    const/4 v4, 0x0

    .local v4, "currentSubFile":B
    :goto_1
    if-ge v4, v7, :cond_e

    .line 173
    new-instance v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;

    invoke-direct {v11}, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;-><init>()V

    .line 176
    .local v11, "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v2

    .line 177
    .local v2, "baseZoomLevel":B
    if-ltz v2, :cond_1

    const/16 v18, 0x14

    move/from16 v0, v18

    if-le v2, v0, :cond_2

    .line 178
    :cond_1
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid base zooom level: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    iput-byte v2, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->baseZoomLevel:B

    .line 183
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v17

    .line 184
    .local v17, "zoomLevelMin":B
    if-ltz v17, :cond_3

    const/16 v18, 0x16

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 185
    :cond_3
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid minimum zoom level: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_4
    move/from16 v0, v17

    iput-byte v0, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMin:B

    .line 190
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v16

    .line 191
    .local v16, "zoomLevelMax":B
    if-ltz v16, :cond_5

    const/16 v18, 0x16

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 192
    :cond_5
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid maximum zoom level: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_6
    move/from16 v0, v16

    iput-byte v0, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMax:B

    .line 197
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 198
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid zoom level range: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v8

    .line 203
    .local v8, "startAddress":J
    const-wide/16 v18, 0x46

    cmp-long v18, v8, v18

    if-ltz v18, :cond_8

    cmp-long v18, v8, p2

    if-ltz v18, :cond_9

    .line 204
    :cond_8
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid start address: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :cond_9
    iput-wide v8, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->startAddress:J

    .line 208
    move-wide v5, v8

    .line 209
    .local v5, "indexStartAddress":J
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->isDebugFile:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 211
    const-wide/16 v18, 0x10

    add-long v5, v5, v18

    .line 213
    :cond_a
    iput-wide v5, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->indexStartAddress:J

    .line 216
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v12

    .line 217
    .local v12, "subFileSize":J
    const-wide/16 v18, 0x1

    cmp-long v18, v12, v18

    if-gez v18, :cond_b

    .line 218
    new-instance v18, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "invalid sub-file size: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_b
    iput-wide v12, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->subFileSize:J

    .line 222
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    .line 225
    new-instance v18, Lorg/mapsforge/map/reader/header/SubFileParameter;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Lorg/mapsforge/map/reader/header/SubFileParameter;-><init>(Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;)V

    aput-object v18, v14, v4

    .line 227
    aget-object v18, v14, v4

    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    move-object/from16 v0, v18

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    :cond_c
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v18

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    .line 172
    :cond_d
    add-int/lit8 v18, v4, 0x1

    move/from16 v0, v18

    int-to-byte v4, v0

    goto/16 :goto_1

    .line 231
    .end local v2    # "baseZoomLevel":B
    .end local v5    # "indexStartAddress":J
    .end local v8    # "startAddress":J
    .end local v11    # "subFileParameterBuilder":Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
    .end local v12    # "subFileSize":J
    .end local v16    # "zoomLevelMax":B
    .end local v17    # "zoomLevelMin":B
    :cond_e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lorg/mapsforge/map/reader/header/SubFileParameter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapsforge/map/reader/header/MapFileHeader;->subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 232
    const/4 v3, 0x0

    .local v3, "currentMapFile":I
    :goto_2
    if-ge v3, v7, :cond_10

    .line 233
    aget-object v10, v14, v3

    .line 234
    .local v10, "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    iget-byte v15, v10, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    .local v15, "zoomLevel":B
    :goto_3
    iget-byte v0, v10, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v15, v0, :cond_f

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/MapFileHeader;->subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

    move-object/from16 v18, v0

    aput-object v10, v18, v15

    .line 234
    add-int/lit8 v18, v15, 0x1

    move/from16 v0, v18

    int-to-byte v15, v0

    goto :goto_3

    .line 232
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 238
    .end local v10    # "subFileParameter":Lorg/mapsforge/map/reader/header/SubFileParameter;
    .end local v15    # "zoomLevel":B
    :cond_10
    sget-object v18, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto/16 :goto_0
.end method


# virtual methods
.method public final getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->mapFileInfo:Lorg/mapsforge/map/reader/header/MapFileInfo;

    return-object v0
.end method

.method public final getQueryZoomLevel(B)B
    .locals 1
    .param p1, "zoomLevel"    # B

    .prologue
    .line 63
    iget-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    if-le p1, v0, :cond_1

    .line 64
    iget-byte p1, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMaximum:B

    .line 68
    .end local p1    # "zoomLevel":B
    :cond_0
    :goto_0
    return p1

    .line 65
    .restart local p1    # "zoomLevel":B
    :cond_1
    iget-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    if-ge p1, v0, :cond_0

    .line 66
    iget-byte p1, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->zoomLevelMinimum:B

    goto :goto_0
.end method

.method public final getSubFileParameter(I)Lorg/mapsforge/map/reader/header/SubFileParameter;
    .locals 1
    .param p1, "queryZoomLevel"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->subFileParameters:[Lorg/mapsforge/map/reader/header/SubFileParameter;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final readHeader(Lorg/mapsforge/map/reader/ReadBuffer;J)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 11
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p2, "fileSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v10, 0xaba9500

    const v9, 0x55d4a80

    const/16 v8, 0x20

    const v7, -0x55d4a80

    const v6, -0xaba9500

    .line 92
    const/16 v2, 0x18

    invoke-virtual {p1, v2}, Lorg/mapsforge/map/reader/ReadBuffer;->readFromFile(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    const-string v2, "reading magic byte has failed"

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_0
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    .line 155
    :goto_1
    return-object v2

    .line 92
    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_0
    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mapsforge binary OSM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid magic byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_0

    .line 97
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_2
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v2

    const/16 v3, 0x46

    if-lt v2, v3, :cond_3

    const v3, 0xf4240

    if-le v2, v3, :cond_4

    :cond_3
    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid remaining header size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_2
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v0

    .line 99
    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p1, v2}, Lorg/mapsforge/map/reader/ReadBuffer;->readFromFile(I)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reading header data has failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_5
    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_2

    .line 102
    :cond_6
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    invoke-direct {v1}, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;-><init>()V

    .line 104
    .local v1, "mapFileInfoBuilder":Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unsupported file version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 105
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_3
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v2, v0

    .line 106
    goto/16 :goto_1

    .line 104
    :cond_7
    iput v2, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->fileVersion:I

    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-eqz v4, :cond_9

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid file size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_4
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v0

    .line 111
    goto/16 :goto_1

    .line 109
    :cond_9
    iput-wide p2, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->fileSize:J

    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_4

    .line 114
    :cond_a
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readLong()J

    move-result-wide v2

    const-wide v4, 0x1176592e000L

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid map date: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_5
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_c

    move-object v2, v0

    .line 116
    goto/16 :goto_1

    .line 114
    :cond_b
    iput-wide v2, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->mapDate:J

    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_5

    .line 119
    :cond_c
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v2

    if-lt v2, v7, :cond_d

    if-le v2, v9, :cond_e

    :cond_d
    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid minimum latitude: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_6
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_17

    move-object v2, v0

    .line 121
    goto/16 :goto_1

    .line 119
    :cond_e
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v3

    if-lt v3, v6, :cond_f

    if-le v3, v10, :cond_10

    :cond_f
    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "invalid minimum longitude: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_10
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v4

    if-lt v4, v7, :cond_11

    if-le v4, v9, :cond_12

    :cond_11
    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid maximum latitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_12
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v5

    if-lt v5, v6, :cond_13

    if-le v5, v10, :cond_14

    :cond_13
    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid maximum longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_14
    if-le v2, v4, :cond_15

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "invalid latitude range: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_15
    if-le v3, v5, :cond_16

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "invalid longitude range: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_16
    new-instance v6, Lorg/mapsforge/core/BoundingBox;

    invoke-direct {v6, v2, v3, v4, v5}, Lorg/mapsforge/core/BoundingBox;-><init>(IIII)V

    iput-object v6, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->boundingBox:Lorg/mapsforge/core/BoundingBox;

    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto/16 :goto_6

    .line 124
    :cond_17
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_18

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unsupported tile pixel size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 125
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_7
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_19

    move-object v2, v0

    .line 126
    goto/16 :goto_1

    .line 124
    :cond_18
    iput v2, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->tilePixelSize:I

    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_7

    .line 129
    :cond_19
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mercator"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    new-instance v0, Lorg/mapsforge/map/reader/header/FileOpenResult;

    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unsupported projection: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_8
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1b

    move-object v2, v0

    .line 131
    goto/16 :goto_1

    .line 129
    :cond_1a
    iput-object v2, v1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->projectionName:Ljava/lang/String;

    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_8

    .line 134
    :cond_1b
    invoke-static {p1, v1}, Lorg/mapsforge/map/reader/header/OptionalFields;->readOptionalFields(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object v2, v0

    .line 136
    goto/16 :goto_1

    .line 139
    :cond_1c
    invoke-static {p1, v1}, Lorg/mapsforge/map/reader/header/RequiredFields;->readPoiTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1d

    move-object v2, v0

    .line 141
    goto/16 :goto_1

    .line 144
    :cond_1d
    invoke-static {p1, v1}, Lorg/mapsforge/map/reader/header/RequiredFields;->readWayTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v0

    .line 146
    goto/16 :goto_1

    .line 149
    :cond_1e
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/mapsforge/map/reader/header/MapFileHeader;->readSubFileParameters(Lorg/mapsforge/map/reader/ReadBuffer;JLorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1f

    move-object v2, v0

    .line 151
    goto/16 :goto_1

    .line 154
    :cond_1f
    new-instance v2, Lorg/mapsforge/map/reader/header/MapFileInfo;

    invoke-direct {v2, v1}, Lorg/mapsforge/map/reader/header/MapFileInfo;-><init>(Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    iput-object v2, p0, Lorg/mapsforge/map/reader/header/MapFileHeader;->mapFileInfo:Lorg/mapsforge/map/reader/header/MapFileInfo;

    .line 155
    sget-object v2, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto/16 :goto_1
.end method
