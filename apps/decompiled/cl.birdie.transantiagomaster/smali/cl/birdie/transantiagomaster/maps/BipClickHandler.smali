.class public final Lcl/birdie/transantiagomaster/maps/BipClickHandler;
.super Ljava/lang/Object;
.source "BipClickHandler.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/ClickHandler;


# instance fields
.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 0
    .param p1, "l"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/BipClickHandler;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 16
    return-void
.end method


# virtual methods
.method public final click$640198d7(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 20
    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 34
    .end local p1    # "item":Ljava/lang/Object;
    :goto_0
    return-void

    .line 23
    .restart local p1    # "item":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcl/birdie/transantiagomaster/maps/IOverlayItemContainer;

    .line 24
    .end local p1    # "item":Ljava/lang/Object;
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/maps/IOverlayItemContainer;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 27
    .local v0, "b":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bipActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 30
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Bip;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v1}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 31
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/BipClickHandler;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSetModoNavegacion(I)V

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    goto :goto_0
.end method
