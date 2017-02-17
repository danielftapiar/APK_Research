.class public final Lcl/birdie/transantiagomaster/newobjetos/Bip;
.super Ljava/lang/Object;
.source "Bip.java"


# instance fields
.field public cliente:Ljava/lang/String;

.field public direccion:Ljava/lang/String;

.field public id:I

.field public latlng:Lcl/birdie/toolkit/CacheableLatLng;

.field public tipo:I


# direct methods
.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "nombre"    # Ljava/lang/String;
    .param p6, "descripcion"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcl/birdie/toolkit/CacheableLatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Bip;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 15
    iput-object p5, p0, Lcl/birdie/transantiagomaster/newobjetos/Bip;->cliente:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcl/birdie/transantiagomaster/newobjetos/Bip;->direccion:Ljava/lang/String;

    .line 17
    return-void
.end method
