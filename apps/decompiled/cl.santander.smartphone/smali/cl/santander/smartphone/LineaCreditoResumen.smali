.class public Lcl/santander/smartphone/LineaCreditoResumen;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "LineaCreditoResumen.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field bt_volver:Landroid/widget/Button;

.field id:I

.field lineas:Lcl/santander/santanderCL/data/MatrizProductos;

.field m_View:Landroid/view/View;

.field private mapa_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            "Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;",
            ">;"
        }
    .end annotation
.end field

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field root:Landroid/view/View;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field private tv_cheques:Landroid/widget/TextView;

.field private tv_depositos:Landroid/widget/TextView;

.field private tv_saldo_final:Landroid/widget/TextView;

.field private tv_saldo_ini:Landroid/widget/TextView;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizProductos;I)V
    .locals 1
    .param p1, "lineasC"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p2, "id"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->mapa_cache:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->lineas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 55
    iput p2, p0, Lcl/santander/smartphone/LineaCreditoResumen;->id:I

    .line 56
    return-void
.end method

.method private cargaResumen(Lcl/santander/santanderCL/data/response/ItemProducto;)V
    .locals 14
    .param p1, "linea"    # Lcl/santander/santanderCL/data/response/ItemProducto;

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 109
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->mapa_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->mapa_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    .line 122
    .local v13, "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :goto_0
    if-eqz v13, :cond_1

    .line 124
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getSaldoInicial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getChequeCargos()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getDepositoAbonos()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getSaldoFinal()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-direct {p0, v0, v1, v2, v3}, Lcl/santander/smartphone/LineaCreditoResumen;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v13    # "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :goto_1
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v0, p1}, Lcl/santander/smartphone/ServicesManager;->ResumenLinea(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;)Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    move-result-object v13

    .line 117
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->mapa_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 132
    .end local v13    # "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :catch_0
    move-exception v12

    .line 133
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 134
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcl/santander/smartphone/LineaCreditoResumen;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 129
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 130
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcl/santander/smartphone/LineaCreditoResumen;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 135
    .end local v13    # "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :catch_1
    move-exception v12

    .line 136
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 137
    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lcl/santander/smartphone/LineaCreditoResumen;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 139
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 140
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/LineaCreditoResumen$1;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/LineaCreditoResumen$1;-><init>(Lcl/santander/smartphone/LineaCreditoResumen;)V

    .line 153
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 154
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v5, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 157
    :cond_2
    iget-object v5, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private comparadorMonto(Ljava/lang/String;)I
    .locals 6
    .param p1, "monto"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 201
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    const/4 v3, -0x1

    .line 218
    :cond_0
    :goto_0
    return v3

    .line 206
    :cond_1
    const-string v4, "$"

    const-string v5, " "

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "aux":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 211
    .local v2, "i":I
    if-nez v2, :cond_0

    .line 212
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->root:Landroid/view/View;

    const v1, 0x7f0601e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_saldo_ini:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->root:Landroid/view/View;

    const v1, 0x7f0601e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_saldo_final:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->root:Landroid/view/View;

    const v1, 0x7f0601e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_cheques:Landroid/widget/TextView;

    .line 228
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->root:Landroid/view/View;

    const v1, 0x7f0601e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_depositos:Landroid/widget/TextView;

    .line 229
    return-void
.end method

.method private rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sI"    # Ljava/lang/String;
    .param p2, "cQ"    # Ljava/lang/String;
    .param p3, "dA"    # Ljava/lang/String;
    .param p4, "sF"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_saldo_ini:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_saldo_final:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_cheques:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_depositos:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_saldo_ini:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->setColor(Landroid/widget/TextView;)V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_cheques:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->setColor(Landroid/widget/TextView;)V

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_depositos:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->setColor(Landroid/widget/TextView;)V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->tv_saldo_final:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->setColor(Landroid/widget/TextView;)V

    .line 175
    return-void
.end method

.method private setColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 180
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "monto":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->comparadorMonto(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const/high16 v1, -0x10000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601e1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 68
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601e0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 69
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/LineaCreditoResumen;->lineas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 70
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->id:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 76
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 84
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 86
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->setHasOptionsMenu(Z)V

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->initPageAdapter()V

    .line 93
    invoke-virtual {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->root:Landroid/view/View;

    .line 95
    invoke-direct {p0}, Lcl/santander/smartphone/LineaCreditoResumen;->initComponents()V

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->lineas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->id:I

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->cargaResumen(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->m_View:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 234
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 253
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 256
    iput p1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->id:I

    .line 257
    iget-object v0, p0, Lcl/santander/smartphone/LineaCreditoResumen;->lineas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v1, p0, Lcl/santander/smartphone/LineaCreditoResumen;->id:I

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcl/santander/smartphone/LineaCreditoResumen;->cargaResumen(Lcl/santander/santanderCL/data/response/ItemProducto;)V

    .line 259
    return-void
.end method
