.class public final Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;
.super Landroid/support/v4/app/ListFragment;
.source "BarraIzquierdaFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;,
        Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;,
        Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$BarraIzquierdaFragment$TipoItem:[I


# instance fields
.field private mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$BarraIzquierdaFragment$TipoItem()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$BarraIzquierdaFragment$TipoItem:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->values()[Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->BUSQUEDA:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->COMANDOS_VOZ:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->FAVORITOS:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->FOTOS:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->INGRESAR:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->MAPA:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->MURO:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->RECORRIDOS:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->SALDO_BIP:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$BarraIzquierdaFragment$TipoItem:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f020107

    .line 31
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Landroid/content/Context;)V

    .line 33
    .local v0, "adapter":Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->MAPA:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Mapa"

    const v4, 0x7f020108

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 34
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->FAVORITOS:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Favoritos"

    const v4, 0x7f020105

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 35
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->RECORRIDOS:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Recorridos"

    const v4, 0x7f02010b

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 36
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->SALDO_BIP:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Saldo Bip!"

    const v4, 0x7f02010c

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 37
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->INGRESAR:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Ingresar"

    invoke-direct {v1, p0, v2, v3, v5}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 41
    :goto_0
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->MURO:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Muro"

    const v4, 0x7f02010a

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 42
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->FOTOS:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Fotos"

    const v4, 0x7f020106

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 43
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->COMANDOS_VOZ:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Comandos de Voz"

    const v4, 0x7f020109

    invoke-direct {v1, p0, v2, v3, v4}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void

    .line 40
    :cond_0
    new-instance v1, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    sget-object v2, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->INGRESAR:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    const-string v3, "Cerrar sesi\u00f3n"

    invoke-direct {v1, p0, v2, v3, v5}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;-><init>(Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 54
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "lv"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 61
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;

    .line 63
    .local v0, "item":Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;
    invoke-static {}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$BarraIzquierdaFragment$TipoItem()[I

    move-result-object v1

    iget-object v2, v0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$SampleItem;->id:Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment$TipoItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowMapa()V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowFavoritos()V

    goto :goto_0

    .line 71
    :pswitch_2
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowRecorridos()V

    goto :goto_0

    .line 74
    :pswitch_3
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowSaldoBip()V

    goto :goto_0

    .line 77
    :pswitch_4
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowMuro()V

    goto :goto_0

    .line 80
    :pswitch_5
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowFotos()V

    goto :goto_0

    .line 83
    :pswitch_6
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSpeechCommand()V

    goto :goto_0

    .line 86
    :pswitch_7
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowContent()V

    .line 87
    iget-object v1, p0, Lcl/birdie/transantiagomaster/BarraIzquierdaFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onRequestLogin()V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
