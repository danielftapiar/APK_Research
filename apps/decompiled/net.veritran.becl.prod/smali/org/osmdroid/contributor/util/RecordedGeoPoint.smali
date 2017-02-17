.class public Lorg/osmdroid/contributor/util/RecordedGeoPoint;
.super Lorg/osmdroid/util/GeoPoint;
.source "RecordedGeoPoint.java"

# interfaces
.implements Lorg/osmdroid/contributor/util/constants/OpenStreetMapContributorConstants;


# static fields
.field private static final serialVersionUID:J = 0x65605d85bcee6dbeL


# instance fields
.field protected final mNumSatellites:I

.field protected final mTimeStamp:J


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1, "latitudeE6"    # I
    .param p2, "longitudeE6"    # I

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, -0x80000000

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;-><init>(IIJI)V

    .line 33
    return-void
.end method

.method public constructor <init>(IIJI)V
    .locals 1
    .param p1, "latitudeE6"    # I
    .param p2, "longitudeE6"    # I
    .param p3, "aTimeStamp"    # J
    .param p5, "aNumSatellites"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 38
    iput-wide p3, p0, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->mTimeStamp:J

    .line 39
    iput p5, p0, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->mNumSatellites:I

    .line 40
    return-void
.end method


# virtual methods
.method public getLatitudeAsDouble()D
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitudeAsDouble()D
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumSatellites()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->mNumSatellites:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/osmdroid/contributor/util/RecordedGeoPoint;->mTimeStamp:J

    return-wide v0
.end method
