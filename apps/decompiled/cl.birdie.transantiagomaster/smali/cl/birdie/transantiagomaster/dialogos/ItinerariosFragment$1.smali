.class final Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;
.super Ljava/lang/Object;
.source "ItinerariosFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 106
    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v3}, Lcl/birdie/toolkit/LatLng;->isNull()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getLatLng()Lcl/birdie/toolkit/LatLng;

    move-result-object v1

    .line 111
    .local v1, "ref":Lcl/birdie/toolkit/LatLng;
    :goto_0
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 112
    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getSentido()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->buscarPosicion(Lcl/birdie/toolkit/LatLng;I)Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;

    move-result-object v2

    .line 113
    .local v2, "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    if-eqz v2, :cond_3

    .line 114
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 115
    invoke-virtual {v3, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setParaderoSeleccionado(Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;)V

    .line 121
    :goto_1
    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 122
    invoke-static {v5}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V

    .line 123
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 124
    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v0

    .line 125
    .local v0, "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    if-eqz v0, :cond_0

    .line 126
    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 130
    :cond_0
    sput-boolean v5, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 131
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowMapa()V

    .line 133
    :cond_1
    return-void

    .line 109
    .end local v0    # "par":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v1    # "ref":Lcl/birdie/toolkit/LatLng;
    .end local v2    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    :cond_2
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    .restart local v1    # "ref":Lcl/birdie/toolkit/LatLng;
    goto :goto_0

    .line 117
    .restart local v2    # "res":Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
    :cond_3
    const-string v3, "ItinerariosPopupScreen"

    const-string v4, "no encontramos posicion???"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setIndice(I)V

    goto :goto_1
.end method
