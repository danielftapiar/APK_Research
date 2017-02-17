.class final Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ParaderoRecorridoActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 1794
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;B)V
    .locals 0

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)Lcl/birdie/transantiagomaster/MainActivity;
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    return-object v0
.end method


# virtual methods
.method public final onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const v11, 0x7f060146

    const v10, 0x7f060145

    const v9, 0x7f060144

    const v8, 0x7f060143

    const/4 v4, 0x1

    .line 1889
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getModoNavegacion()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2088
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->invalidate()V

    .line 2089
    :goto_1
    return v4

    .line 1891
    :pswitch_1
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-nez v5, :cond_1

    .line 1892
    const/4 v4, 0x0

    goto :goto_1

    .line 1894
    :cond_1
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 1895
    const/4 v2, 0x0

    .line 1896
    .local v2, "found":Z
    const/4 v3, 0x0

    .line 1897
    .local v3, "foundf":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1906
    :goto_2
    if-nez v2, :cond_5

    .line 1907
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ParaderoActionMode: a\u00f1adir paradero "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1909
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1908
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1907
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    .line 1911
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1912
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1913
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v5, v5, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    packed-switch v5, :pswitch_data_1

    .line 1968
    :cond_3
    :goto_3
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    goto :goto_0

    .line 1897
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 1898
    .local v1, "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    invoke-interface {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v6

    sget-object v7, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    if-ne v6, v7, :cond_2

    .line 1899
    invoke-interface {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1900
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1901
    const/4 v2, 0x1

    .line 1902
    move-object v3, v1

    .line 1903
    goto :goto_2

    .line 1915
    .end local v1    # "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 1916
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 1915
    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1917
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1921
    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$1;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V

    .line 1919
    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1934
    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$2;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$2;-><init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V

    .line 1932
    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1944
    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$3;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$3;-><init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V

    .line 1942
    invoke-virtual {v5, v11, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1955
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 1958
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcl/birdie/transantiagomaster/MainActivity;->doFavoriteStop(Ljava/lang/String;)V

    goto :goto_3

    .line 1966
    :cond_5
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    .line 1967
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1969
    .end local v2    # "found":Z
    .end local v3    # "foundf":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :cond_6
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 1970
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {v5, v6, v4}, Lcl/birdie/transantiagomaster/MainActivity;->onClickParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;Z)V

    goto/16 :goto_0

    .line 1987
    :pswitch_4
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v5, v4, :cond_b

    .line 1988
    const/4 v2, 0x0

    .line 1989
    .restart local v2    # "found":Z
    const/4 v3, 0x0

    .line 1990
    .restart local v3    # "foundf":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2001
    :goto_4
    if-nez v2, :cond_a

    .line 2002
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RecorridoActionMode: a\u00f1adir recorrido "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2004
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 2005
    invoke-virtual {v6}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v6

    .line 2004
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2003
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2002
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    .line 2007
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 2008
    invoke-virtual {v6}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v6

    .line 2007
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2009
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2010
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v5, v5, Lcl/birdie/params/Preferencias;->facebook_share_favorites:I

    packed-switch v5, :pswitch_data_2

    .line 2068
    :cond_8
    :goto_5
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    goto/16 :goto_0

    .line 1990
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 1991
    .restart local v1    # "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    invoke-interface {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v6

    sget-object v7, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    if-ne v6, v7, :cond_7

    .line 1992
    invoke-interface {v1}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1993
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v7, v7, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1994
    invoke-virtual {v7}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v7

    .line 1992
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1994
    if-eqz v6, :cond_7

    .line 1995
    const/4 v2, 0x1

    .line 1996
    move-object v3, v1

    .line 1997
    goto :goto_4

    .line 2012
    .end local v1    # "f":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2013
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    .line 2012
    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2014
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2018
    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$4;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$4;-><init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V

    .line 2016
    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2032
    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$5;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$5;-><init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V

    .line 2030
    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 2042
    new-instance v6, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$6;

    invoke-direct {v6, p0}, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode$6;-><init>(Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;)V

    .line 2040
    invoke-virtual {v5, v11, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2053
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    .line 2056
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    iget-object v5, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 2057
    invoke-virtual {v6}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v6

    .line 2056
    invoke-virtual {v5, v6}, Lcl/birdie/transantiagomaster/MainActivity;->doFavoriteLine(Ljava/lang/String;)V

    goto :goto_5

    .line 2065
    :cond_a
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    .line 2066
    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2069
    .end local v2    # "found":Z
    .end local v3    # "foundf":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :cond_b
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 2071
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 2072
    iget-object v6, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v5, v6}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->cambiarSentido(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    goto/16 :goto_0

    .line 1889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1913
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2010
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 1809
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 2098
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2099
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->volverModoNormal(Z)Z

    .line 2102
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$ParaderoRecorridoActionMode;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcl/birdie/transantiagomaster/MainActivity;->mMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 2105
    return-void
.end method

.method public final onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 10
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const v9, 0x7f020145

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1814
    invoke-interface {p2}, Lcom/actionbarsherlock/view/Menu;->clear()V

    .line 1816
    const/4 v1, 0x0

    .line 1818
    .local v1, "foundFav":Z
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getModoNavegacion()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1820
    :pswitch_0
    const-string v2, "MainActivity"

    .line 1821
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ParaderoRecorridoActionMode: modo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1822
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getModoNavegacion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1821
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1820
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_0
    return v7

    .line 1826
    :pswitch_1
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    monitor-enter v3

    .line 1828
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-nez v2, :cond_0

    .line 1829
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1827
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1831
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const v6, 0x7f06019a

    :try_start_1
    invoke-interface {p2, v2, v4, v5, v6}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1832
    const v4, 0x7f020145

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1833
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1835
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1827
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1869
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParaderoActionMode: found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1870
    if-eqz v1, :cond_6

    .line 1871
    const v2, 0x7f060142

    invoke-interface {p2, v8, v7, v8, v2}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1872
    const v3, 0x7f0200f1

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1873
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1835
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 1836
    .local v0, "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v4

    sget-object v5, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_PARADERO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    if-ne v4, v5, :cond_1

    .line 1837
    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1838
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 1839
    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1838
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 1839
    if-eqz v4, :cond_1

    .line 1840
    const/4 v1, 0x1

    .line 1841
    goto :goto_1

    .line 1847
    .end local v0    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :pswitch_2
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    monitor-enter v3

    .line 1849
    :try_start_3
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1850
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v2

    .line 1849
    if-nez v2, :cond_3

    .line 1851
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1848
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1853
    :cond_3
    :try_start_4
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->favoritos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1848
    :goto_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1863
    const v2, 0x7f06014d

    invoke-interface {p2, v8, v6, v8, v2}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1864
    invoke-interface {v2, v9}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1865
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 1853
    :cond_5
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;

    .line 1854
    .restart local v0    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getTipoFavorito()Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    move-result-object v4

    sget-object v5, Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;->TIPO_RECORRIDO:Lcl/birdie/transantiagomaster/newobjetos/IFavorito$TipoFavorito;

    if-ne v4, v5, :cond_4

    .line 1855
    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IFavorito;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1856
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 1857
    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v5

    .line 1855
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    .line 1857
    if-eqz v4, :cond_4

    .line 1858
    const/4 v1, 0x1

    .line 1859
    goto :goto_3

    .line 1875
    .end local v0    # "fav":Lcl/birdie/transantiagomaster/newobjetos/IFavorito;
    :cond_6
    const v2, 0x7f060141

    invoke-interface {p2, v8, v7, v8, v2}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1876
    const v3, 0x7f0200f0

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1877
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 1818
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
