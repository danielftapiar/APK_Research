.class public final Lcl/birdie/transantiagomaster/newobjetos/Marker;
.super Lcom/google/android/maps/OverlayItem;
.source "Marker.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/newobjetos/IMarker;


# instance fields
.field private descripcion:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imagen:Ljava/lang/String;

.field private lat:D

.field private lng:D

.field private nombre:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nombre"    # Ljava/lang/String;
    .param p3, "lat"    # D
    .param p5, "lng"    # D
    .param p7, "descripcion"    # Ljava/lang/String;
    .param p8, "imagen"    # Ljava/lang/String;
    .param p9, "url"    # Ljava/lang/String;

    .prologue
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 9
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v1, p3, v3

    double-to-int v1, v1

    mul-double v2, p5, v3

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {p0, v0, p2, p7}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->id:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->nombre:Ljava/lang/String;

    .line 12
    iput-wide p3, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->lat:D

    .line 13
    iput-wide p5, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->lng:D

    .line 14
    iput-object p7, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->descripcion:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->imagen:Ljava/lang/String;

    .line 16
    iput-object p9, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->url:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final getImagen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->imagen:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->lat:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->lng:D

    return-wide v0
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->nombre:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Marker;->url:Ljava/lang/String;

    return-object v0
.end method
