.class public Lcl/santander/smartphone/PosicionGlobal;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PosicionGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;
    }
.end annotation


# static fields
.field public static final INV_ACCIONES:I = 0x1

.field public static final INV_CONSOLIDADO:I = 0x0

.field public static final INV_DEPOSITOS:I = 0x2

.field public static final PRODUCTS_GROUPS:I = 0x3

.field private static longitudIndicator:I


# instance fields
.field list:Landroid/widget/ExpandableListView;

.field ll_creditoconsumo:Landroid/widget/LinearLayout;

.field m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

.field m_View:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcl/santander/smartphone/PosicionGlobal;->longitudIndicator:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 51
    sput p0, Lcl/santander/smartphone/PosicionGlobal;->longitudIndicator:I

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcl/santander/smartphone/PosicionGlobal;->longitudIndicator:I

    return v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/PosicionGlobal;II)Z
    .locals 1

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lcl/santander/smartphone/PosicionGlobal;->cargaOperativaProducto(II)Z

    move-result v0

    return v0
.end method

.method private cargaOperativaProducto(II)Z
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f060062

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 354
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 307
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 308
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/Cuenta;

    invoke-direct {v1, p2}, Lcl/santander/smartphone/Cuenta;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 309
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 310
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 313
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 314
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/Tarjetas;

    invoke-direct {v1, p2}, Lcl/santander/smartphone/Tarjetas;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 315
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 316
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 319
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 320
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/LineaCredito;

    invoke-direct {v1, p2}, Lcl/santander/smartphone/LineaCredito;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 321
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 322
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 325
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_3
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 327
    :pswitch_4
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 328
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-direct {v1}, Lcl/santander/smartphone/ConsolidadoInversiones;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 329
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 330
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 335
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_5
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 336
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/InversionesAcciones;

    invoke-direct {v1}, Lcl/santander/smartphone/InversionesAcciones;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 337
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 338
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 343
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_6
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 344
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/InversionesDepositos;

    invoke-direct {v1}, Lcl/santander/smartphone/InversionesDepositos;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 345
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 346
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getChildPositionFromGlobal(II)I
    .locals 3
    .param p1, "grupo"    # I
    .param p2, "idGlobal"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 172
    .end local p2    # "idGlobal":I
    :goto_0
    return p2

    .line 166
    .restart local p2    # "idGlobal":I
    :cond_0
    if-ne p1, v2, :cond_1

    .line 168
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    .line 172
    :cond_1
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v1

    .line 173
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 172
    sub-int/2addr p2, v0

    goto :goto_0
.end method

.method private getGroupPositionFromGlobal(I)I
    .locals 4
    .param p1, "idGlobal"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, v1

    .line 158
    :goto_0
    return v0

    .line 151
    :cond_0
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v3

    .line 152
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_1

    move v0, v2

    .line 154
    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public loadProducts()V
    .locals 17

    .prologue
    .line 182
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Ok"

    aput-object v2, v5, v1

    .line 184
    .local v5, "s":[Ljava/lang/String;
    new-instance v16, Lcl/santander/smartphone/PosicionGlobal$3;

    invoke-direct/range {v16 .. v17}, Lcl/santander/smartphone/PosicionGlobal$3;-><init>(Lcl/santander/smartphone/PosicionGlobal;)V

    .line 202
    .local v16, "ok":Ljava/lang/Runnable;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/ServicesManager;->PosicionGlobal(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    if-eqz v1, :cond_4

    .line 206
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->setPerfil(Lcl/santander/santanderCL/utils/Constant$PERFIL;)V

    .line 207
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getNombreApellidos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->setNombre_usuario(Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getEscalares()Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->setEscalares(Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;)V

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    .line 210
    sget-object v1, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getCuentas()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getLineasCreditos()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v1, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getTarjetas()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$PERFIL;->PERFIL4:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    if-eq v1, v2, :cond_1

    .line 217
    new-instance v12, Lcl/santander/santanderCL/data/MatrizProductos;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-direct {v12, v1}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 218
    .local v12, "Inversiones":Lcl/santander/santanderCL/data/MatrizProductos;
    new-instance v2, Lcl/santander/santanderCL/data/response/ItemProducto;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0500d2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcl/santander/santanderCL/data/response/ItemProducto;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 219
    new-instance v2, Lcl/santander/santanderCL/data/response/ItemProducto;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0500d3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcl/santander/santanderCL/data/response/ItemProducto;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 221
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$PERFIL;->PERFIL3:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    if-eq v1, v2, :cond_0

    .line 222
    new-instance v2, Lcl/santander/santanderCL/data/response/ItemProducto;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0500d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lcl/santander/santanderCL/data/response/ItemProducto;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->add(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 224
    :cond_0
    sget-object v1, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    .line 227
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PosicionGlobal;->m_Response:Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/CruceProductoOnlineResponse;->getInversionesCuentasAhorro()Lcl/santander/santanderCL/data/MatrizInversiones;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v12    # "Inversiones":Lcl/santander/santanderCL/data/MatrizProductos;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 236
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    new-instance v2, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v4, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;-><init>(Lcl/santander/smartphone/PosicionGlobal;Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 238
    sget v1, Lcl/santander/smartphone/PosicionGlobal;->longitudIndicator:I

    if-lez v1, :cond_2

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    sget v3, Lcl/santander/smartphone/PosicionGlobal;->longitudIndicator:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 241
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    new-instance v2, Lcl/santander/smartphone/PosicionGlobal$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcl/santander/smartphone/PosicionGlobal$4;-><init>(Lcl/santander/smartphone/PosicionGlobal;)V

    .line 250
    const-wide/16 v3, 0x1

    .line 241
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    new-instance v2, Lcl/santander/smartphone/PosicionGlobal$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcl/santander/smartphone/PosicionGlobal$5;-><init>(Lcl/santander/smartphone/PosicionGlobal;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 292
    :goto_1
    return-void

    .line 234
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->setIndicatorBoundsRelative(II)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 266
    :catch_0
    move-exception v13

    .line 267
    .local v13, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 264
    .end local v13    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 269
    :catch_1
    move-exception v13

    .line 270
    .local v13, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 272
    .end local v13    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v15

    .line 273
    .local v15, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v14, Lcl/santander/smartphone/PosicionGlobal$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcl/santander/smartphone/PosicionGlobal$6;-><init>(Lcl/santander/smartphone/PosicionGlobal;)V

    .line 286
    .local v14, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 287
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v15}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v14, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 290
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v14, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 65
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    sput-boolean v9, Lcl/santander/smartphone/Global;->volverSaldos:Z

    .line 68
    sput-boolean v9, Lcl/santander/smartphone/Global;->volverSimular:Z

    .line 70
    invoke-virtual {p0}, Lcl/santander/smartphone/PosicionGlobal;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 71
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    iput-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 72
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const-string v8, ""

    invoke-static {v9, v7, v8}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 74
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v8, 0x7f060286

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ExpandableListView;

    iput-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    .line 75
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v8, 0x7f060287

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->ll_creditoconsumo:Landroid/widget/LinearLayout;

    .line 77
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->ll_creditoconsumo:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    sget v7, Lcl/santander/smartphone/Global;->idPulsado:I

    if-ne v7, v10, :cond_0

    .line 83
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 85
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f030056

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 87
    .local v3, "ll":Landroid/widget/LinearLayout;
    const v7, 0x7f0200ae

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 89
    const v7, 0x7f06028a

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 90
    .local v6, "tv_creditoconsumo_titulo":Landroid/widget/TextView;
    const v7, 0x7f06028b

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 91
    .local v4, "tv_creditoconsumo_descripcion":Landroid/widget/TextView;
    const v7, 0x7f060289

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    .local v5, "tv_creditoconsumo_tipoc":Landroid/widget/TextView;
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const v7, 0x7f050061

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 96
    const v7, 0x7f050062

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->ll_creditoconsumo:Landroid/widget/LinearLayout;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 98
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->ll_creditoconsumo:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcl/santander/smartphone/PosicionGlobal;->m_View:Landroid/view/View;

    invoke-static {v7, v8}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    iget-object v7, p0, Lcl/santander/smartphone/PosicionGlobal;->ll_creditoconsumo:Landroid/widget/LinearLayout;

    new-instance v8, Lcl/santander/smartphone/PosicionGlobal$1;

    invoke-direct {v8, p0}, Lcl/santander/smartphone/PosicionGlobal$1;-><init>(Lcl/santander/smartphone/PosicionGlobal;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcl/santander/smartphone/PosicionGlobal;->getView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcl/santander/smartphone/PosicionGlobal$2;

    invoke-direct {v8, p0}, Lcl/santander/smartphone/PosicionGlobal$2;-><init>(Lcl/santander/smartphone/PosicionGlobal;)V

    .line 129
    const-wide/16 v9, 0x32

    .line 115
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "ll":Landroid/widget/LinearLayout;
    .end local v4    # "tv_creditoconsumo_descripcion":Landroid/widget/TextView;
    .end local v5    # "tv_creditoconsumo_tipoc":Landroid/widget/TextView;
    .end local v6    # "tv_creditoconsumo_titulo":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 136
    :cond_0
    sget v7, Lcl/santander/smartphone/Global;->idPulsado:I

    invoke-direct {p0, v7}, Lcl/santander/smartphone/PosicionGlobal;->getGroupPositionFromGlobal(I)I

    move-result v1

    .line 137
    .local v1, "grupo":I
    sget v7, Lcl/santander/smartphone/Global;->idPulsado:I

    invoke-direct {p0, v1, v7}, Lcl/santander/smartphone/PosicionGlobal;->getChildPositionFromGlobal(II)I

    move-result v0

    .line 139
    .local v0, "elemento":I
    invoke-direct {p0, v1, v0}, Lcl/santander/smartphone/PosicionGlobal;->cargaOperativaProducto(II)Z

    .line 140
    sput v10, Lcl/santander/smartphone/Global;->idPulsado:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const v0, 0x7f030055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PosicionGlobal;->m_View:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal;->m_View:Landroid/view/View;

    goto :goto_0
.end method
