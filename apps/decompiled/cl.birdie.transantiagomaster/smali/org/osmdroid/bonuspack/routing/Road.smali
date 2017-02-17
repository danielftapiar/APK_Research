.class public Lorg/osmdroid/bonuspack/routing/Road;
.super Ljava/lang/Object;
.source "Road.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/bonuspack/routing/Road;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

.field public mDuration:D

.field public mLegs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/bonuspack/routing/RoadLeg;",
            ">;"
        }
    .end annotation
.end field

.field public mLength:D

.field public mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/bonuspack/routing/RoadNode;",
            ">;"
        }
    .end annotation
.end field

.field public mRouteHigh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteLow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lorg/osmdroid/bonuspack/routing/Road$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/Road$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/routing/Road;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    iput-wide v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    iput-wide v1, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteLow:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    iput-object v3, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    .line 213
    const-class v0, Lorg/osmdroid/bonuspack/routing/RoadNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    .line 214
    const-class v0, Lorg/osmdroid/bonuspack/routing/RoadLeg;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    .line 215
    const-class v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    .line 216
    const-class v0, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/BoundingBoxE6;

    iput-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/routing/Road;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 191
    iget v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 193
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mDuration:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 194
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 195
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mLegs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 196
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mRouteHigh:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 197
    iget-object v0, p0, Lorg/osmdroid/bonuspack/routing/Road;->mBoundingBox:Lorg/osmdroid/util/BoundingBoxE6;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    return-void
.end method
