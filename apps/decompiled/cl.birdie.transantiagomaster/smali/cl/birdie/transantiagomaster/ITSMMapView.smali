.class public interface abstract Lcl/birdie/transantiagomaster/ITSMMapView;
.super Ljava/lang/Object;
.source "ITSMMapView.java"


# virtual methods
.method public abstract actualizarDatos([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Bip;[Lcl/birdie/transantiagomaster/newobjetos/Metro;)V
.end method

.method public abstract anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V
.end method

.method public abstract capasPorZoom()V
.end method

.method public abstract centrarEn(Lcl/birdie/toolkit/LatLng;)V
.end method

.method public abstract clearItinerarioLayer()V
.end method

.method public abstract crearCapa(Lcl/birdie/transantiagomaster/newobjetos/Layer;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract crearOverlays(Landroid/app/Activity;)V
.end method

.method public abstract dibujarLugarMarcado()V
.end method

.method public abstract getListener()Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
.end method

.method public abstract getProyeccionDesdePixeles(II)Lcl/birdie/toolkit/LatLng;
.end method

.method public abstract invalidar()V
.end method

.method public abstract llenarUbicacion()V
.end method

.method public abstract obtieneMapCenter()Lcl/birdie/toolkit/LatLng;
.end method

.method public abstract obtieneZoomLevel()I
.end method

.method public abstract refrescaLayout()V
.end method

.method public abstract refrescarOverlays(Lcl/birdie/transantiagomaster/GApp;)V
.end method

.method public abstract refrescarPreferencias()V
.end method

.method public abstract setItinerarioLayer()V
.end method

.method public abstract seteaControlesZoom$1385ff()V
.end method

.method public abstract seteaZoomLevel(I)V
.end method
