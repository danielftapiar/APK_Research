.class public Lcl/birdie/toolkit/CacheableLatLng;
.super Lcl/birdie/toolkit/LatLng;
.source "CacheableLatLng.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcl/birdie/toolkit/CacheableLatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pp:Lcl/birdie/toolkit/PixelPair;

.field private zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcl/birdie/toolkit/CacheableLatLng$1;

    invoke-direct {v0}, Lcl/birdie/toolkit/CacheableLatLng$1;-><init>()V

    sput-object v0, Lcl/birdie/toolkit/CacheableLatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 16
    sget v0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-direct {p0, v0}, Lcl/birdie/toolkit/CacheableLatLng;->setZoomLevel(I)V

    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcl/birdie/toolkit/LatLng;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->zoomLevel:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcl/birdie/toolkit/LatLng;)V
    .locals 4
    .param p1, "ll"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 20
    iget-wide v0, p1, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v2, p1, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 22
    sget v0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-direct {p0, v0}, Lcl/birdie/toolkit/CacheableLatLng;->setZoomLevel(I)V

    .line 23
    return-void
.end method

.method private setZoomLevel(I)V
    .locals 1
    .param p1, "zl"    # I

    .prologue
    .line 31
    iput p1, p0, Lcl/birdie/toolkit/CacheableLatLng;->zoomLevel:I

    .line 32
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v0, :cond_0

    .line 33
    iget v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->zoomLevel:I

    invoke-static {p0, v0}, Lcl/birdie/toolkit/GoogleProjection;->fromLLtoPixel(Lcl/birdie/toolkit/LatLng;I)Lcl/birdie/toolkit/PixelPair;

    move-result-object v0

    iput-object v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->pp:Lcl/birdie/toolkit/PixelPair;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final actualizar()V
    .locals 2

    .prologue
    .line 26
    sget v0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    iget v1, p0, Lcl/birdie/toolkit/CacheableLatLng;->zoomLevel:I

    if-eq v0, v1, :cond_0

    .line 27
    sget v0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-direct {p0, v0}, Lcl/birdie/toolkit/CacheableLatLng;->setZoomLevel(I)V

    .line 28
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 43
    iget-wide v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget-wide v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget v0, p0, Lcl/birdie/toolkit/CacheableLatLng;->zoomLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
