.class public Lcl/santander/smartphone/PagoOnline;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PagoOnline.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field adapterPagoOnline:Lcl/santander/smartphone/AdapterPagoOnline;

.field c_seleccionada:I

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field m_ListPagos:Landroid/widget/ListView;

.field m_ListPagosOnline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemSuscripcion;",
            ">;"
        }
    .end annotation
.end field

.field m_TextEmpty:Landroid/widget/TextView;

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field view:Landroid/view/View;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizProductos;)V
    .locals 1
    .param p1, "_cuentas"    # Lcl/santander/santanderCL/data/MatrizProductos;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcl/santander/smartphone/Utils;->getFilterProducts(Lcl/santander/santanderCL/data/MatrizProductos;I)Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 63
    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060247

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060246

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 75
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getSelected()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 82
    return-void
.end method

.method public loadDetallePago(I)V
    .locals 18
    .param p1, "_index"    # I

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    .line 294
    .local v17, "item":Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f05002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/PagoOnline;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 297
    .local v5, "s":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0}, Lcl/santander/smartphone/ServicesManager;->detalleSuscripcion(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemSuscripcion;)Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    move-result-object v14

    .line 298
    .local v14, "detalle":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    if-eqz v14, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v16

    .line 302
    .local v16, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v14}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->estaPagada()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setSelected(I)V

    .line 304
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/RealizarPagoOnline;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget v4, v0, Lcl/santander/smartphone/PagoOnline;->c_seleccionada:I

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0, v14, v4}, Lcl/santander/smartphone/RealizarPagoOnline;-><init>(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 311
    :goto_0
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 312
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 343
    .end local v14    # "detalle":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .end local v16    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_1
    return-void

    .line 307
    .restart local v14    # "detalle":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .restart local v16    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/PagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setSelected(I)V

    .line 308
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/PagoPagado;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/PagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget v4, v0, Lcl/santander/smartphone/PagoOnline;->c_seleccionada:I

    invoke-direct {v2, v3, v14, v4}, Lcl/santander/smartphone/PagoPagado;-><init>(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 317
    .end local v14    # "detalle":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .end local v16    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v12

    .line 318
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 315
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v14    # "detalle":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 320
    .end local v14    # "detalle":Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    :catch_1
    move-exception v12

    .line 321
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 323
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v15

    .line 324
    .local v15, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/PagoOnline$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/PagoOnline$3;-><init>(Lcl/santander/smartphone/PagoOnline;)V

    .line 337
    .local v13, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 338
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v15}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method public loadPagosOnline()V
    .locals 15

    .prologue
    .line 124
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/PagoOnline;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 253
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->getListaSuscripciones(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 254
    .local v14, "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemSuscripcion;>;"
    if-eqz v14, :cond_0

    .line 255
    iput-object v14, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    .line 256
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->adapterPagoOnline:Lcl/santander/smartphone/AdapterPagoOnline;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagosOnline:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/AdapterPagoOnline;->setContent(Ljava/util/ArrayList;)V

    .line 287
    .end local v14    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemSuscripcion;>;"
    :goto_0
    return-void

    .line 259
    .restart local v14    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemSuscripcion;>;"
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 261
    .end local v14    # "resp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemSuscripcion;>;"
    :catch_0
    move-exception v11

    .line 262
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 264
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v11

    .line 265
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 267
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v13

    .line 268
    .local v13, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/PagoOnline$2;

    invoke-direct {v12, p0}, Lcl/santander/smartphone/PagoOnline$2;-><init>(Lcl/santander/smartphone/PagoOnline;)V

    .line 281
    .local v12, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 282
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v5, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v12, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 285
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v12, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500e7

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/PagoOnline;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/PagoOnline;->setHasOptionsMenu(Z)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/PagoOnline;->c_seleccionada:I

    .line 93
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->initPageAdapter()V

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060248

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->m_TextEmpty:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060249

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagos:Landroid/widget/ListView;

    .line 97
    new-instance v0, Lcl/santander/smartphone/AdapterPagoOnline;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/santander/smartphone/AdapterPagoOnline;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnline;->adapterPagoOnline:Lcl/santander/smartphone/AdapterPagoOnline;

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagos:Landroid/widget/ListView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnline;->adapterPagoOnline:Lcl/santander/smartphone/AdapterPagoOnline;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->m_ListPagos:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    sget-boolean v0, Lcl/santander/smartphone/Global;->m_bCallInitialWSPagoOnline:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnline;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/PagoOnline$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnline$1;-><init>(Lcl/santander/smartphone/PagoOnline;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 121
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcl/santander/smartphone/PagoOnline;->loadDetallePago(I)V

    .line 349
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 353
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 356
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 366
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 372
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 376
    iput p1, p0, Lcl/santander/smartphone/PagoOnline;->c_seleccionada:I

    .line 377
    return-void
.end method
