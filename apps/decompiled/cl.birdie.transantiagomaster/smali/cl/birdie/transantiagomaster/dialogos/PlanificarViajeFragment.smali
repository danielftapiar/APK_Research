.class public Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PlanificarViajeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;,
        Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;
    }
.end annotation


# static fields
.field static volatile trabajando:Z


# instance fields
.field btnCancelar:Landroid/widget/Button;

.field btnPlanificar:Landroid/widget/Button;

.field chkEvitarTransbordo:Landroid/widget/CheckBox;

.field edtDestino:Landroid/widget/EditText;

.field edtOrigen:Landroid/widget/EditText;

.field elegirLugares:Z

.field imagenDestino:Landroid/widget/ImageView;

.field imagenOrigen:Landroid/widget/ImageView;

.field private mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field spinDestino:Landroid/widget/Spinner;

.field spinModo:Landroid/widget/Spinner;

.field spinOrigen:Landroid/widget/Spinner;

.field private taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

.field private taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->trabajando:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V

    return-void
.end method

.method private procesarBusqueda(Ljava/lang/String;)V
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://open.mapquestapi.com/nominatim/v1/search?q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcl/birdie/toolkit/URLUTF8Encoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&countrycodes=CL&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    invoke-direct {v1, p0, p1}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;Ljava/lang/String;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    .line 239
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    invoke-static {}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->mostrarProgreso()V

    .line 240
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    return-void
.end method

.method private refrescar()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnPlanificar:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnPlanificar:Landroid/widget/Button;

    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public final crearPopupLugares()V
    .locals 5

    .prologue
    .line 206
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 207
    .local v3, "sz":I
    if-gtz v3, :cond_0

    .line 233
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 210
    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 213
    .local v2, "lugares":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 217
    const v4, 0x7f060084

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$2;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 214
    :cond_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->bHandler:Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/handlers/BusquedaHandler;->resultados:Ljava/util/List;

    .line 215
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/objetos/BusquedaResult;->descripcion:Ljava/lang/String;

    .line 214
    aput-object v4, v2, v1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
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
    .line 553
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->elegirLugares:Z

    .line 556
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refrescar()V

    .line 582
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 445
    const v1, 0x7f03004c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtOrigen:Landroid/widget/EditText;

    .line 450
    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtDestino:Landroid/widget/EditText;

    .line 452
    const v1, 0x7f080129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnPlanificar:Landroid/widget/Button;

    .line 453
    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnCancelar:Landroid/widget/Button;

    .line 455
    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinOrigen:Landroid/widget/Spinner;

    .line 456
    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    .line 457
    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinModo:Landroid/widget/Spinner;

    .line 460
    const v1, 0x7f080128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 459
    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->chkEvitarTransbordo:Landroid/widget/CheckBox;

    .line 462
    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenOrigen:Landroid/widget/ImageView;

    .line 463
    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenDestino:Landroid/widget/ImageView;

    .line 465
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v1, v1, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v1, :cond_1

    .line 466
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 467
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bmpSnapshot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenOrigen:Landroid/widget/ImageView;

    .line 469
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->bmpSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenDestino:Landroid/widget/ImageView;

    .line 471
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->bmpSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :goto_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinOrigen:Landroid/widget/Spinner;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$3;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 490
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$4;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 502
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnPlanificar:Landroid/widget/Button;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$5;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$5;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->btnCancelar:Landroid/widget/Button;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$6;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$6;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-object v0

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 475
    :cond_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenOrigen:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenDestino:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 77
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/Planificar"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 592
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->access$2(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->access$2(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 595
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->access$3$33e5ae70(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->access$2(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->access$2(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 599
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskBusqueda:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;->access$3$577052(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$Descargador;)V

    .line 601
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 523
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 528
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v2, v2, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v2, :cond_0

    const v2, 0x7f0d0003

    .line 526
    :goto_0
    invoke-static {v3, v2, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 532
    .local v0, "arr":Landroid/widget/ArrayAdapter;
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 533
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinOrigen:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 534
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 536
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 537
    const v3, 0x7f0d0002

    .line 536
    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 539
    .local v1, "arr2":Landroid/widget/ArrayAdapter;
    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 540
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinModo:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 542
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 543
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 548
    :goto_1
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->refreshEditors()V

    .line 549
    return-void

    .line 529
    .end local v0    # "arr":Landroid/widget/ArrayAdapter;
    .end local v1    # "arr2":Landroid/widget/ArrayAdapter;
    :cond_0
    const v2, 0x7f0d0004

    goto :goto_0

    .line 546
    .restart local v0    # "arr":Landroid/widget/ArrayAdapter;
    .restart local v1    # "arr2":Landroid/widget/ArrayAdapter;
    :cond_1
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method public final procesarPlanificacion()V
    .locals 14

    .prologue
    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, "to":Lcl/birdie/toolkit/LatLng;
    const/4 v1, 0x0

    .line 249
    .local v1, "from":Lcl/birdie/toolkit/LatLng;
    const/4 v0, 0x0

    .line 251
    .local v0, "buscar":Z
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinOrigen:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 307
    const/4 v1, 0x0

    .line 310
    :cond_0
    :goto_0
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 361
    const/4 v4, 0x0

    .line 364
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    if-nez v4, :cond_17

    .line 401
    :cond_2
    :goto_2
    return-void

    .line 253
    :pswitch_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    .line 254
    invoke-virtual {v1}, Lcl/birdie/toolkit/LatLng;->isNull()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 255
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 256
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f06009d

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_2

    .line 261
    :pswitch_1
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v10, v10, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v10, :cond_3

    .line 262
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getLatLng()Lcl/birdie/toolkit/LatLng;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_3
    sget-object v10, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    if-nez v10, :cond_4

    .line 265
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 266
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f0600dd

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_2

    .line 269
    :cond_4
    new-instance v1, Lcl/birdie/toolkit/LatLng;

    .end local v1    # "from":Lcl/birdie/toolkit/LatLng;
    sget-object v10, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    invoke-direct {v1, v10}, Lcl/birdie/toolkit/LatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    .line 271
    .restart local v1    # "from":Lcl/birdie/toolkit/LatLng;
    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtOrigen:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, "txtFrom":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 275
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 276
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 277
    :cond_6
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 278
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f06009c

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto :goto_2

    .line 281
    :cond_7
    const/4 v0, 0x0

    .line 282
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->oldTxtFrom:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 284
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->oldTxtFrom:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    .line 283
    if-eqz v10, :cond_b

    .line 285
    :cond_8
    const/4 v0, 0x1

    .line 290
    :cond_9
    :goto_3
    if-nez v0, :cond_a

    if-nez v1, :cond_0

    .line 291
    :cond_a
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v11, 0x0

    iput v11, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->buscando:I

    .line 292
    invoke-direct {p0, v7}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->procesarBusqueda(Ljava/lang/String;)V

    .line 293
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object v7, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->oldTxtFrom:Ljava/lang/String;

    goto/16 :goto_2

    .line 286
    :cond_b
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaFrom:Lcl/birdie/toolkit/LatLng;

    if-eqz v10, :cond_9

    .line 287
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaFrom:Lcl/birdie/toolkit/LatLng;

    goto :goto_3

    .line 298
    .end local v7    # "txtFrom":Ljava/lang/String;
    :pswitch_3
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-nez v10, :cond_c

    .line 299
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 300
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f06019b

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto/16 :goto_2

    .line 303
    :cond_c
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v1, v10, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 304
    goto/16 :goto_0

    .line 312
    :pswitch_4
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    .line 313
    goto/16 :goto_1

    .line 315
    :pswitch_5
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v10, v10, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v10, :cond_d

    .line 316
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getLatLng()Lcl/birdie/toolkit/LatLng;

    move-result-object v4

    goto/16 :goto_1

    .line 318
    :cond_d
    sget-object v10, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    if-nez v10, :cond_e

    .line 319
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 320
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f0600dd

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto/16 :goto_2

    .line 324
    :cond_e
    new-instance v4, Lcl/birdie/toolkit/LatLng;

    .end local v4    # "to":Lcl/birdie/toolkit/LatLng;
    sget-object v10, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    invoke-direct {v4, v10}, Lcl/birdie/toolkit/LatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    .line 326
    .restart local v4    # "to":Lcl/birdie/toolkit/LatLng;
    goto/16 :goto_1

    .line 328
    :pswitch_6
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtDestino:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "txtTo":Ljava/lang/String;
    if-eqz v8, :cond_f

    .line 330
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 331
    :cond_f
    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_11

    .line 332
    :cond_10
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 333
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f06009c

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto/16 :goto_2

    .line 336
    :cond_11
    const/4 v0, 0x0

    .line 337
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->oldTxtTo:Ljava/lang/String;

    if-eqz v10, :cond_12

    .line 338
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->oldTxtTo:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_15

    .line 339
    :cond_12
    const/4 v0, 0x1

    .line 344
    :cond_13
    :goto_4
    if-nez v0, :cond_14

    if-nez v4, :cond_1

    .line 345
    :cond_14
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v11, 0x1

    iput v11, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->buscando:I

    .line 346
    invoke-direct {p0, v8}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->procesarBusqueda(Ljava/lang/String;)V

    .line 347
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iput-object v8, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->oldTxtTo:Ljava/lang/String;

    goto/16 :goto_2

    .line 340
    :cond_15
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaTo:Lcl/birdie/toolkit/LatLng;

    if-eqz v10, :cond_13

    .line 341
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->busquedaTo:Lcl/birdie/toolkit/LatLng;

    goto :goto_4

    .line 352
    .end local v8    # "txtTo":Ljava/lang/String;
    :pswitch_7
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-nez v10, :cond_16

    .line 353
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 354
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f06019b

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto/16 :goto_2

    .line 357
    :cond_16
    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v10, v10, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    iget-object v4, v10, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->latlng:Lcl/birdie/toolkit/CacheableLatLng;

    .line 358
    goto/16 :goto_1

    .line 367
    :cond_17
    iget-wide v10, v1, Lcl/birdie/toolkit/LatLng;->lat:D

    iget-wide v12, v4, Lcl/birdie/toolkit/LatLng;->lat:D

    cmpl-double v10, v10, v12

    if-nez v10, :cond_18

    iget-wide v10, v1, Lcl/birdie/toolkit/LatLng;->lng:D

    iget-wide v12, v4, Lcl/birdie/toolkit/LatLng;->lng:D

    cmpl-double v10, v10, v12

    if-nez v10, :cond_18

    .line 368
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v10, :cond_2

    .line 369
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const v11, 0x7f06009a

    invoke-interface {v10, v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onToast(I)V

    goto/16 :goto_2

    .line 376
    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, v4, Lcl/birdie/toolkit/LatLng;->lat:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v4, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, "toPlace":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcl/birdie/toolkit/LatLng;->lat:D

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "fromPlace":Ljava/lang/String;
    const-string v3, "TRANSIT"

    .line 379
    .local v3, "modo":Ljava/lang/String;
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinModo:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    packed-switch v10, :pswitch_data_2

    .line 391
    :goto_5
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->chkEvitarTransbordo:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 392
    const-string v6, "&transferPenalty=300"

    .line 395
    .local v6, "transferPenalty":Ljava/lang/String;
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://api.transantiagomaster.cl/planearviaje.php?toPlace="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 396
    const-string v11, "&fromPlace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&routeId=transantiago&optimize=TRANSFERS&mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 397
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 395
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "url":Ljava/lang/String;
    new-instance v10, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    invoke-direct {v10, p0}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;-><init>(Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;)V

    iput-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    .line 399
    iget-object v10, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->taskPlanificacion:Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-virtual {v10, v11}, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment$DescargadorPlanificacion;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 381
    .end local v6    # "transferPenalty":Ljava/lang/String;
    .end local v9    # "url":Ljava/lang/String;
    :pswitch_8
    const-string v3, "SUBWAY,BUS,WALK"

    .line 382
    goto :goto_5

    .line 384
    :pswitch_9
    const-string v3, "SUBWAY,WALK"

    .line 385
    goto :goto_5

    .line 387
    :pswitch_a
    const-string v3, "BUS,WALK"

    goto :goto_5

    .line 394
    :cond_19
    const-string v6, ""

    .restart local v6    # "transferPenalty":Ljava/lang/String;
    goto :goto_6

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 310
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 379
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final refreshEditors()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 404
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinOrigen:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 411
    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtOrigen:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 415
    :goto_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 422
    :pswitch_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtDestino:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 426
    :goto_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v0, v0, Lcl/birdie/params/Preferencias;->ModoMapa:I

    if-nez v0, :cond_2

    .line 427
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinOrigen:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 428
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenOrigen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    :goto_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->spinDestino:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 433
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenDestino:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :goto_3
    return-void

    .line 408
    :pswitch_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtOrigen:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 419
    :pswitch_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->edtDestino:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 430
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenOrigen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 435
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenDestino:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 437
    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenOrigen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/PlanificarViajeFragment;->imagenDestino:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 415
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
