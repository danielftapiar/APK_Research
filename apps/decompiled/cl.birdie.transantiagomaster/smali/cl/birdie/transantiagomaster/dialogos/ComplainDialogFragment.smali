.class public final Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "ComplainDialogFragment.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/IPhotoTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;,
        Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;,
        Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;,
        Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial:[I


# instance fields
.field btnFoto:Landroid/widget/ImageButton;

.field btnOk:Landroid/widget/Button;

.field edtComentario:Landroid/widget/EditText;

.field favs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/IFavorito;",
            ">;"
        }
    .end annotation
.end field

.field gpsPoint:Lcl/birdie/toolkit/LatLng;

.field imgFoto:Landroid/widget/ImageView;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field paraderos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
            ">;"
        }
    .end annotation
.end field

.field servicios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Servicio;",
            ">;"
        }
    .end annotation
.end field

.field spnMotivos:Landroid/widget/Spinner;

.field spnObjeto:Landroid/widget/Spinner;

.field ventana:Landroid/view/View;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->values()[Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_NINGUNA:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->REDSOCIAL_TWITTER:Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->paraderos:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->servicios:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->favs:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "params"    # Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 643
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 644
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 646
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 652
    :cond_0
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string v4, "comentario"

    iget-object v5, p1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;->comentario:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "urlFoto"

    iget-object v5, p1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;->urlFoto:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "motivo"

    iget v5, p1, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;->motivo:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 651
    invoke-virtual {v2, v0, p2}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 654
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 658
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 660
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 75
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 623
    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->setCancelable(Z)V

    .line 624
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 625
    .local v0, "pd":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 626
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 392
    const v6, 0x7f030032

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 394
    .local v5, "v":Landroid/view/View;
    iput-object v5, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->ventana:Landroid/view/View;

    .line 396
    const v6, 0x7f08009d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->edtComentario:Landroid/widget/EditText;

    .line 397
    const v6, 0x7f0800b0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnObjeto:Landroid/widget/Spinner;

    .line 398
    const v6, 0x7f0800af

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    .line 400
    const v6, 0x7f0800b4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->imgFoto:Landroid/widget/ImageView;

    .line 401
    const v6, 0x7f0800b3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnFoto:Landroid/widget/ImageButton;

    .line 403
    const/4 v1, -0x1

    .line 405
    .local v1, "idMotivo":I
    if-eqz p3, :cond_1

    .line 406
    const-string v6, "comentario"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "coment":Ljava/lang/String;
    const-string v6, "urlImagen"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "urlImagen":Ljava/lang/String;
    const-string v6, "motivo"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 409
    if-eqz v0, :cond_0

    .line 410
    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->edtComentario:Landroid/widget/EditText;

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    if-eqz v4, :cond_1

    .line 412
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object v4, v6, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    .line 415
    .end local v0    # "coment":Ljava/lang/String;
    .end local v4    # "urlImagen":Ljava/lang/String;
    :cond_1
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->receivePhoto(Ljava/lang/String;)V

    .line 417
    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnFoto:Landroid/widget/ImageButton;

    new-instance v7, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;

    invoke-direct {v7, p0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const v6, 0x7f0800b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnOk:Landroid/widget/Button;

    .line 443
    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnOk:Landroid/widget/Button;

    new-instance v7, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;

    invoke-direct {v7, p0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    const v6, 0x7f080081

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 589
    new-instance v7, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$4;

    invoke-direct {v7, p0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getGPSLatLng()Lcl/birdie/toolkit/LatLng;

    move-result-object v6

    iput-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->gpsPoint:Lcl/birdie/toolkit/LatLng;

    .line 598
    const v6, 0x7f0800b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 599
    .local v3, "txtSocialNetwork":Landroid/widget/TextView;
    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v6, :cond_2

    .line 600
    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v6}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->redDisponible()Lcl/birdie/transantiagomaster/MainActivity$RedSocial;

    move-result-object v2

    .line 601
    .local v2, "red":Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    invoke-static {}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$MainActivity$RedSocial()[I

    move-result-object v6

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/MainActivity$RedSocial;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 608
    .end local v2    # "red":Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    :cond_2
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->refrescarSpinners(Landroid/content/Context;I)V

    .line 616
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://api.transantiagomaster.cl/paraderoscercanosjsonnew.php?lat="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->gpsPoint:Lcl/birdie/toolkit/LatLng;

    iget-wide v7, v7, Lcl/birdie/toolkit/LatLng;->lat:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&lng="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->gpsPoint:Lcl/birdie/toolkit/LatLng;

    iget-wide v7, v7, Lcl/birdie/toolkit/LatLng;->lng:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&enc=1&sv=1&full=0&layers=0&enc=1&dist=500"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;

    invoke-direct {v7, p0, v9}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;B)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-virtual {v7, v8}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$DescargadorParaderos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 618
    return-object v5

    .line 603
    .restart local v2    # "red":Lcl/birdie/transantiagomaster/MainActivity$RedSocial;
    :pswitch_0
    const v6, 0x7f060158

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 606
    :pswitch_1
    const v6, 0x7f060159

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 607
    iget-object v6, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->edtComentario:Landroid/widget/EditText;

    const v7, 0x7f06015b

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 682
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 685
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->receivePhoto(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onStop()V

    .line 89
    return-void
.end method

.method public final receivePhoto(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mostrarImagen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    invoke-static {p1}, Lcl/birdie/transantiagomaster/Pantalla;->borrarImagen(Ljava/lang/String;)V

    .line 696
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    iput-object p1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    .line 697
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->imgFoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->imgFoto:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/Pantalla;->descargarImagen(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 701
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnFoto:Landroid/widget/ImageButton;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 709
    :goto_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnFoto:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    .line 710
    return-void

    .line 703
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->fbDatos:Lcl/birdie/transantiagomaster/facebook/FacebookDatos;

    const/4 v1, 0x0

    iput-object v1, v0, Lcl/birdie/transantiagomaster/facebook/FacebookDatos;->urlImageAttach:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->imgFoto:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->btnFoto:Landroid/widget/ImageButton;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public final refrescarObjetos()V
    .locals 6

    .prologue
    .line 371
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    .line 372
    .local v1, "r":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->favs:Ljava/util/List;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->paraderos:Ljava/util/List;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->servicios:Ljava/util/List;

    .line 373
    iget-object v5, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->objeto:Ljava/lang/String;

    .line 372
    invoke-direct {v0, v2, v3, v4, v5}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ObjetoAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 374
    .local v0, "a":Landroid/widget/SpinnerAdapter;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnObjeto:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 375
    return-void
.end method

.method public final refrescarSpinners(Landroid/content/Context;I)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "idMotivo"    # I

    .prologue
    .line 338
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;

    .line 340
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->tiposReclamo:Ljava/util/List;

    .line 338
    invoke-direct {v0, p1, v1}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$TipoReclamoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 347
    .local v0, "ad":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;>;"
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 348
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 361
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 362
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->spnMotivos:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method
