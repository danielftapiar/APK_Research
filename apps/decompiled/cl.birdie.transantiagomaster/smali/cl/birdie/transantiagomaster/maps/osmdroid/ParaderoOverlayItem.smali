.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;
.super Lorg/osmdroid/views/overlay/OverlayItem;
.source "ParaderoOverlayItem.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/IOverlayItemContainer;


# instance fields
.field paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 3
    .param p1, "par"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 12
    iget-object v0, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    iget-object v1, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    iget-object v2, p1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v2}, Lcl/birdie/toolkit/CacheableLatLng;->toOSMDroidGeoPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 13
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 14
    return-void
.end method


# virtual methods
.method public final getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/ParaderoOverlayItem;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    return-object v0
.end method
