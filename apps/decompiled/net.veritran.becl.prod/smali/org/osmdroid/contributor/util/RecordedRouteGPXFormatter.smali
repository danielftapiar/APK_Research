.class public Lorg/osmdroid/contributor/util/RecordedRouteGPXFormatter;
.super Ljava/lang/Object;
.source "RecordedRouteGPXFormatter.java"

# interfaces
.implements Lorg/osmdroid/contributor/util/constants/OpenStreetMapContributorConstants;


# static fields
.field private static final GPX_TAG:Ljava/lang/String; = "<gpx version=\"1.1\" creator=\"%s\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.topografix.com/GPX/1/1\" xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">"

.field private static final GPX_TAG_CLOSE:Ljava/lang/String; = "</gpx>"

.field private static final GPX_TAG_TIME:Ljava/lang/String; = "<time>%s</time>"

.field private static final GPX_TAG_TRACK:Ljava/lang/String; = "<trk>"

.field private static final GPX_TAG_TRACK_CLOSE:Ljava/lang/String; = "</trk>"

.field private static final GPX_TAG_TRACK_NAME:Ljava/lang/String; = "<name>%s</name>"

.field private static final GPX_TAG_TRACK_SEGMENT:Ljava/lang/String; = "<trkseg>"

.field private static final GPX_TAG_TRACK_SEGMENT_CLOSE:Ljava/lang/String; = "</trkseg>"

.field public static final GPX_TAG_TRACK_SEGMENT_POINT:Ljava/lang/String; = "<trkpt lat=\"%f\" lon=\"%f\">"

.field public static final GPX_TAG_TRACK_SEGMENT_POINT_CLOSE:Ljava/lang/String; = "</trkpt>"

.field public static final GPX_TAG_TRACK_SEGMENT_POINT_ELE:Ljava/lang/String; = "<ele>%d</ele>"

.field public static final GPX_TAG_TRACK_SEGMENT_POINT_SAT:Ljava/lang/String; = "<sat>%d</sat>"

.field public static final GPX_TAG_TRACK_SEGMENT_POINT_TIME:Ljava/lang/String; = "<time>%s</time>"

.field private static final GPX_VERSION:Ljava/lang/String; = "1.1"

.field private static final XML_VERSION:Ljava/lang/String; = "<?xml version=\"1.0\"?>"

.field private static final formatterCompleteDateTime:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'_\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/contributor/util/RecordedRouteGPXFormatter;->formatterCompleteDateTime:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "someRecords":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/contributor/util/RecordedGeoPoint;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 90
    if-nez p0, :cond_0

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Records may not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 94
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Records size == 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 98
    .local v0, "f":Ljava/util/Formatter;
    const-string v4, "<?xml version=\"1.0\"?>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v4, "<gpx version=\"1.1\" creator=\"%s\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.topografix.com/GPX/1/1\" xsi:schemaLocation=\"http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd\">"

    new-array v5, v13, [Ljava/lang/Object;

    const-string v6, "AndNav - http://www.andnav.org - Android Navigation System"

    aput-object v6, v5, v12

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 100
    const-string v4, "<time>%s</time>"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/osmdroid/contributor/util/Util;->convertTimestampToUTCString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 101
    const-string v4, "<trk>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v5, "<name>%s</name>"

    new-array v6, v13, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PUT_YOUR_USERNAME_HERE--"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/osmdroid/contributor/util/RecordedRouteGPXFormatter;->formatterCompleteDateTime:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/contributor/util/RecordedGeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getTimeStamp()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/osmdroid/contributor/util/RecordedRouteGPXFormatter;->formatterCompleteDateTime:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/contributor/util/RecordedGeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getTimeStamp()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 111
    const-string v4, "<trkseg>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/contributor/util/RecordedGeoPoint;

    .line 114
    .local v2, "rgp":Lorg/osmdroid/contributor/util/RecordedGeoPoint;
    const-string v4, "<trkpt lat=\"%f\" lon=\"%f\">"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getLatitudeAsDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-virtual {v2}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getLongitudeAsDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 116
    const-string v4, "<time>%s</time>"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/osmdroid/contributor/util/Util;->convertTimestampToUTCString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 118
    iget v4, v2, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->mNumSatellites:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    .line 119
    const-string v4, "<sat>%d</sat>"

    new-array v5, v13, [Ljava/lang/Object;

    iget v6, v2, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->mNumSatellites:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 120
    :cond_2
    const-string v4, "</trkpt>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 123
    .end local v2    # "rgp":Lorg/osmdroid/contributor/util/RecordedGeoPoint;
    :cond_3
    const-string v4, "</trkseg>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</trk>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</gpx>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
