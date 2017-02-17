.class public Lcl/santander/smartphone/DetalleUltimosMovimientos;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DetalleUltimosMovimientos.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;,
        Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;,
        Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;
    }
.end annotation


# static fields
.field public static final TIPO_CUENTAS:I = 0x0

.field public static final TIPO_LINEAS:I = 0x1


# instance fields
.field private bt_aceptar:Landroid/widget/Button;

.field descripcion:Ljava/lang/String;

.field private documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

.field private et_cuantos_split:Landroid/widget/EditText;

.field private et_mail:Landroid/widget/EditText;

.field private et_mails_split:Landroid/widget/EditText;

.field private idCheque:I

.field private ll_documentos:Landroid/widget/LinearLayout;

.field private ly_mail:Landroid/widget/LinearLayout;

.field private ly_split:Landroid/widget/LinearLayout;

.field private mCuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

.field private mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

.field m_View:Landroid/view/View;

.field m_tipo_cuenta:I

.field monto:Ljava/lang/String;

.field num_mov:Ljava/lang/String;

.field observacion:Ljava/lang/String;

.field private pageAdapter:Lcl/santander/smartphone/ChequesPageAdapter;

.field private rb_mail:Landroid/widget/RadioButton;

.field private rb_split:Landroid/widget/RadioButton;

.field referencia:Ljava/lang/String;

.field sensor:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorOrientacion:Landroid/hardware/Sensor;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field private tv_cuanto_split:Landroid/widget/TextView;

.field private tv_desc_mov:Landroid/widget/TextView;

.field private tv_fecha_mov:Landroid/widget/TextView;

.field private tv_importe_mov:Landroid/widget/TextView;

.field private tv_numero_mov:Landroid/widget/TextView;

.field private tv_numero_producto:Landroid/widget/TextView;

.field private tv_observacion_mov:Landroid/widget/TextView;

.field private tv_ref_mov:Landroid/widget/TextView;

.field private tv_tipo_producto:Landroid/widget/TextView;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensor:I

    .line 100
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;I)V
    .locals 1
    .param p1, "cuenta"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "movimiento"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .param p3, "tipo_cuenta"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensor:I

    .line 103
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mCuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 104
    iput-object p2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .line 105
    iput p3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->m_tipo_cuenta:I

    .line 106
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->bt_aceptar:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ly_mail:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/MatrizChequesAsociados;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    return-object v0
.end method

.method static synthetic access$11(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$12(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorOrientacion:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ly_split:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_mail:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_split:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$5(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_cuantos_split:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mails_split:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    return-object v0
.end method

.method static synthetic access$9(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_cuanto_split:Landroid/widget/TextView;

    return-object v0
.end method

.method private cargaDocumentos()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 148
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 152
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mCuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->ChequesAsociados(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;)Lcl/santander/santanderCL/response/ChequesAsociadosResponse;

    move-result-object v13

    .line 154
    .local v13, "resp":Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    if-eqz v13, :cond_0

    .line 155
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/ChequesAsociadosResponse;->getCheques()Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    .line 186
    .end local v13    # "resp":Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    :goto_0
    return-void

    .line 157
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ll_documentos:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 159
    .end local v13    # "resp":Lcl/santander/santanderCL/response/ChequesAsociadosResponse;
    :catch_0
    move-exception v12

    .line 160
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 161
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ll_documentos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 162
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 163
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

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

    .line 164
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ll_documentos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 166
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 167
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/DetalleUltimosMovimientos$1;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos$1;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;)V

    .line 180
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    .line 181
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v5, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v3, [Ljava/lang/Runnable;

    aput-object v11, v10, v8

    move v8, v3

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 184
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v3, [Ljava/lang/Runnable;

    aput-object v11, v10, v8

    move v8, v3

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060370

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ll_documentos:Landroid/widget/LinearLayout;

    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060371

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060372

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 228
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060366

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_tipo_producto:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060367

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_numero_producto:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060369

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_importe_mov:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06036a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_fecha_mov:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06036b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_numero_mov:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06036c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_desc_mov:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06036d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_observacion_mov:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06036f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_ref_mov:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060374

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_mail:Landroid/widget/RadioButton;

    .line 238
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060378

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_split:Landroid/widget/RadioButton;

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_mail:Landroid/widget/RadioButton;

    new-instance v1, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rb_split:Landroid/widget/RadioButton;

    new-instance v1, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos$MyCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060375

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ly_mail:Landroid/widget/LinearLayout;

    .line 244
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060379

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ly_split:Landroid/widget/LinearLayout;

    .line 247
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060380

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->bt_aceptar:Landroid/widget/Button;

    .line 248
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->bt_aceptar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos$MyOnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->bt_aceptar:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->bt_aceptar:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 252
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06037b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_cuantos_split:Landroid/widget/EditText;

    .line 253
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_cuantos_split:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060376

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mail:Landroid/widget/EditText;

    .line 256
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06037e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_mails_split:Landroid/widget/EditText;

    .line 258
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06037d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_cuanto_split:Landroid/widget/TextView;

    .line 259
    return-void
.end method

.method private rellenaDatosMovimiento()V
    .locals 6

    .prologue
    .line 264
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getDescripcion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getNumeroMov()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getObservacion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getReferencia()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_tipo_producto:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mCuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_numero_producto:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mCuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_importe_mov:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->monto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v0

    .line 276
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-static {v3}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "fecha":Ljava/lang/String;
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_fecha_mov:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_desc_mov:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->descripcion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_numero_mov:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->num_mov:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_observacion_mov:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->observacion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_ref_mov:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->referencia:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->cargaDocumentos()V

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ll_documentos:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060372

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060371

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 127
    new-instance v0, Lcl/santander/smartphone/ChequesPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ChequesPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizChequesAsociados;)V

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->pageAdapter:Lcl/santander/smartphone/ChequesPageAdapter;

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->pageAdapter:Lcl/santander/smartphone/ChequesPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 132
    iput v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->idCheque:I

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->idCheque:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorOrientacion:Landroid/hardware/Sensor;

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorOrientacion:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->ll_documentos:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 604
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 192
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 196
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorManager:Landroid/hardware/SensorManager;

    .line 198
    iget v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->m_tipo_cuenta:I

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->setHasOptionsMenu(Z)V

    .line 204
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 206
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->initComponents()V

    .line 209
    invoke-direct {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->rellenaDatosMovimiento()V

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->tieneCheques()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->initPageAdapter()V

    .line 219
    :cond_1
    return-void

    .line 200
    :cond_2
    iget v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->m_tipo_cuenta:I

    if-ne v0, v3, :cond_0

    .line 201
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const v0, 0x7f030074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->m_View:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 289
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 302
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 307
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    sput-object v0, Lcl/santander/smartphone/Global;->documentoVisto:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 311
    iput p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->idCheque:I

    .line 313
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 676
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 677
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 651
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 653
    move-object v0, p0

    .line 654
    .local v0, "ult":Lcl/santander/smartphone/DetalleUltimosMovimientos;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;

    invoke-direct {v2, p0, v0}, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 669
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 671
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 607
    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 607
    :cond_0
    :goto_0
    monitor-exit p0

    .line 646
    return-void

    .line 618
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 620
    .local v1, "masData":[F
    const/4 v3, 0x2

    aget v2, v1, v3

    .line 623
    .local v2, "z":F
    const/high16 v3, -0x3d900000    # -60.0f

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_1

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 625
    :cond_1
    iget v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensor:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensor:I

    .line 627
    iget v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensor:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 630
    const/4 v3, 0x0

    iput v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensor:I

    .line 631
    invoke-virtual {p0}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->onPause()V

    .line 633
    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    iget v4, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->idCheque:I

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;->get(I)Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    move-result-object v3

    sput-object v3, Lcl/santander/smartphone/Global;->itemChequeVer:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    .line 634
    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->mCuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    sput-object v3, Lcl/santander/smartphone/Global;->cuentaChequeVer:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 635
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-class v4, Lcl/santander/smartphone/ImagenesCheque;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    .local v0, "i":Landroid/content/Intent;
    const/16 v3, 0x13ec

    invoke-virtual {p0, v0, v3}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 607
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "masData":[F
    .end local v2    # "z":F
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 616
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
