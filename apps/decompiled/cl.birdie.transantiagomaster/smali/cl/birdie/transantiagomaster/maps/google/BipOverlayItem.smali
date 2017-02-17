.class public final Lcl/birdie/transantiagomaster/maps/google/BipOverlayItem;
.super Lcom/google/android/maps/OverlayItem;
.source "BipOverlayItem.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/IOverlayItemContainer;


# instance fields
.field bip:Lcl/birdie/transantiagomaster/newobjetos/Bip;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/newobjetos/Bip;)V
    .locals 3
    .param p1, "param"    # Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .prologue
    .line 12
    iget-object v0, p1, Lcl/birdie/transantiagomaster/newobjetos/Bip;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v0}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p1, Lcl/birdie/transantiagomaster/newobjetos/Bip;->cliente:Ljava/lang/String;

    iget-object v2, p1, Lcl/birdie/transantiagomaster/newobjetos/Bip;->direccion:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/google/BipOverlayItem;->bip:Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 14
    return-void
.end method


# virtual methods
.method public final getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/BipOverlayItem;->bip:Lcl/birdie/transantiagomaster/newobjetos/Bip;

    return-object v0
.end method
