.class public Lcl/birdie/transantiagomaster/newobjetos/Paradero;
.super Ljava/lang/Object;
.source "Paradero.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcl/birdie/transantiagomaster/newobjetos/IFavorito;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public codigo:Ljava/lang/String;

.field public latlng:Lcl/birdie/toolkit/CacheableLatLng;

.field public servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

.field public texto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero$1;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/newobjetos/Paradero$1;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 77
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "codigo"    # Ljava/lang/String;
    .param p6, "texto"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p5, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    .line 19
    new-instance v0, Lcl/birdie/toolkit/CacheableLatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    return-object v0
.end method

.method public final getGeoPoint()Lcom/google/android/maps/GeoPoint;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {v0}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    return-object v0
.end method

.method public final getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 61
    return-void
.end method
