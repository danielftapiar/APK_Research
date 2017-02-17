.class public Lorg/osmdroid/util/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Lorg/osmdroid/api/IPosition;


# instance fields
.field private mBearing:F

.field private mHasBearing:Z

.field private mHasZoomLevel:Z

.field private final mLatitude:D

.field private final mLongitude:D

.field private mZoomLevel:F


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lorg/osmdroid/util/Position;->mLatitude:D

    .line 15
    iput-wide p3, p0, Lorg/osmdroid/util/Position;->mLongitude:D

    .line 16
    return-void
.end method


# virtual methods
.method public getBearing()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/osmdroid/util/Position;->mBearing:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/osmdroid/util/Position;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/osmdroid/util/Position;->mLongitude:D

    return-wide v0
.end method

.method public getZoomLevel()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/osmdroid/util/Position;->mZoomLevel:F

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/osmdroid/util/Position;->mHasBearing:Z

    return v0
.end method

.method public hasZoomLevel()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/osmdroid/util/Position;->mHasZoomLevel:Z

    return v0
.end method

.method public setBearing(F)V
    .locals 1
    .param p1, "aBearing"    # F

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/Position;->mHasBearing:Z

    .line 40
    iput p1, p0, Lorg/osmdroid/util/Position;->mBearing:F

    .line 41
    return-void
.end method

.method public setZoomLevel(F)V
    .locals 1
    .param p1, "aZoomLevel"    # F

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/Position;->mHasZoomLevel:Z

    .line 55
    iput p1, p0, Lorg/osmdroid/util/Position;->mZoomLevel:F

    .line 56
    return-void
.end method
