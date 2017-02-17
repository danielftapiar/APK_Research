.class public final Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
.super Lcom/google/android/maps/OverlayItem;
.source "RelativeMarker.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/newobjetos/IMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    }
.end annotation


# instance fields
.field public comentarios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;",
            ">;"
        }
    .end annotation
.end field

.field private descripcion:Ljava/lang/String;

.field private lat:D

.field private lng:D

.field private nombre:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 5
    .param p1, "nom"    # Ljava/lang/String;
    .param p2, "descripcion"    # Ljava/lang/String;
    .param p3, "lat"    # D
    .param p5, "lng"    # D

    .prologue
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 67
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    mul-double v1, p3, v3

    double-to-int v1, v1

    mul-double v2, p5, v3

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {p0, v0, p1, p1}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->comentarios:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->nombre:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->descripcion:Ljava/lang/String;

    .line 70
    iput-wide p3, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->lat:D

    .line 71
    iput-wide p5, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->lng:D

    .line 79
    return-void
.end method


# virtual methods
.method public final addComentario(Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;)V
    .locals 1
    .param p1, "c"    # Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    .prologue
    .line 63
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->comentarios:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public final getDescripcion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->descripcion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->lat:D

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->lng:D

    return-wide v0
.end method

.method public final getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->nombre:Ljava/lang/String;

    return-object v0
.end method
