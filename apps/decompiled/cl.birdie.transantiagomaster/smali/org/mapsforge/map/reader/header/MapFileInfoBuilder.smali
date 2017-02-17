.class final Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;
.super Ljava/lang/Object;
.source "MapFileInfoBuilder.java"


# instance fields
.field boundingBox:Lorg/mapsforge/core/BoundingBox;

.field fileSize:J

.field fileVersion:I

.field mapDate:J

.field numberOfSubFiles:B

.field optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

.field poiTags:[Lorg/mapsforge/core/Tag;

.field projectionName:Ljava/lang/String;

.field tilePixelSize:I

.field wayTags:[Lorg/mapsforge/core/Tag;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
