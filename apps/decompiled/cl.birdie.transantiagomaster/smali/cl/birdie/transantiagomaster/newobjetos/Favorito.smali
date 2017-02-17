.class public final Lcl/birdie/transantiagomaster/newobjetos/Favorito;
.super Ljava/lang/Object;
.source "Favorito.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/newobjetos/IFavorito;


# instance fields
.field description:Ljava/lang/String;

.field name:Ljava/lang/String;

.field point:Lcom/google/android/maps/GeoPoint;

.field tipoFavorito:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "tipofav"    # I
    .param p2, "nom"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "lat"    # I
    .param p5, "lng"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 16
    :goto_0
    :pswitch_0
    iput-object p2, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->name:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->description:Ljava/lang/String;

    .line 18
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->point:Lcom/google/android/maps/GeoPoint;

    .line 22
    :goto_1
    return-void

    .line 13
    :pswitch_1
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->tipoFavorito:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    goto :goto_0

    .line 14
    :pswitch_2
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->tipoFavorito:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, p4, p5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->point:Lcom/google/android/maps/GeoPoint;

    goto :goto_1

    .line 12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getGeoPoint()Lcom/google/android/maps/GeoPoint;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->point:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Favorito;->tipoFavorito:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    return-object v0
.end method
