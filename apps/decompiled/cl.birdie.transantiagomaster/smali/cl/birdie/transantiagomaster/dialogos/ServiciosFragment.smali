.class public Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "ServiciosFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;,
        Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;,
        Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
    }
.end annotation


# instance fields
.field private doSearch:Z

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field private final mLock:Ljava/lang/Object;

.field progressDialogItinerario:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mLock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->doSearch:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->doSearch:Z

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 266
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    if-nez v0, :cond_0

    .line 267
    const-string v0, "ServiciosFragment"

    const-string v1, "servicios es null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 270
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-direct {v0, p0, v1, v2}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;Landroid/content/Context;[Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V

    .line 269
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 272
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->setHasOptionsMenu(Z)V

    .line 260
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 75
    const v1, 0x7f0e0005

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 80
    const v1, 0x7f080174

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 79
    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    .line 82
    .local v0, "searchView":Lcom/actionbarsherlock/widget/SearchView;
    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 282
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 348
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 350
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 352
    .local v1, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v2, v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->setServicioActual(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, "hecho":Z
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->db:Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;

    invoke-virtual {v2, v1}, Lcl/birdie/transantiagomaster/handlers/DatabaseHandler;->getServicio(Lcl/birdie/transantiagomaster/newobjetos/Servicio;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 361
    :cond_0
    if-nez v0, :cond_2

    .line 367
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;

    invoke-direct {v2, p0, v6}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;B)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://api.transantiagomaster.cl/itinerario.php?style=2&servicio="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v5, v5, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 371
    invoke-virtual {v5}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getNombre()Ljava/lang/String;

    move-result-object v5

    .line 370
    invoke-static {v5}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 367
    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$DescargadorItinerario;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_1

    .line 374
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowItinerarios()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onStart()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->doSearch:Z

    .line 69
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/Servicios"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->progressDialogItinerario:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->progressDialogItinerario:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->progressDialogItinerario:Landroid/app/ProgressDialog;

    .line 342
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onStop()V

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->doSearch:Z

    .line 344
    return-void
.end method
