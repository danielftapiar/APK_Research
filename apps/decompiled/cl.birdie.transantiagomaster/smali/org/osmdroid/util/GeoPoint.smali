.class public Lorg/osmdroid/util/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/osmdroid/api/IGeoPoint;


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


# instance fields
.field private mAltitude:I

.field private mLatitudeE6:I

.field private mLongitudeE6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lorg/osmdroid/util/GeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/util/GeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/util/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 4
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

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    iget v2, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 184
    .local v0, "rhs":Lorg/osmdroid/util/GeoPoint;
    iget v3, v0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    iget v4, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    iget v4, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    iget v4, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final getLatitudeE6()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    return v0
.end method

.method public final getLongitudeE6()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setLatitudeE6(I)V
    .locals 0
    .param p1, "aLatitudeE6"    # I

    .prologue
    .line 145
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    .line 146
    return-void
.end method

.method public final setLongitudeE6(I)V
    .locals 0
    .param p1, "aLongitudeE6"    # I

    .prologue
    .line 141
    iput p1, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
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
    .line 208
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLatitudeE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mLongitudeE6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lorg/osmdroid/util/GeoPoint;->mAltitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void
.end method
