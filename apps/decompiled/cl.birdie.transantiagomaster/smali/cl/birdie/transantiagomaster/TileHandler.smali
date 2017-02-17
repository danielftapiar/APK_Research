.class public final Lcl/birdie/transantiagomaster/TileHandler;
.super Ljava/lang/Object;
.source "TileHandler.java"


# static fields
.field static gpsPP:Lcl/birdie/toolkit/PixelPair;

.field private static opts:Landroid/graphics/BitmapFactory$Options;

.field public static volatile refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    sput-object v0, Lcl/birdie/transantiagomaster/TileHandler;->opts:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 23
    return-void
.end method

.method public static inicializar$faab20d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->inicializar()V

    .line 30
    sput-boolean v1, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 32
    new-instance v0, Lcl/birdie/toolkit/PixelPair;

    invoke-direct {v0, v1, v1}, Lcl/birdie/toolkit/PixelPair;-><init>(II)V

    sput-object v0, Lcl/birdie/transantiagomaster/TileHandler;->gpsPP:Lcl/birdie/toolkit/PixelPair;

    .line 33
    return-void
.end method

.method public static recalcularRango(Lcl/birdie/toolkit/Posicion;)V
    .locals 3
    .param p0, "p"    # Lcl/birdie/toolkit/Posicion;

    .prologue
    .line 36
    iget-boolean v1, p0, Lcl/birdie/toolkit/Posicion;->valid:Z

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Lcl/birdie/toolkit/LatLng;

    iget-object v1, p0, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    invoke-direct {v0, v1}, Lcl/birdie/toolkit/LatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    .line 41
    .local v0, "ll":Lcl/birdie/toolkit/LatLng;
    sget-object v2, Lcl/birdie/transantiagomaster/TileHandler;->gpsPP:Lcl/birdie/toolkit/PixelPair;

    monitor-enter v2

    .line 42
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v1, v0}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getSeguirPosicion()Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    move-result-object v1

    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    if-eq v1, v2, :cond_0

    .line 45
    iget-object v1, p0, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 49
    .end local v0    # "ll":Lcl/birdie/toolkit/LatLng;
    :cond_0
    return-void

    .line 41
    .restart local v0    # "ll":Lcl/birdie/toolkit/LatLng;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
