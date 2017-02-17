.class public Lorg/osmdroid/bonuspack/routing/RoadLeg;
.super Ljava/lang/Object;
.source "RoadLeg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/osmdroid/bonuspack/routing/RoadLeg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDuration:D

.field public mEndNodeIndex:I

.field public mLength:D

.field public mStartNodeIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/osmdroid/bonuspack/routing/RoadLeg$1;

    invoke-direct {v0}, Lorg/osmdroid/bonuspack/routing/RoadLeg$1;-><init>()V

    sput-object v0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/osmdroid/bonuspack/routing/RoadLeg;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 52
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 53
    iget-wide v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mDuration:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    iget v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mStartNodeIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lorg/osmdroid/bonuspack/routing/RoadLeg;->mEndNodeIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
