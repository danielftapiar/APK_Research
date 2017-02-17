.class public Lcl/birdie/toolkit/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public lat:D

.field public lng:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcl/birdie/toolkit/LatLng$1;

    invoke-direct {v0}, Lcl/birdie/toolkit/LatLng$1;-><init>()V

    sput-object v0, Lcl/birdie/toolkit/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 15
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 19
    iput-wide p3, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 20
    return-void
.end method

.method public constructor <init>(Lcl/birdie/toolkit/LatLng;)V
    .locals 2
    .param p1, "l"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-wide v0, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 24
    iget-wide v0, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/GeoPoint;)V
    .locals 4
    .param p1, "pnt"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 29
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 30
    return-void
.end method

.method public static toGeoPoint(DD)Lcom/google/android/maps/GeoPoint;
    .locals 5
    .param p0, "lat"    # D
    .param p2, "lng"    # D

    .prologue
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 58
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v1, p0, v3

    double-to-int v1, v1

    mul-double v2, p2, v3

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final copy(Lcl/birdie/toolkit/LatLng;)V
    .locals 2
    .param p1, "l"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 33
    iget-wide v0, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    .line 34
    iget-wide v0, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    iput-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    .line 35
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final distanciaGrados(Lcl/birdie/toolkit/LatLng;)D
    .locals 8
    .param p1, "ll"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 38
    iget-wide v0, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v2, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v4, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-wide v4, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-wide v6, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final isNull()Z
    .locals 4

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 42
    iget-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toGeoPoint()Lcom/google/android/maps/GeoPoint;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 50
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-wide v1, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-wide v2, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public final toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .prologue
    .line 54
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-wide v1, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v3, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 72
    iget-wide v0, p0, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    return-void
.end method
