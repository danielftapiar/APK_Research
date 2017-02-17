.class public Lcl/santander/smartphone/TransferTercerosConfirm;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TransferTercerosConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;
    }
.end annotation


# static fields
.field private static final STATE_CLAVE:I = 0x1

.field private static final STATE_COORDENADAS:I = 0x0

.field private static final STATE_REPORT:I = 0x2


# instance fields
.field bt_Confirmar:Landroid/widget/Button;

.field codBancoDestino:Ljava/lang/String;

.field private codOpt:Ljava/lang/String;

.field codTipoCuentaDestino:Ljava/lang/String;

.field codotp:Ljava/lang/String;

.field coord_1:Ljava/lang/String;

.field coord_2:Ljava/lang/String;

.field coord_3:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field email:Ljava/lang/String;

.field et_clave:Landroid/widget/EditText;

.field et_comentario:Landroid/widget/EditText;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field et_email_destino:Landroid/widget/EditText;

.field et_email_origen:Landroid/widget/EditText;

.field idtrx:Ljava/lang/String;

.field itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

.field limitesTransferencias:Lcl/santander/santanderCL/data/LimitesTransferencias;

.field ll_clave:Landroid/widget/LinearLayout;

.field ll_coordenadas:Landroid/widget/LinearLayout;

.field ll_idtransaccion:Landroid/widget/LinearLayout;

.field ll_report:Landroid/widget/LinearLayout;

.field m_View:Landroid/view/View;

.field monto:Ljava/lang/String;

.field nombre:Ljava/lang/String;

.field nombreBancoDestino:Ljava/lang/String;

.field nombreTipoCuentaDestino:Ljava/lang/String;

.field numeroTarjeta:Ljava/lang/String;

.field numeroTelefono:Ljava/lang/String;

.field otpidtrx:Ljava/lang/String;

.field pedirOTP:Z

.field producto:Ljava/lang/String;

.field rut:Ljava/lang/String;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field state:I

.field tv_banco_destino:Landroid/widget/TextView;

.field tv_banco_origen:Landroid/widget/TextView;

.field tv_clave_instrucciones:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_idtransaccion:Landroid/widget/TextView;

.field tv_instrucciones:Landroid/widget/TextView;

.field tv_monto:Landroid/widget/TextView;

.field tv_montoatransferir:Landroid/widget/TextView;

.field tv_nombre_destino:Landroid/widget/TextView;

.field tv_nombre_origen:Landroid/widget/TextView;

.field tv_numcuenta_destino:Landroid/widget/TextView;

.field tv_numcuenta_origen:Landroid/widget/TextView;

.field tv_report_infomail:Landroid/widget/TextView;

.field tv_rut_destino:Landroid/widget/TextView;

.field tv_rut_origen:Landroid/widget/TextView;

.field tv_tipo_destino:Landroid/widget/TextView;

.field tv_tipo_origen:Landroid/widget/TextView;

.field valueTelf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/LimitesTransferencias;)V
    .locals 1
    .param p1, "itemOrigen"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "rut"    # Ljava/lang/String;
    .param p3, "nombre"    # Ljava/lang/String;
    .param p4, "cuenta"    # Ljava/lang/String;
    .param p5, "monto"    # Ljava/lang/String;
    .param p6, "producto"    # Ljava/lang/String;
    .param p7, "coordenada1"    # Ljava/lang/String;
    .param p8, "coordenada2"    # Ljava/lang/String;
    .param p9, "coordenada3"    # Ljava/lang/String;
    .param p10, "email"    # Ljava/lang/String;
    .param p11, "numeroTarjeta"    # Ljava/lang/String;
    .param p12, "nombreBancoDestino"    # Ljava/lang/String;
    .param p13, "nombreTipoCuentaDestino"    # Ljava/lang/String;
    .param p14, "codBancoDestino"    # Ljava/lang/String;
    .param p15, "codTipoCuentaDestino"    # Ljava/lang/String;
    .param p16, "limitesTransferencias"    # Lcl/santander/santanderCL/data/LimitesTransferencias;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 91
    iput-object p2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->rut:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombre:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->cuenta:Ljava/lang/String;

    .line 94
    iput-object p5, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->monto:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->producto:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 97
    iput-object p7, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_1:Ljava/lang/String;

    .line 98
    iput-object p8, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_2:Ljava/lang/String;

    .line 99
    iput-object p9, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_3:Ljava/lang/String;

    .line 100
    iput-object p10, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->email:Ljava/lang/String;

    .line 101
    iput-object p11, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->numeroTarjeta:Ljava/lang/String;

    .line 102
    iput-object p12, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombreBancoDestino:Ljava/lang/String;

    .line 103
    iput-object p13, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombreTipoCuentaDestino:Ljava/lang/String;

    .line 104
    iput-object p14, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->codBancoDestino:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p15

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->codTipoCuentaDestino:Ljava/lang/String;

    .line 106
    move-object/from16 v0, p16

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->limitesTransferencias:Lcl/santander/santanderCL/data/LimitesTransferencias;

    .line 107
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/TransferTercerosConfirm;I)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcl/santander/smartphone/TransferTercerosConfirm;->changeState(I)V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/TransferTercerosConfirm;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->desafioTerceros()V

    return-void
.end method

.method private changeState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const v6, 0x7f0500a7

    const v5, 0x7f050091

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_report:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_idtransaccion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_instrucciones:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 331
    const v3, 0x7f050070

    .line 330
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->numeroTarjeta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_montoatransferir:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_report:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_idtransaccion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->codOpt:Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_clave_instrucciones:Landroid/widget/TextView;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 350
    const v3, 0x7f0500a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->numeroTelefono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_0
    :goto_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_montoatransferir:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->codOpt:Ljava/lang/String;

    const-string v1, "001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_clave_instrucciones:Landroid/widget/TextView;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 359
    const v3, 0x7f0500a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 372
    :pswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 373
    const v1, 0x7f0500f2

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/TransferTercerosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {v4, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_report:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_idtransaccion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_idtransaccion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->idtrx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_montoatransferir:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_monto:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_montoatransferir:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 383
    const v2, 0x7f0500a0

    .line 382
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 385
    const v2, 0x7f050079

    .line 384
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_report_infomail:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 388
    const v3, 0x7f0500a1

    .line 387
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0500a2

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/TransferTercerosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private desafioTerceros()V
    .locals 13

    .prologue
    .line 116
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 122
    .local v11, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->monto:Ljava/lang/String;

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    .line 127
    .local v8, "montoInt":I
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 128
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->rut:Ljava/lang/String;

    iget-object v5, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->cuenta:Ljava/lang/String;

    .line 131
    iget-object v6, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->codBancoDestino:Ljava/lang/String;

    iget-object v7, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->codTipoCuentaDestino:Ljava/lang/String;

    .line 127
    invoke-static/range {v0 .. v8}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_verifica(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    move-result-object v12

    .line 133
    .local v12, "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    if-eqz v12, :cond_0

    .line 134
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_1:Ljava/lang/String;

    .line 135
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_2:Ljava/lang/String;

    .line 136
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_3:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .end local v8    # "montoInt":I
    .end local v12    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v10

    .line 124
    .local v10, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .restart local v8    # "montoInt":I
    goto :goto_0

    .line 144
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 145
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 146
    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v11

    .line 143
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 151
    .end local v8    # "montoInt":I
    .end local v12    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :catch_1
    move-exception v10

    .line 152
    .local v10, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 153
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v11

    .line 152
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 156
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_2
    move-exception v10

    .line 157
    .local v10, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 158
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v11

    .line 157
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 162
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_3
    move-exception v10

    .line 163
    .local v10, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v9, Lcl/santander/smartphone/TransferTercerosConfirm$1;

    invoke-direct {v9, p0}, Lcl/santander/smartphone/TransferTercerosConfirm$1;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    .line 180
    .local v9, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 181
    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 182
    .local v4, "s_cert":[Ljava/lang/String;
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 185
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 186
    const v2, 0x7f0501c4

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    const v3, 0x7f0501c5

    .line 187
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    .line 183
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 192
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 193
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    const v2, 0x7f0501c2

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 196
    const v3, 0x7f0501c3

    .line 195
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    .line 191
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 731
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 735
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    :cond_3
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 737
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 736
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 738
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 739
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 740
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 213
    const-string v0, ""

    .line 214
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 233
    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 586
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 587
    const v1, 0x7f060349

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 586
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_report_infomail:Landroid/widget/TextView;

    .line 588
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 589
    const v1, 0x7f06034a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 588
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    .line 590
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 591
    const v1, 0x7f06032d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 590
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_monto:Landroid/widget/TextView;

    .line 592
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 593
    const v1, 0x7f06032f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 592
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_rut_origen:Landroid/widget/TextView;

    .line 594
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 595
    const v1, 0x7f06032e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 594
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_nombre_origen:Landroid/widget/TextView;

    .line 596
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 597
    const v1, 0x7f060332

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 596
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_tipo_origen:Landroid/widget/TextView;

    .line 598
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 599
    const v1, 0x7f060333

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 598
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_numcuenta_origen:Landroid/widget/TextView;

    .line 600
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 601
    const v1, 0x7f060330

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 600
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_banco_origen:Landroid/widget/TextView;

    .line 602
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 603
    const v1, 0x7f060335

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 602
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_rut_destino:Landroid/widget/TextView;

    .line 604
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 605
    const v1, 0x7f060334

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 604
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_nombre_destino:Landroid/widget/TextView;

    .line 606
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 607
    const v1, 0x7f060337

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 606
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_tipo_destino:Landroid/widget/TextView;

    .line 608
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 609
    const v1, 0x7f060338

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 608
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_numcuenta_destino:Landroid/widget/TextView;

    .line 610
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 611
    const v1, 0x7f060336

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 610
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_banco_destino:Landroid/widget/TextView;

    .line 612
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 613
    const v1, 0x7f06032b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 612
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_idtransaccion:Landroid/widget/TextView;

    .line 614
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 615
    const v1, 0x7f060347

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 614
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_clave_instrucciones:Landroid/widget/TextView;

    .line 616
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 617
    const v1, 0x7f06033e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 616
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_instrucciones:Landroid/widget/TextView;

    .line 618
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 619
    const v1, 0x7f06032c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 618
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_montoatransferir:Landroid/widget/TextView;

    .line 620
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 621
    const v1, 0x7f06033a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 620
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_email_origen:Landroid/widget/EditText;

    .line 622
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 623
    const v1, 0x7f06033b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 622
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_email_destino:Landroid/widget/EditText;

    .line 624
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 625
    const v1, 0x7f06033c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 624
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_comentario:Landroid/widget/EditText;

    .line 626
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 627
    const v1, 0x7f060346

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 626
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_clave:Landroid/widget/EditText;

    .line 628
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 629
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 630
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 631
    const v1, 0x7f060339

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 630
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    .line 632
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 633
    const v1, 0x7f060344

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 632
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    .line 634
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 635
    const v1, 0x7f060348

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 634
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_report:Landroid/widget/LinearLayout;

    .line 636
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 637
    const v1, 0x7f06032a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 636
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->ll_idtransaccion:Landroid/widget/LinearLayout;

    .line 638
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 639
    const v1, 0x7f06033f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 638
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord1:Landroid/widget/TextView;

    .line 640
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 641
    const v1, 0x7f060340

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 640
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord2:Landroid/widget/TextView;

    .line 642
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 643
    const v1, 0x7f060341

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 642
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord3:Landroid/widget/TextView;

    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcl/santander/smartphone/TransferTercerosConfirm;->changeState(I)V

    .line 646
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 647
    const v1, 0x7f06033d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 646
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    .line 648
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 649
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 650
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 651
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 652
    const v1, 0x7f060342

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 651
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    .line 653
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 654
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 655
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 656
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 657
    const v1, 0x7f060343

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 656
    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    .line 658
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 659
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 660
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 662
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_clave:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferTercerosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 664
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    iput-object p0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 241
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 242
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 243
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    .line 244
    const v2, 0x7f0500f2

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/TransferTercerosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/TransferTercerosConfirm;->setHasOptionsMenu(Z)V

    .line 246
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->initComponents()V

    .line 250
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_monto:Landroid/widget/TextView;

    .line 251
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->monto:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    .line 250
    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_rut_origen:Landroid/widget/TextView;

    .line 254
    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_nombre_origen:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_banco_origen:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    const v2, 0x7f05014f

    .line 256
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_tipo_origen:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 259
    iget-object v2, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v2

    .line 258
    invoke-static {v1, v2}, Lcl/santander/smartphone/Utils;->getTipoProductoString(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_numcuenta_origen:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_rut_destino:Landroid/widget/TextView;

    .line 263
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->rut:Ljava/lang/String;

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_nombre_destino:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_tipo_destino:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombreTipoCuentaDestino:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_banco_destino:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombreBancoDestino:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_numcuenta_destino:Landroid/widget/TextView;

    .line 268
    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->cuenta:Ljava/lang/String;

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_email_origen:Landroid/widget/EditText;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->bt_Confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/TransferTercerosConfirm$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferTercerosConfirm$2;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    if-nez p2, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 207
    :cond_0
    const v0, 0x7f03006e

    .line 208
    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->m_View:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 668
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 679
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 671
    :pswitch_0
    iget v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 672
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 673
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 674
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public validaOTP()Z
    .locals 21

    .prologue
    .line 500
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 505
    .local v19, "s":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->monto:Ljava/lang/String;

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v16

    .line 511
    .local v16, "montoInt":I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    .line 512
    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v4

    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->email:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->rut:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->cuenta:Ljava/lang/String;

    .line 514
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->producto:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->codBancoDestino:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_email_destino:Landroid/widget/EditText;

    .line 515
    invoke-virtual {v12}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_comentario:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->otpidtrx:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    .line 511
    invoke-static/range {v2 .. v16}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_validaOTP(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;

    move-result-object v20

    .line 520
    .local v20, "vr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    if-eqz v20, :cond_0

    .line 521
    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;->getNumeroTransaccion()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->idtrx:Ljava/lang/String;

    .line 522
    const/4 v2, 0x1

    .line 581
    .end local v16    # "montoInt":I
    .end local v20    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    :goto_1
    return v2

    .line 506
    :catch_0
    move-exception v18

    .line 507
    .local v18, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    .restart local v16    # "montoInt":I
    goto :goto_0

    .line 525
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v20    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 527
    const v4, 0x7f05015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 529
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v6, v19

    .line 524
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 529
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 530
    const/4 v2, 0x0

    goto :goto_1

    .line 532
    .end local v16    # "montoInt":I
    .end local v20    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_RealizarResponse;
    :catch_1
    move-exception v18

    .line 533
    .local v18, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v6, v19

    .line 533
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 535
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 581
    .end local v18    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 537
    :catch_2
    move-exception v18

    .line 538
    .local v18, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v6, v19

    .line 538
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 541
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 543
    .end local v18    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_3
    move-exception v18

    .line 544
    .local v18, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v17, Lcl/santander/smartphone/TransferTercerosConfirm$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/TransferTercerosConfirm$5;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    .line 561
    .local v17, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 562
    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 563
    .local v6, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 567
    const v4, 0x7f0501c4

    .line 566
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 569
    const v5, 0x7f0501c5

    .line 568
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 570
    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    .line 564
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 570
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 573
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 575
    const v4, 0x7f0501c2

    .line 574
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 577
    const v5, 0x7f0501c3

    .line 576
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 578
    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    .line 572
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method

.method public validaSuperClave()Z
    .locals 24

    .prologue
    .line 396
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v22, v2

    .line 398
    .local v22, "s":[Ljava/lang/String;
    new-instance v21, Lcl/santander/smartphone/TransferTercerosConfirm$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/TransferTercerosConfirm$3;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    .line 409
    .local v21, "run":Ljava/lang/Runnable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->monto:Ljava/lang/String;

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v18

    .line 413
    .local v18, "montoInt":I
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/TransferTercerosConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_1:Ljava/lang/String;

    .line 414
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/TransferTercerosConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_2:Ljava/lang/String;

    .line 415
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/TransferTercerosConfirm;->getCoords(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_3:Ljava/lang/String;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    .line 419
    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v4

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->itemOrigen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_email_origen:Landroid/widget/EditText;

    .line 421
    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->rut:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->cuenta:Ljava/lang/String;

    .line 422
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->producto:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->codBancoDestino:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->nombre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_email_destino:Landroid/widget/EditText;

    .line 423
    invoke-virtual {v12}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->et_comentario:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->coord_3:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->limitesTransferencias:Lcl/santander/santanderCL/data/LimitesTransferencias;

    move-object/from16 v17, v0

    .line 418
    invoke-static/range {v2 .. v18}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_validasuperclave(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/LimitesTransferencias;I)Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;

    move-result-object v23

    .line 428
    .local v23, "vscr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    if-eqz v23, :cond_0

    .line 429
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->peditOTP()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->pedirOTP:Z

    .line 430
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getOtpIdtrx()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->otpidtrx:Ljava/lang/String;

    .line 431
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getOtpCodotp()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->codotp:Ljava/lang/String;

    .line 432
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getNumeroTelefonoScreen()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->numeroTelefono:Ljava/lang/String;

    .line 433
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getNumeroTelefono()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->valueTelf:Ljava/lang/String;

    .line 434
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getOtpCodotp()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->codOpt:Ljava/lang/String;

    .line 435
    invoke-virtual/range {v23 .. v23}, Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;->getNumeroTransacion()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->idtrx:Ljava/lang/String;

    .line 437
    const/4 v2, 0x1

    .line 496
    .end local v18    # "montoInt":I
    .end local v23    # "vscr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    :goto_1
    return v2

    .line 410
    :catch_0
    move-exception v20

    .line 411
    .local v20, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    .restart local v18    # "montoInt":I
    goto/16 :goto_0

    .line 440
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v23    # "vscr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 442
    const v4, 0x7f05015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    move-object/from16 v6, v22

    .line 439
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 444
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 445
    const/4 v2, 0x0

    goto :goto_1

    .line 447
    .end local v18    # "montoInt":I
    .end local v23    # "vscr":Lcl/santander/santanderCL/response/Transf_Terceros_Valida_SuperClaveResponse;
    :catch_1
    move-exception v20

    .line 448
    .local v20, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    move-object/from16 v6, v22

    .line 448
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 450
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 496
    .end local v20    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 452
    :catch_2
    move-exception v20

    .line 453
    .local v20, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v21, v7, v8

    move-object/from16 v6, v22

    .line 453
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 458
    .end local v20    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_3
    move-exception v20

    .line 459
    .local v20, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v19, Lcl/santander/smartphone/TransferTercerosConfirm$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/TransferTercerosConfirm$4;-><init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    .line 476
    .local v19, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 477
    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 478
    .local v6, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 482
    const v4, 0x7f0501c4

    .line 481
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 484
    const v5, 0x7f0501c5

    .line 483
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    .line 479
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 485
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 488
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferTercerosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 490
    const v4, 0x7f0501c2

    .line 489
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferTercerosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 492
    const v5, 0x7f0501c3

    .line 491
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 493
    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v19, v7, v8

    .line 487
    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    .line 493
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method
