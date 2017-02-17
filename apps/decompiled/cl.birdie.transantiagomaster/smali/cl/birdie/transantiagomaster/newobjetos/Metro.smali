.class public final Lcl/birdie/transantiagomaster/newobjetos/Metro;
.super Ljava/lang/Object;
.source "Metro.java"


# instance fields
.field public id:I

.field public latlng:Lcl/birdie/toolkit/CacheableLatLng;

.field public lineas:[Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

.field public nombre:Ljava/lang/String;


# direct methods
.method public constructor <init>(DDLjava/lang/String;)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "nombre"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcl/birdie/toolkit/CacheableLatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Metro;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 14
    iput-object p5, p0, Lcl/birdie/transantiagomaster/newobjetos/Metro;->nombre:Ljava/lang/String;

    .line 15
    return-void
.end method
