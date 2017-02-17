.class public final Lcl/birdie/transantiagomaster/objetos/Placemark;
.super Ljava/lang/Object;
.source "Placemark.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/objetos/Dibujable;


# instance fields
.field public icon:Lcl/birdie/transantiagomaster/objetos/PlacemarkIcon;

.field public pos:Lcl/birdie/toolkit/CacheableLatLng;


# direct methods
.method public constructor <init>(Lcl/birdie/toolkit/LatLng;)V
    .locals 1
    .param p1, "ll"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcl/birdie/transantiagomaster/objetos/PlacemarkIcon;->defaultIcon:Lcl/birdie/transantiagomaster/objetos/PlacemarkIcon;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/Placemark;->icon:Lcl/birdie/transantiagomaster/objetos/PlacemarkIcon;

    .line 15
    new-instance v0, Lcl/birdie/toolkit/CacheableLatLng;

    invoke-direct {v0, p1}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/Placemark;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    .line 16
    return-void
.end method


# virtual methods
.method public final calcularPosicionPromedio()Lcl/birdie/toolkit/LatLng;
    .locals 5

    .prologue
    .line 42
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/objetos/Placemark;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v1, v1, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    iget-object v3, p0, Lcl/birdie/transantiagomaster/objetos/Placemark;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v3, v3, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    return-object v0
.end method
