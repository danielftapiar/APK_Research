.class final Lorg/mapsforge/map/reader/header/RequiredFields;
.super Ljava/lang/Object;
.source "RequiredFields.java"


# direct methods
.method static readPoiTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 7
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v1

    .line 160
    .local v1, "numberOfPoiTags":I
    if-gez v1, :cond_0

    .line 161
    new-instance v4, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "invalid number of POI tags: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-object v4

    .line 164
    :cond_0
    new-array v2, v1, [Lorg/mapsforge/core/Tag;

    .line 165
    .local v2, "poiTags":[Lorg/mapsforge/core/Tag;
    const/4 v0, 0x0

    .local v0, "currentTagId":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 167
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "tag":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 169
    new-instance v4, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "POI tag must not be null: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v4, Lorg/mapsforge/core/Tag;

    invoke-direct {v4, v3}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    iput-object v2, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->poiTags:[Lorg/mapsforge/core/Tag;

    .line 174
    sget-object v4, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_0
.end method

.method static readWayTags(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 7
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readShort()I

    move-result v1

    .line 214
    .local v1, "numberOfWayTags":I
    if-gez v1, :cond_0

    .line 215
    new-instance v4, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "invalid number of way tags: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    .line 229
    :goto_0
    return-object v4

    .line 218
    :cond_0
    new-array v3, v1, [Lorg/mapsforge/core/Tag;

    .line 220
    .local v3, "wayTags":[Lorg/mapsforge/core/Tag;
    const/4 v0, 0x0

    .local v0, "currentTagId":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "tag":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 224
    new-instance v4, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "way tag must not be null: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    new-instance v4, Lorg/mapsforge/core/Tag;

    invoke-direct {v4, v2}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    iput-object v3, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->wayTags:[Lorg/mapsforge/core/Tag;

    .line 229
    sget-object v4, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_0
.end method
