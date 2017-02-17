.class public Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint;
.super Lcom/google/android/maps/GeoPoint;
.source "ParcelableGeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint$1;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint$1;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 21
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint;->getLatitudeE6()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/ParcelableGeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    return-void
.end method
