.class public Lorg/osmdroid/bonuspack/location/POI;
.super Ljava/lang/Object;
.source "POI.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/bonuspack/location/POI;",
            ">;"
        }
    .end annotation
.end field

.field protected static MAX_LOADING_ATTEMPTS:I

.field public static POI_SERVICE_FLICKR:I

.field public static POI_SERVICE_GEONAMES_WIKIPEDIA:I

.field public static POI_SERVICE_NOMINATIM:I

.field public static POI_SERVICE_PICASA:I

.field private static mThumbnailCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;


# instance fields
.field public mCategory:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mId:J

.field public mLocation:Lorg/osmdroid/util/GeoPoint;

.field public mRank:I

.field public mServiceId:I

.field public mThumbnail:Landroid/graphics/Bitmap;

.field protected mThumbnailLoadingFailures:I

.field public mThumbnailPath:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x64

    sput v0, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_NOMINATIM:I

    .line 21
    const/16 v0, 0xc8

    sput v0, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_GEONAMES_WIKIPEDIA:I

    .line 22
    const/16 v0, 0x12c

    sput v0, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_FLICKR:I

    .line 23
    const/16 v0, 0x190

    sput v0, Lorg/osmdroid/bonuspack/location/POI;->POI_SERVICE_PICASA:I

    .line 28
    new-instance v0, Lorg/osmdroid/bonuspack/utils/WebImageCache;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/utils/WebImageCache;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailCache:Lorg/osmdroid/bonuspack/utils/WebImageCache;

    .line 60
    const/4 v0, 0x2

    sput v0, Lorg/osmdroid/bonuspack/location/POI;->MAX_LOADING_ATTEMPTS:I

    .line 159
    new-instance v0, Lorg/osmdroid/bonuspack/location/POI$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/location/POI$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/location/POI;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mServiceId:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mId:J

    .line 171
    const-class v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    .line 176
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mRank:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailLoadingFailures:I

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/location/POI;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    iget v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mServiceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lorg/osmdroid/bonuspack/location/POI;->mThumbnailLoadingFailures:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
