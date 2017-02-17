.class public Lcl/santander/smartphone/ImagenesCheque;
.super Landroid/app/Activity;
.source "ImagenesCheque.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;
    }
.end annotation


# instance fields
.field act:Landroid/app/Activity;

.field cheque:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

.field cuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

.field detalle_cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

.field imagen_cheque:Landroid/widget/ImageView;

.field private pageAdapter:Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorOrientacion:Landroid/hardware/Sensor;

.field private vp_pager:Landroid/support/v4/view/ViewPager;

.field private vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private activaRotacion()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 217
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->act:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->sensorManager:Landroid/hardware/SensorManager;

    .line 218
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->sensorOrientacion:Landroid/hardware/Sensor;

    .line 219
    iget-object v1, p0, Lcl/santander/smartphone/ImagenesCheque;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->act:Landroid/app/Activity;

    check-cast v0, Lcl/santander/smartphone/ImagenesCheque;

    iget-object v2, p0, Lcl/santander/smartphone/ImagenesCheque;->sensorOrientacion:Landroid/hardware/Sensor;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 222
    return-void
.end method

.method private verCheques()V
    .locals 15

    .prologue
    .line 146
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/ImagenesCheque;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 148
    .local v4, "s":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 150
    .local v13, "resp":Lcl/santander/santanderCL/response/ConsultaChequesResponse;
    new-instance v14, Lcl/santander/smartphone/ImagenesCheque$2;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/ImagenesCheque$2;-><init>(Lcl/santander/smartphone/ImagenesCheque;)V

    .line 160
    .local v14, "run":Ljava/lang/Runnable;
    sget-object v0, Lcl/santander/smartphone/Global;->documentoVisto:Lcl/santander/santanderCL/data/response/ItemCheque;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcl/santander/smartphone/Global;->documentoVisto:Lcl/santander/santanderCL/data/response/ItemCheque;

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->detalle_cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 163
    invoke-direct {p0}, Lcl/santander/smartphone/ImagenesCheque;->activaRotacion()V

    .line 211
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->cuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    iget-object v1, p0, Lcl/santander/smartphone/ImagenesCheque;->cheque:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    invoke-static {p0, v0, v1}, Lcl/santander/smartphone/ServicesManager;->ConsultaCheques(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemChequeAsociado;)Lcl/santander/santanderCL/response/ConsultaChequesResponse;

    move-result-object v13

    .line 171
    if-eqz v13, :cond_1

    .line 173
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/ConsultaChequesResponse;->getDetalleCheque()Lcl/santander/santanderCL/data/response/ItemCheque;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->detalle_cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->detalle_cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    sput-object v0, Lcl/santander/smartphone/Global;->documentoVisto:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 176
    invoke-direct {p0}, Lcl/santander/smartphone/ImagenesCheque;->activaRotacion()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 186
    :catch_0
    move-exception v12

    .line 187
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v14, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 182
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0500c0

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v14, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 189
    :catch_1
    move-exception v12

    .line 190
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v14, v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 193
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 194
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/ImagenesCheque$3;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/ImagenesCheque$3;-><init>(Lcl/santander/smartphone/ImagenesCheque;)V

    .line 203
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 204
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Lcl/santander/smartphone/ImagenesCheque;->verCheques()V

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->detalle_cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    if-eqz v0, :cond_0

    .line 128
    const v0, 0x7f0600bb

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 129
    const v0, 0x7f0600ba

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 130
    new-instance v0, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/ImagenesCheque;->detalle_cheque:Lcl/santander/santanderCL/data/response/ItemCheque;

    invoke-direct {v0, p0, p0, v1}, Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;-><init>(Lcl/santander/smartphone/ImagenesCheque;Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemCheque;)V

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->pageAdapter:Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/ImagenesCheque;->pageAdapter:Lcl/santander/smartphone/ImagenesCheque$ImagenesPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/ImagenesCheque;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget-object v0, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->finish()V

    .line 98
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 82
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->setContentView(I)V

    .line 84
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/ImagenesCheque;->setRequestedOrientation(I)V

    .line 85
    iput-object p0, p0, Lcl/santander/smartphone/ImagenesCheque;->act:Landroid/app/Activity;

    .line 86
    invoke-static {p0}, Lcl/santander/smartphone/Utils;->loadFonts(Landroid/content/Context;)V

    .line 91
    sget-object v0, Lcl/santander/smartphone/Global;->itemChequeVer:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->cheque:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    .line 92
    sget-object v0, Lcl/santander/smartphone/Global;->cuentaChequeVer:Lcl/santander/santanderCL/data/response/ItemProducto;

    iput-object v0, p0, Lcl/santander/smartphone/ImagenesCheque;->cuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 94
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->initPageAdapter()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 102
    new-instance v7, Lcl/santander/smartphone/ImagenesCheque$1;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/ImagenesCheque$1;-><init>(Lcl/santander/smartphone/ImagenesCheque;)V

    .line 112
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 113
    .local v4, "buttons":[Ljava/lang/String;
    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/ImagenesCheque;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050168

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 115
    .local v6, "d":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 236
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    :pswitch_0
    monitor-exit p0

    .line 251
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
