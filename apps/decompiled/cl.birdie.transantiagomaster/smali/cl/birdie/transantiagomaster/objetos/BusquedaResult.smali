.class public final Lcl/birdie/transantiagomaster/objetos/BusquedaResult;
.super Ljava/lang/Object;
.source "BusquedaResult.java"


# instance fields
.field public descripcion:Ljava/lang/String;

.field public pos:Lcl/birdie/toolkit/CacheableLatLng;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcl/birdie/toolkit/LatLng;)V
    .locals 1
    .param p1, "descripcion"    # Ljava/lang/String;
    .param p2, "ll"    # Lcl/birdie/toolkit/LatLng;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->descripcion:Ljava/lang/String;

    .line 12
    new-instance v0, Lcl/birdie/toolkit/CacheableLatLng;

    invoke-direct {v0, p2}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    .line 13
    return-void
.end method
