.class public Lorg/osmdroid/contributor/RouteRecorder;
.super Ljava/lang/Object;
.source "RouteRecorder.java"


# instance fields
.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/contributor/RouteRecorder;->mRecords:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/location/Location;I)V
    .locals 8
    .param p1, "aLocation"    # Landroid/location/Location;
    .param p2, "aNumSatellites"    # I

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 48
    iget-object v0, p0, Lorg/osmdroid/contributor/RouteRecorder;->mRecords:Ljava/util/ArrayList;

    new-instance v1, Lorg/osmdroid/contributor/util/RecordedGeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;-><init>(IIJI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public add(Lorg/osmdroid/util/GeoPoint;I)V
    .locals 7
    .param p1, "aGeoPoint"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "aNumSatellites"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lorg/osmdroid/contributor/RouteRecorder;->mRecords:Ljava/util/ArrayList;

    new-instance v1, Lorg/osmdroid/contributor/util/RecordedGeoPoint;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;-><init>(IIJI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public getRecordedGeoPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/osmdroid/contributor/RouteRecorder;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method
