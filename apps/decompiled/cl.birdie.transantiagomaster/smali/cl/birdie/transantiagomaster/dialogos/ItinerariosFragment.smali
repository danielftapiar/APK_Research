.class public Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "ItinerariosFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;,
        Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
    }
.end annotation


# instance fields
.field btnCancelar:Landroid/widget/Button;

.field btnParadero:Landroid/widget/Button;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field sentido:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSentido()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->sentido:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 51
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroyView()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 216
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 218
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 220
    .local v0, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v2, 0x7f06007d

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    iget-object v2, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v2, v2, Lcl/birdie/toolkit/CacheableLatLng;->lat:D

    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    iget-wide v4, v4, Lcl/birdie/toolkit/CacheableLatLng;->lng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setCenter(Lcl/birdie/toolkit/LatLng;)V

    .line 236
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;->SEGUIR_OFF:Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setSeguirPosicion(Lcl/birdie/transantiagomaster/Pantalla$SeguirPosicion;)V

    .line 256
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setIndice(I)V

    .line 258
    const/4 v1, 0x1

    invoke-static {v1}, Lcl/birdie/transantiagomaster/Pantalla;->setModoNavegacion(I)V

    .line 259
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowMapa()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onStart()V

    .line 210
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/Itinerarios"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 81
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 82
    const v4, 0x7f03003d

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "headerView":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 88
    const v3, 0x7f0800c6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 87
    check-cast v3, Landroid/widget/TextView;

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f06006e

    invoke-virtual {p0, v5}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v3, 0x7f0800c7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 91
    check-cast v3, Landroid/widget/TextView;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 94
    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getTextoIda()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 96
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getTextoRegreso()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v3, 0x7f0800cb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 98
    iput-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->btnParadero:Landroid/widget/Button;

    .line 100
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->btnParadero:Landroid/widget/Button;

    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v3, 0x7f0800cc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->btnCancelar:Landroid/widget/Button;

    .line 138
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->btnCancelar:Landroid/widget/Button;

    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$2;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v3, 0x7f0800c9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->sentido:Landroid/widget/ToggleButton;

    .line 147
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->sentido:Landroid/widget/ToggleButton;

    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 160
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 161
    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getListaParaderosServicioActual()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "paraderos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    if-nez v2, :cond_0

    .line 164
    const-string v3, "ItinerariosPopupScreen"

    const-string v4, "paraderos es null, dej\u00e1ndolo en blanco."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "paraderos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v2    # "paraderos":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;)V

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onDescargarRecorridos(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 193
    :cond_0
    new-instance v3, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 194
    invoke-direct {v3, p0, v4, v2}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;Landroid/content/Context;Ljava/util/List;)V

    .line 193
    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void
.end method
