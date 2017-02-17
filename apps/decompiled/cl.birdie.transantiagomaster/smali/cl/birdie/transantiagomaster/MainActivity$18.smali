.class final Lcl/birdie/transantiagomaster/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onShowLugaresDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$18;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1650
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    .line 1651
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    .line 1652
    .local v0, "br":Lcl/birdie/transantiagomaster/objetos/BusquedaResult;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$18;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1653
    const-string v1, "MainActivity"

    const-string v2, "onShowLugaresDialog: fragMapa null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :goto_0
    iget-object v1, v0, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 1658
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$18;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->onSetModoNavegacion(I)V

    .line 1659
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 1660
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1663
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$18;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity;->onHideBuscarDialog()V

    .line 1664
    return-void

    .line 1655
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$18;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # getter for: Lcl/birdie/transantiagomaster/MainActivity;->fragMapa:Lcl/birdie/transantiagomaster/GApp;
    invoke-static {v1}, Lcl/birdie/transantiagomaster/MainActivity;->access$4(Lcl/birdie/transantiagomaster/MainActivity;)Lcl/birdie/transantiagomaster/GApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcl/birdie/transantiagomaster/GApp;->anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V

    goto :goto_0
.end method
