.class public Lorg/osmdroid/util/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Lorg/osmdroid/api/IGeoPoint;
.implements Lorg/osmdroid/views/util/constants/MathConstants;
.implements Lorg/osmdroid/util/constants/GeoConstants;
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mAltitude:I

.field private mLatitudeE6:I

.field private mLongitudeE6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lorg/osmdroid/util/GeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/util/GeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    mul-double v0, p1, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 53
    mul-double v0, p3, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 54
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 5
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D
    .param p5, "aAltitude"    # D

    .prologue
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    mul-double v0, p1, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 58
    mul-double v0, p3, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 59
    double-to-int v0, p5

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    .line 60
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 42
    iput p2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 43
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I
    .param p3, "aAltitude"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 47
    iput p2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 48
    iput p3, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8
    .param p1, "aLocation"    # Landroid/location/Location;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/util/GeoPoint$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/osmdroid/util/GeoPoint$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .locals 1
    .param p1, "aGeopoint"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 68
    iget v0, p1, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 69
    iget v0, p1, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    .line 70
    return-void
.end method

.method public static fromCenterBetween(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 4
    .param p0, "geoPointA"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "geoPointB"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    .line 313
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public static fromDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spacer"    # C

    .prologue
    const/4 v3, 0x0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 74
    .local v0, "spacerPos1":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 76
    .local v1, "spacerPos2":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 77
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 81
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    goto :goto_0
.end method

.method public static fromIntString(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2c

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 107
    .local v0, "commaPos1":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 109
    .local v1, "commaPos2":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 110
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 114
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    goto :goto_0
.end method

.method public static fromInvertedDoubleString(Ljava/lang/String;C)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spacer"    # C

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, "spacerPos1":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 92
    .local v1, "spacerPos2":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 93
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    .line 97
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-direct {v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    goto :goto_0
.end method


# virtual methods
.method public bearingTo(Lorg/osmdroid/api/IGeoPoint;)D
    .locals 26
    .param p1, "other"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x412e848000000000L    # 1000000.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 270
    .local v12, "lat1":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x412e848000000000L    # 1000000.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 271
    .local v16, "long1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x412e848000000000L    # 1000000.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .line 272
    .local v14, "lat2":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x412e848000000000L    # 1000000.0

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 273
    .local v18, "long2":D
    sub-double v10, v18, v16

    .line 274
    .local v10, "delta_long":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v2, v20, v22

    .line 275
    .local v2, "a":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v4, v20, v22

    .line 277
    .local v4, "b":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 278
    .local v6, "bearing":D
    const-wide v20, 0x4076800000000000L    # 360.0

    add-double v20, v20, v6

    const-wide v22, 0x4076800000000000L    # 360.0

    rem-double v8, v20, v22

    .line 279
    .local v8, "bearing_normalized":D
    return-wide v8
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->clone()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/util/GeoPoint;
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    iget v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    iget v3, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    invoke-direct {v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(III)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;
    .locals 27
    .param p1, "aDistanceInMeters"    # D
    .param p3, "aBearingInDegrees"    # F

    .prologue
    .line 291
    const-wide v18, 0x415854a640000000L    # 6378137.0

    div-double v4, p1, v18

    .line 294
    .local v4, "dist":D
    const v3, 0x3c8efa35

    mul-float v2, v3, p3

    .line 297
    .local v2, "brng":F
    const v3, 0x3c8efa35

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v3, v3, v18

    float-to-double v0, v3

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L    # 1000000.0

    div-double v6, v18, v20

    .line 298
    .local v6, "lat1":D
    const v3, 0x3c8efa35

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v3, v3, v18

    float-to-double v0, v3

    move-wide/from16 v18, v0

    const-wide v20, 0x412e848000000000L    # 1000000.0

    div-double v12, v18, v20

    .line 300
    .local v12, "lon1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    float-to-double v0, v2

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    .line 302
    .local v8, "lat2":D
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    add-double v14, v12, v18

    .line 306
    .local v14, "lon2":D
    const-wide v18, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double v10, v8, v18

    .line 307
    .local v10, "lat2deg":D
    const-wide v18, 0x3f91df46a0000000L    # 0.01745329238474369

    div-double v16, v14, v18

    .line 309
    .local v16, "lon2deg":D
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    move-wide/from16 v0, v16

    invoke-direct {v3, v10, v11, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v3
.end method

.method public distanceTo(Lorg/osmdroid/api/IGeoPoint;)I
    .locals 26
    .param p1, "other"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 245
    const v22, 0x3c8efa35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x412e848000000000L    # 1000000.0

    div-double v2, v22, v24

    .line 246
    .local v2, "a1":D
    const v22, 0x3c8efa35

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x412e848000000000L    # 1000000.0

    div-double v4, v22, v24

    .line 247
    .local v4, "a2":D
    const v22, 0x3c8efa35

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitudeE6()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x412e848000000000L    # 1000000.0

    div-double v6, v22, v24

    .line 248
    .local v6, "b1":D
    const v22, 0x3c8efa35

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitudeE6()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x412e848000000000L    # 1000000.0

    div-double v8, v22, v24

    .line 250
    .local v8, "b2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 251
    .local v10, "cosa1":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 253
    .local v12, "cosb1":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v10

    mul-double v22, v22, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v14, v22, v24

    .line 255
    .local v14, "t1":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v22, v22, v10

    mul-double v22, v22, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v16, v22, v24

    .line 257
    .local v16, "t2":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v18, v22, v24

    .line 259
    .local v18, "t3":D
    add-double v22, v14, v16

    add-double v22, v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v20

    .line 261
    .local v20, "tt":D
    const-wide v22, 0x415854a640000000L    # 6378137.0

    mul-double v22, v22, v20

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    return v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 193
    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 194
    .local v0, "rhs":Lorg/osmdroid/util/GeoPoint;
    iget v3, v0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    iget v4, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    iget v4, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    iget v4, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getAltitude()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    return v0
.end method

.method public getLatitude()D
    .locals 4

    .prologue
    .line 143
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getLatitudeE6()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    return v0
.end method

.method public getLongitude()D
    .locals 4

    .prologue
    .line 138
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getLongitudeE6()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setAltitude(I)V
    .locals 0
    .param p1, "aAltitude"    # I

    .prologue
    .line 159
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    .line 160
    return-void
.end method

.method public setCoordsE6(II)V
    .locals 0
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 163
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 164
    iput p2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 165
    return-void
.end method

.method public setLatitudeE6(I)V
    .locals 0
    .param p1, "aLatitudeE6"    # I

    .prologue
    .line 155
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 156
    return-void
.end method

.method public setLongitudeE6(I)V
    .locals 0
    .param p1, "aLongitudeE6"    # I

    .prologue
    .line 151
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 152
    return-void
.end method

.method public toDoubleString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInvertedDoubleString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    int-to-double v2, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 218
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return-void
.end method
