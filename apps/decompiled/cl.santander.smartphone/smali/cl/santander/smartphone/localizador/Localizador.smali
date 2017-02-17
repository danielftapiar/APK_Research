.class public Lcl/santander/smartphone/localizador/Localizador;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Localizador.java"


# static fields
.field private static final ACTIVO:I = 0xa

.field private static final LISTA:I = 0x2

.field private static final MAPA:I = 0x1

.field protected static final NADA_ACTIVO:I


# instance fields
.field private ad_semaphore:Ljava/util/concurrent/Semaphore;

.field private alertdialog:Ljava/lang/Thread;

.field private bt_filtro:Landroid/widget/Button;

.field private bt_ofertas:Landroid/widget/Button;

.field private bt_otra:Landroid/widget/Button;

.field private bt_suc_caj:Landroid/widget/Button;

.field private cajeros:Z

.field private cat_seleccionadas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private categorias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCategoria;",
            ">;"
        }
    .end annotation
.end field

.field private cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

.field private cold:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

.field fa:Landroid/support/v4/app/FragmentActivity;

.field fmg:Landroid/support/v4/app/FragmentManager;

.field private fragmento:I

.field private gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

.field private handler:Landroid/os/Handler;

.field private iv_auto_loc:Landroid/widget/ImageView;

.field private listaOficinas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation
.end field

.field private localiza:Ljava/util/concurrent/Semaphore;

.field private pd:Landroid/app/AlertDialog;

.field private posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

.field private sf:Lcl/santander/smartphone/localizador/Localizador;

.field private sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private sucursales:Z

.field private tv_direccion:Landroid/widget/TextView;

.field private tv_localizacion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 101
    new-instance v0, Lcl/santander/smartphone/localizador/Localizador$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/Localizador$1;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->handler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/Localizador;)I
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->isLocationAvailable()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->localizaAutomaticamente()V

    return-void
.end method

.method static synthetic access$10(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcl/santander/smartphone/localizador/Localizador;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/Localizador;->hayCategoriaDesactivada(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    return-object v0
.end method

.method static synthetic access$14(Lcl/santander/smartphone/localizador/Localizador;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$15(Lcl/santander/smartphone/localizador/Localizador;Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    return-void
.end method

.method static synthetic access$16(Lcl/santander/smartphone/localizador/Localizador;Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    return-void
.end method

.method static synthetic access$17(Lcl/santander/smartphone/localizador/Localizador;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$18(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$19(Lcl/santander/smartphone/localizador/Localizador;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    return v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->makeGPSalert()V

    return-void
.end method

.method static synthetic access$20(Lcl/santander/smartphone/localizador/Localizador;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    return v0
.end method

.method static synthetic access$21(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    return-void
.end method

.method static synthetic access$22(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->cold:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    return-void
.end method

.method static synthetic access$23(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->cold:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    return-object v0
.end method

.method static synthetic access$24(Lcl/santander/smartphone/localizador/Localizador;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/Localizador;->localizaManualmente(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$25(Lcl/santander/smartphone/localizador/Localizador;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$27(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->ad_semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$28(Lcl/santander/smartphone/localizador/Localizador;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->loadCategories()V

    return-void
.end method

.method static synthetic access$30(Lcl/santander/smartphone/localizador/Localizador;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$31(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    return-void
.end method

.method static synthetic access$32(Lcl/santander/smartphone/localizador/Localizador;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    return-void
.end method

.method static synthetic access$33(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->scheduleGeo()V

    return-void
.end method

.method static synthetic access$34(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->localiza:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$35(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->tv_direccion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->userWantsAutomaticLocation()V

    return-void
.end method

.method static synthetic access$5(Lcl/santander/smartphone/localizador/Localizador;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    return-object v0
.end method

.method static synthetic access$9(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->mostrarPOIS()V

    return-void
.end method

.method private filtraCategorias()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 748
    const/4 v1, 0x0

    .line 750
    .local v1, "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 764
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 754
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 756
    if-nez v1, :cond_2

    .line 757
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .restart local v1    # "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemCategoria;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemCategoria;->getIdCategoria()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTipoBusqueda()Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 838
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 840
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    if-eqz v2, :cond_4

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "encontrado":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 847
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 848
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    .line 910
    .end local v0    # "encontrado":Z
    .end local v1    # "i":I
    :goto_1
    return-object v2

    .line 844
    .restart local v0    # "encontrado":Z
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    const/4 v0, 0x1

    .line 843
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    :cond_3
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto :goto_1

    .line 852
    .end local v0    # "encontrado":Z
    .end local v1    # "i":I
    :cond_4
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    if-eqz v2, :cond_9

    .line 854
    const/4 v0, 0x0

    .line 855
    .restart local v0    # "encontrado":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 859
    :cond_5
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    if-nez v0, :cond_8

    .line 860
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto :goto_1

    .line 856
    :cond_6
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 857
    const/4 v0, 0x1

    .line 855
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 862
    :cond_8
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto :goto_1

    .line 864
    .end local v0    # "encontrado":Z
    .end local v1    # "i":I
    :cond_9
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    if-eqz v2, :cond_e

    .line 866
    const/4 v0, 0x0

    .line 867
    .restart local v0    # "encontrado":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_b

    .line 871
    :cond_a
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    if-nez v0, :cond_d

    .line 872
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto :goto_1

    .line 868
    :cond_b
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 869
    const/4 v0, 0x1

    .line 867
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 874
    :cond_d
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto :goto_1

    .line 878
    .end local v0    # "encontrado":Z
    .end local v1    # "i":I
    :cond_e
    const/4 v0, 0x0

    .line 879
    .restart local v0    # "encontrado":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_10

    .line 882
    :cond_f
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    if-nez v0, :cond_12

    move-object v2, v3

    .line 883
    goto/16 :goto_1

    .line 880
    :cond_10
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 881
    const/4 v0, 0x1

    .line 879
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 884
    :cond_12
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto/16 :goto_1

    .line 887
    .end local v0    # "encontrado":Z
    .end local v1    # "i":I
    :cond_13
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 889
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    if-eqz v2, :cond_14

    .line 890
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto/16 :goto_1

    .line 891
    :cond_14
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    if-eqz v2, :cond_15

    .line 892
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto/16 :goto_1

    .line 893
    :cond_15
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    if-eqz v2, :cond_16

    .line 894
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto/16 :goto_1

    :cond_16
    move-object v2, v3

    .line 896
    goto/16 :goto_1

    .line 898
    :cond_17
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 900
    const/4 v0, 0x0

    .line 901
    .restart local v0    # "encontrado":Z
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_19

    .line 904
    :cond_18
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    if-nez v0, :cond_1b

    move-object v2, v3

    .line 905
    goto/16 :goto_1

    .line 902
    :cond_19
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 903
    const/4 v0, 0x1

    .line 901
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 906
    :cond_1b
    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    goto/16 :goto_1

    .end local v0    # "encontrado":Z
    .end local v1    # "i":I
    :cond_1c
    move-object v2, v3

    .line 910
    goto/16 :goto_1
.end method

.method private hayCategoriaDesactivada(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x1

    .line 331
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 336
    :cond_0
    iget-boolean v1, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    if-nez v1, :cond_7

    :cond_1
    move v1, v2

    .line 350
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 334
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 335
    goto :goto_1

    .line 333
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    iget-boolean v1, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    if-nez v1, :cond_7

    :cond_5
    move v1, v2

    .line 342
    goto :goto_1

    .line 346
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_8

    .line 350
    .end local v0    # "i":I
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 347
    .restart local v0    # "i":I
    :cond_8
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 348
    goto :goto_1

    .line 346
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    iput-boolean v3, p0, Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z

    .line 187
    iput-boolean v3, p0, Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z

    .line 189
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060223

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->tv_localizacion:Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f0601f2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->tv_direccion:Landroid/widget/TextView;

    .line 191
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060224

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;

    .line 192
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060225

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_otra:Landroid/widget/Button;

    .line 193
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060227

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    .line 194
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060228

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    .line 197
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f060222

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->iv_auto_loc:Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->iv_auto_loc:Landroid/widget/ImageView;

    new-instance v2, Lcl/santander/smartphone/localizador/Localizador$3;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/localizador/Localizador$3;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 209
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 212
    new-instance v0, Lcl/santander/smartphone/localizador/Localizador$4;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/Localizador$4;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 250
    .local v0, "click":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/localizador/Localizador$5;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/localizador/Localizador$5;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->bt_otra:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/localizador/Localizador$6;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/localizador/Localizador$6;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 325
    return-void
.end method

.method private isLocationAvailable()I
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 608
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 609
    .local v0, "lm":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v1

    .line 611
    :cond_1
    const-string v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCategories()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 355
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 357
    .local v4, "s":[Ljava/lang/String;
    iput-object v5, p0, Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    .line 360
    sget-object v0, Lcl/santander/smartphone/Global;->categorias_poi:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcl/santander/smartphone/Global;->categorias_poi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    sget-object v0, Lcl/santander/smartphone/Global;->categorias_poi:Ljava/util/ArrayList;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    .line 404
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->getCategorias(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 394
    :goto_1
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 396
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v13, v0, :cond_3

    .line 401
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    sput-object v0, Lcl/santander/smartphone/Global;->categorias_poi:Ljava/util/ArrayList;

    .line 402
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V

    goto :goto_0

    .line 368
    .end local v13    # "i":I
    :catch_0
    move-exception v12

    .line 369
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    goto :goto_1

    .line 371
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 372
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    goto :goto_1

    .line 375
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 376
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/localizador/Localizador$7;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/localizador/Localizador$7;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 385
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    .line 386
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v3, [Ljava/lang/Runnable;

    aput-object v11, v10, v2

    move v8, v3

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 389
    :cond_2
    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v3, [Ljava/lang/Runnable;

    aput-object v11, v10, v2

    move v8, v3

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 398
    .end local v9    # "s_cert":[Ljava/lang/String;
    .end local v11    # "cert":Ljava/lang/Runnable;
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    .restart local v13    # "i":I
    :cond_3
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemCategoria;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemCategoria;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemCategoria;->getUrlIcono()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcl/santander/smartphone/Utils;->downloadImage(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/response/ItemCategoria;->setIcono(Landroid/graphics/drawable/Drawable;)V

    .line 396
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method private localizaAutomaticamente()V
    .locals 4

    .prologue
    .line 641
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->localiza:Ljava/util/concurrent/Semaphore;

    .line 642
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->cargaDialogo()V

    .line 645
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->tv_direccion:Landroid/widget/TextView;

    new-instance v1, Lcl/santander/smartphone/localizador/Localizador$14;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Localizador$14;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 703
    const-wide/16 v2, 0xc8

    .line 645
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 704
    return-void
.end method

.method private localizaManualmente(Landroid/location/Address;)V
    .locals 4
    .param p1, "direccion"    # Landroid/location/Address;

    .prologue
    .line 711
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->cargaDialogo()V

    .line 713
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->tv_direccion:Landroid/widget/TextView;

    new-instance v1, Lcl/santander/smartphone/localizador/Localizador$15;

    invoke-direct {v1, p0, p1}, Lcl/santander/smartphone/localizador/Localizador$15;-><init>(Lcl/santander/smartphone/localizador/Localizador;Landroid/location/Address;)V

    .line 741
    const-wide/16 v2, 0xc8

    .line 713
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 742
    return-void
.end method

.method private makeGPSalert()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 568
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 570
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 573
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcl/santander/smartphone/localizador/Localizador$11;

    invoke-direct {v4, p0}, Lcl/santander/smartphone/localizador/Localizador$11;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcl/santander/smartphone/localizador/Localizador$12;

    invoke-direct {v3, p0}, Lcl/santander/smartphone/localizador/Localizador$12;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 601
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 602
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 603
    return-void
.end method

.method private mostrarPOIS()V
    .locals 18

    .prologue
    .line 769
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    .line 775
    .local v13, "s":[Ljava/lang/String;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->filtraCategorias()Ljava/util/ArrayList;

    move-result-object v8

    .line 778
    .local v8, "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getTipoBusqueda()Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v1

    if-nez v1, :cond_1

    .line 779
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    .line 783
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    .line 786
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->setIcons()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 820
    .end local v8    # "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->fmg:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v17

    .line 821
    .local v17, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/16 v1, 0x1003

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 823
    move-object/from16 v0, p0

    iget v1, v0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 825
    const v1, 0x7f060229

    new-instance v2, Lcl/santander/smartphone/localizador/Lista;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcl/santander/smartphone/localizador/Lista;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 826
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    .line 834
    :goto_2
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 835
    return-void

    .line 781
    .end local v17    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .restart local v8    # "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v2, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v4, v4, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const/16 v6, 0x1388

    const/16 v7, 0x14

    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getTipoBusqueda()Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static/range {v1 .. v10}, Lcl/santander/smartphone/ServicesManager;->ListadoPois(Landroid/app/Activity;DDIILjava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;Z)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 791
    .end local v8    # "ids_categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 792
    .local v16, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f05015b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/localizador/Localizador;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v5, v13

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 793
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    goto :goto_1

    .line 794
    .end local v16    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v16

    .line 795
    .local v16, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f05015c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/localizador/Localizador;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v5, v13

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 796
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 798
    .end local v16    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v16

    .line 799
    .local v16, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v15, Lcl/santander/smartphone/localizador/Localizador$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcl/santander/smartphone/localizador/Localizador$16;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 808
    .local v15, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 809
    .local v5, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 810
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 812
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 814
    .end local v5    # "s_cert":[Ljava/lang/String;
    .end local v15    # "cert":Ljava/lang/Runnable;
    .end local v16    # "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    :catch_3
    move-exception v16

    .line 816
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f05015a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v1, 0x7f0500c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 817
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 830
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v17    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    const v1, 0x7f060229

    new-instance v2, Lcl/santander/smartphone/localizador/Mapa;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcl/santander/smartphone/localizador/Mapa;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 831
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    goto/16 :goto_2
.end method

.method private scheduleGeo()V
    .locals 4

    .prologue
    .line 621
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 622
    .local v0, "t":Ljava/util/Timer;
    new-instance v1, Lcl/santander/smartphone/localizador/Localizador$13;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Localizador$13;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 636
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/32 v2, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 637
    return-void
.end method

.method private setIcons()V
    .locals 5

    .prologue
    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 440
    return-void

    .line 411
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 413
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 409
    .end local v1    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .restart local v1    # "j":I
    :cond_2
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getIdCategoria()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemCategoria;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemCategoria;->getIdCategoria()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 417
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    iget-object v3, p0, Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemCategoria;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemCategoria;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->setIcono(Landroid/graphics/drawable/Drawable;)V

    .line 413
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    .end local v1    # "j":I
    :cond_4
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->SUCURSAL:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->setIcono(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 433
    :cond_5
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->CAJERO:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->setIcono(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method private userWantsAutomaticLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 541
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 543
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 544
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcl/santander/smartphone/localizador/Localizador$9;

    invoke-direct {v4, p0}, Lcl/santander/smartphone/localizador/Localizador$9;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcl/santander/smartphone/localizador/Localizador$10;

    invoke-direct {v3, p0}, Lcl/santander/smartphone/localizador/Localizador$10;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 562
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 565
    return-void
.end method


# virtual methods
.method public cargaDialogo()V
    .locals 7

    .prologue
    .line 486
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 487
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030024

    .line 488
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    const v6, 0x7f060091

    invoke-virtual {v4, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 487
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 490
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f060093

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 491
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050124

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    sget-object v4, Lcl/santander/smartphone/Utils;->tf_bold:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 495
    move-object v2, v1

    .line 497
    .local v2, "layout_aux":Landroid/view/View;
    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->ad_semaphore:Ljava/util/concurrent/Semaphore;

    .line 498
    new-instance v4, Lcl/santander/smartphone/localizador/Localizador$8;

    invoke-direct {v4, p0, v2}, Lcl/santander/smartphone/localizador/Localizador$8;-><init>(Lcl/santander/smartphone/localizador/Localizador;Landroid/view/View;)V

    iput-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;

    .line 527
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 536
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 147
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 148
    iput-object p0, p0, Lcl/santander/smartphone/localizador/Localizador;->sf:Lcl/santander/smartphone/localizador/Localizador;

    .line 151
    sput-boolean v2, Lcl/santander/smartphone/Global;->fromDirections:Z

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->initComponents()V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/Localizador;->setHasOptionsMenu(Z)V

    .line 165
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/localizador/Localizador$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Localizador$2;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 173
    const-wide/16 v2, 0x32

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 917
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 927
    :goto_0
    return-void

    .line 922
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcl/santander/smartphone/Utils;->GPS_MENU:Z

    .line 924
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Localizador;->userWantsAutomaticLocation()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/Localizador;->setRetainInstance(Z)V

    .line 119
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 446
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 447
    .local v0, "bar":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v1, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 450
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 451
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const v7, 0x7f060229

    const/16 v4, 0x1003

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 455
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 477
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 457
    :pswitch_0
    iget v3, p0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    if-ne v3, v6, :cond_0

    .line 458
    iget-object v3, p0, Lcl/santander/smartphone/localizador/Localizador;->fmg:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 459
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 460
    new-instance v3, Lcl/santander/smartphone/localizador/Mapa;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcl/santander/smartphone/localizador/Mapa;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 461
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 463
    iput v2, p0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    goto :goto_0

    .line 468
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_1
    iget v3, p0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    if-ne v3, v2, :cond_0

    .line 469
    iget-object v3, p0, Lcl/santander/smartphone/localizador/Localizador;->fmg:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 470
    .local v1, "ft2":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 471
    new-instance v3, Lcl/santander/smartphone/localizador/Lista;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador;->listaOficinas:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcl/santander/smartphone/localizador/Lista;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 472
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 473
    iput v6, p0, Lcl/santander/smartphone/localizador/Localizador;->fragmento:I

    goto :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x7f060393
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 931
    new-instance v7, Lcl/santander/smartphone/localizador/Localizador$17;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/localizador/Localizador$17;-><init>(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 940
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 941
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Localizador;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050168

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 943
    .local v6, "d":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 946
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 947
    return-void
.end method
