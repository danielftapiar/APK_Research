.class final Lorg/mapsforge/map/reader/header/OptionalFields;
.super Ljava/lang/Object;
.source "OptionalFields.java"


# instance fields
.field comment:Ljava/lang/String;

.field createdBy:Ljava/lang/String;

.field final hasComment:Z

.field final hasCreatedBy:Z

.field final hasLanguagePreference:Z

.field final hasStartPosition:Z

.field final hasStartZoomLevel:Z

.field final isDebugFile:Z

.field languagePreference:Ljava/lang/String;

.field startPosition:Lorg/mapsforge/core/GeoPoint;

.field startZoomLevel:Ljava/lang/Byte;


# direct methods
.method private constructor <init>(B)V
    .locals 3
    .param p1, "flags"    # B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->isDebugFile:Z

    .line 86
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartPosition:Z

    .line 87
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartZoomLevel:Z

    .line 88
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasLanguagePreference:Z

    .line 89
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasComment:Z

    .line 90
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasCreatedBy:Z

    .line 91
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto :goto_1

    :cond_2
    move v0, v2

    .line 87
    goto :goto_2

    :cond_3
    move v0, v2

    .line 88
    goto :goto_3

    :cond_4
    move v0, v2

    .line 89
    goto :goto_4

    :cond_5
    move v1, v2

    .line 90
    goto :goto_5
.end method

.method static readOptionalFields(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)Lorg/mapsforge/map/reader/header/FileOpenResult;
    .locals 6
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .prologue
    .line 62
    new-instance v1, Lorg/mapsforge/map/reader/header/OptionalFields;

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/OptionalFields;-><init>(B)V

    .line 63
    .local v1, "optionalFields":Lorg/mapsforge/map/reader/header/OptionalFields;
    iput-object v1, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    .line 65
    iget-boolean v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartPosition:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v3

    const v2, -0x55d4a80

    if-lt v3, v2, :cond_0

    const v2, 0x55d4a80

    if-le v3, v2, :cond_1

    :cond_0
    new-instance v2, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid map start latitude: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_5

    move-object v0, v2

    .line 66
    .local v0, "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_1
    invoke-virtual {v0}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_f

    .line 69
    .end local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :goto_2
    return-object v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v4

    const v2, -0xaba9500

    if-lt v4, v2, :cond_2

    const v2, 0xaba9500

    if-le v4, v2, :cond_3

    :cond_2
    new-instance v2, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "invalid map start longitude: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/mapsforge/core/GeoPoint;

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/core/GeoPoint;-><init>(II)V

    iput-object v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->startPosition:Lorg/mapsforge/core/GeoPoint;

    :cond_4
    sget-object v2, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_0

    :cond_5
    iget-boolean v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartZoomLevel:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v3

    if-ltz v3, :cond_6

    const/16 v2, 0x16

    if-le v3, v2, :cond_7

    :cond_6
    new-instance v2, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid map start zoom level: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v0, v2

    goto :goto_1

    :cond_7
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->startZoomLevel:Ljava/lang/Byte;

    :cond_8
    sget-object v2, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_3

    :cond_9
    iget-boolean v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->hasLanguagePreference:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_a

    new-instance v2, Lorg/mapsforge/map/reader/header/FileOpenResult;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid language preference: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/reader/header/FileOpenResult;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2}, Lorg/mapsforge/map/reader/header/FileOpenResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_c

    move-object v0, v2

    goto/16 :goto_1

    :cond_a
    iput-object v3, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->languagePreference:Ljava/lang/String;

    :cond_b
    sget-object v2, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto :goto_4

    :cond_c
    iget-boolean v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->hasComment:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->comment:Ljava/lang/String;

    :cond_d
    iget-boolean v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->hasCreatedBy:Z

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mapsforge/map/reader/header/OptionalFields;->createdBy:Ljava/lang/String;

    :cond_e
    sget-object v2, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    move-object v0, v2

    goto/16 :goto_1

    .line 69
    .restart local v0    # "fileOpenResult":Lorg/mapsforge/map/reader/header/FileOpenResult;
    :cond_f
    sget-object v0, Lorg/mapsforge/map/reader/header/FileOpenResult;->SUCCESS:Lorg/mapsforge/map/reader/header/FileOpenResult;

    goto/16 :goto_2
.end method
