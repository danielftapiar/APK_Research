.class public Lcl/santander/smartphone/TransferSupergirosConfirm;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TransferSupergirosConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;
    }
.end annotation


# static fields
.field private static final STATE_CLAVE3:I = 0x1

.field private static final STATE_COORDENADAS:I = 0x0

.field private static final STATE_REPORT:I = 0x2


# instance fields
.field banco:Ljava/lang/String;

.field bt_Confirmar:Landroid/widget/Button;

.field clave:Ljava/lang/String;

.field private codOpt:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

.field codigoSupergiro:Ljava/lang/String;

.field coord_1:Ljava/lang/String;

.field coord_2:Ljava/lang/String;

.field coord_3:Ljava/lang/String;

.field coordenada1:Ljava/lang/String;

.field coordenada2:Ljava/lang/String;

.field coordenada3:Ljava/lang/String;

.field cuenta:Ljava/lang/String;

.field datossupergiros:Lcl/santander/santanderCL/data/DatosSupergiros;

.field private email:Ljava/lang/String;

.field et_clave:Landroid/widget/EditText;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field idtrx:Ljava/lang/String;

.field ll_clave:Landroid/widget/LinearLayout;

.field ll_coordenadas:Landroid/widget/LinearLayout;

.field ll_nombre:Landroid/widget/LinearLayout;

.field ll_numerocuenta:Landroid/widget/LinearLayout;

.field ll_report:Landroid/widget/LinearLayout;

.field ll_rut:Landroid/widget/LinearLayout;

.field ll_saldo:Landroid/widget/LinearLayout;

.field ll_tipocuenta:Landroid/widget/LinearLayout;

.field m_View:Landroid/view/View;

.field monto:Ljava/lang/String;

.field montoInt:I

.field nompersona:Ljava/lang/String;

.field nuevoSaldo:Ljava/lang/String;

.field numeroTarjeta:Ljava/lang/String;

.field numeroTelefono:Ljava/lang/String;

.field origen:Lcl/santander/santanderCL/data/response/ItemProducto;

.field rutDest:Ljava/lang/String;

.field rutDestScreen:Ljava/lang/String;

.field rutOri:Ljava/lang/String;

.field rutOriScreen:Ljava/lang/String;

.field segmento:Ljava/lang/String;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field state:I

.field tipocuenta:Ljava/lang/String;

.field tv_banco_origen:Landroid/widget/TextView;

.field tv_clave_instrucciones:Landroid/widget/TextView;

.field tv_confirm_instrucciones:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_monto:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_numcuenta:Landroid/widget/TextView;

.field tv_report_code:Landroid/widget/TextView;

.field tv_rutDest:Landroid/widget/TextView;

.field tv_rutOri:Landroid/widget/TextView;

.field tv_saldo:Landroid/widget/TextView;

.field tv_tipocuenta:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "origen"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "monto"    # Ljava/lang/String;
    .param p3, "montoInt"    # I
    .param p4, "rutOri"    # Ljava/lang/String;
    .param p5, "rutOriScreen"    # Ljava/lang/String;
    .param p6, "rutDest"    # Ljava/lang/String;
    .param p7, "rutDestScreen"    # Ljava/lang/String;
    .param p8, "numeroTarjeta"    # Ljava/lang/String;
    .param p9, "coordenada1"    # Ljava/lang/String;
    .param p10, "coordenada2"    # Ljava/lang/String;
    .param p11, "coordenada3"    # Ljava/lang/String;
    .param p12, "segmento"    # Ljava/lang/String;
    .param p13, "nompersona"    # Ljava/lang/String;
    .param p14, "tipocuenta"    # Ljava/lang/String;
    .param p15, "cuenta"    # Ljava/lang/String;
    .param p16, "banco"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 79
    iput-object p2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->monto:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->montoInt:I

    .line 81
    iput-object p4, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutOri:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutOriScreen:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutDest:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutDestScreen:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 86
    iput-object p8, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->numeroTarjeta:Ljava/lang/String;

    .line 87
    iput-object p9, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada1:Ljava/lang/String;

    .line 88
    iput-object p10, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada2:Ljava/lang/String;

    .line 89
    iput-object p11, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada3:Ljava/lang/String;

    .line 90
    iput-object p12, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->segmento:Ljava/lang/String;

    .line 91
    iput-object p13, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->nompersona:Ljava/lang/String;

    .line 92
    iput-object p14, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tipocuenta:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p15

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->cuenta:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p16

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->banco:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/TransferSupergirosConfirm;)Z
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->supergiroVerificar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/TransferSupergirosConfirm;I)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcl/santander/smartphone/TransferSupergirosConfirm;->changeState(I)V

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/TransferSupergirosConfirm;)Z
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->supergiroRealizar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/TransferSupergirosConfirm;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->desafioSuperGiro()V

    return-void
.end method

.method private changeState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const v6, 0x7f0500a7

    const v5, 0x7f050072

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 508
    packed-switch p1, :pswitch_data_0

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 511
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_report:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_saldo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_confirm_instrucciones:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 516
    const v3, 0x7f050070

    .line 515
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->numeroTarjeta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_nombre:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->nompersona:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_rutOri:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutOriScreen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_banco_origen:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->banco:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 532
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_report:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->codOpt:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->SMS:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    if-eq v0, v1, :cond_1

    .line 539
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->codOpt:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->SIN_TIPO:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    if-ne v0, v1, :cond_2

    .line 540
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_clave_instrucciones:Landroid/widget/TextView;

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 542
    const v3, 0x7f0500a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->numeroTelefono:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->codOpt:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;->EMAIL:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_clave_instrucciones:Landroid/widget/TextView;

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 551
    const v3, 0x7f0500a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 554
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 561
    :pswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 562
    const v1, 0x7f0500f2

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {v4, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_nombre:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_rut:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_report:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_saldo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_numerocuenta:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_saldo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->nuevoSaldo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_report_code:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->codigoSupergiro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 574
    const v2, 0x7f050079

    .line 573
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private desafioSuperGiro()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 104
    new-array v4, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 109
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 110
    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutDest:Ljava/lang/String;

    iget v5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->montoInt:I

    .line 109
    invoke-static {v0, v1, v2, v3, v5}, Lcl/santander/smartphone/ServicesManager;->supergiroIngreso(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    move-result-object v13

    .line 112
    .local v13, "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    if-eqz v13, :cond_0

    .line 114
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada1:Ljava/lang/String;

    .line 115
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada2:Ljava/lang/String;

    .line 116
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada3:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coordenada3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v13    # "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :goto_0
    return-void

    .line 123
    .restart local v13    # "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 124
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 130
    .end local v13    # "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :catch_0
    move-exception v12

    .line 131
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 132
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    .line 131
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 135
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 136
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 137
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    .line 136
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 141
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 142
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/TransferSupergirosConfirm$1;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$1;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    .line 159
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 161
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 164
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    const v1, 0x7f0501c4

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    const v1, 0x7f0501c5

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    .line 162
    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 171
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 172
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    const v1, 0x7f0501c2

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    const v1, 0x7f0501c3

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 176
    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    .line 170
    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 436
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 437
    const v1, 0x7f060321

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 436
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    .line 438
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 439
    const v1, 0x7f060304

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 438
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_monto:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 441
    const v1, 0x7f06030d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 440
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_tipocuenta:Landroid/widget/TextView;

    .line 442
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 443
    const v1, 0x7f06030b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 442
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_numcuenta:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 445
    const v1, 0x7f060311

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_saldo:Landroid/widget/TextView;

    .line 446
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 447
    const v1, 0x7f060306

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 446
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_nombre:Landroid/widget/TextView;

    .line 448
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 449
    const v1, 0x7f060312

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 448
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_rutDest:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 451
    const v1, 0x7f060308

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 450
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_rutOri:Landroid/widget/TextView;

    .line 452
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 453
    const v1, 0x7f060313

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 452
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    .line 454
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 455
    const v1, 0x7f060316

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 454
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_coordenadas:Landroid/widget/LinearLayout;

    .line 456
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 457
    const v1, 0x7f06031e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 456
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_report:Landroid/widget/LinearLayout;

    .line 458
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 459
    const v1, 0x7f060314

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 458
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_clave:Landroid/widget/EditText;

    .line 460
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 461
    const v1, 0x7f060317

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 460
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_confirm_instrucciones:Landroid/widget/TextView;

    .line 462
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 463
    const v1, 0x7f060318

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 462
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord1:Landroid/widget/TextView;

    .line 464
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 465
    const v1, 0x7f060319

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 464
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord2:Landroid/widget/TextView;

    .line 466
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 467
    const v1, 0x7f06031a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 466
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_coord3:Landroid/widget/TextView;

    .line 468
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 469
    const v1, 0x7f060315

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 468
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_clave_instrucciones:Landroid/widget/TextView;

    .line 470
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 471
    const v1, 0x7f06031f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 470
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_report_code:Landroid/widget/TextView;

    .line 472
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 473
    const v1, 0x7f060305

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 472
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_nombre:Landroid/widget/LinearLayout;

    .line 474
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 475
    const v1, 0x7f060307

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 474
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_rut:Landroid/widget/LinearLayout;

    .line 476
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 477
    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 476
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_tipocuenta:Landroid/widget/LinearLayout;

    .line 478
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 479
    const v1, 0x7f060310

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 478
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_saldo:Landroid/widget/LinearLayout;

    .line 480
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 481
    const v1, 0x7f060309

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 480
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->ll_numerocuenta:Landroid/widget/LinearLayout;

    .line 482
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 483
    const v1, 0x7f06030f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 482
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_banco_origen:Landroid/widget/TextView;

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->changeState(I)V

    .line 487
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 488
    const v1, 0x7f06031b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 487
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    .line 489
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 490
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 491
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 492
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 493
    const v1, 0x7f06031c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 492
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    .line 494
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 495
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 496
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 497
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 498
    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 497
    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    .line 499
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 500
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 501
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 503
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_clave:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 505
    return-void
.end method

.method private supergiroRealizar()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 362
    new-array v10, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v13

    .line 366
    .local v10, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    iget-object v2, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->datossupergiros:Lcl/santander/santanderCL/data/DatosSupergiros;

    iget-object v3, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->idtrx:Ljava/lang/String;

    .line 367
    iget-object v5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutDest:Ljava/lang/String;

    .line 368
    sget-object v6, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v6}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->montoInt:I

    .line 366
    invoke-static/range {v0 .. v7}, Lcl/santander/smartphone/ServicesManager;->supergiroRealizar(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/DatosSupergiros;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;

    move-result-object v11

    .line 370
    .local v11, "sgr":Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    if-eqz v11, :cond_0

    .line 371
    invoke-virtual {v11}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->getNuevoSaldoScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->nuevoSaldo:Ljava/lang/String;

    .line 372
    invoke-virtual {v11}, Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;->getClaveTransf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->codigoSupergiro:Ljava/lang/String;

    move v0, v12

    .line 432
    .end local v11    # "sgr":Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    :goto_0
    return v0

    .line 376
    .restart local v11    # "sgr":Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 377
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 378
    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v10

    .line 375
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v13

    .line 381
    goto :goto_0

    .line 383
    .end local v11    # "sgr":Lcl/santander/santanderCL/response/Transf_Supergiro_RealizarResponse;
    :catch_0
    move-exception v9

    .line 384
    .local v9, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 385
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v9}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v12

    move-object v4, v10

    move-object v5, v14

    .line 384
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_1
    move v0, v13

    .line 432
    goto :goto_0

    .line 388
    :catch_1
    move-exception v9

    .line 389
    .local v9, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 390
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-virtual {v9}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v12

    move-object v4, v10

    move-object v5, v14

    .line 389
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 394
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v9

    .line 395
    .local v9, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v8, Lcl/santander/smartphone/TransferSupergirosConfirm$5;

    invoke-direct {v8, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$5;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    .line 412
    .local v8, "cert":Ljava/lang/Runnable;
    new-array v4, v12, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 413
    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v13

    .line 414
    .local v4, "s_cert":[Ljava/lang/String;
    invoke-virtual {v9}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 417
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    const v2, 0x7f0501c4

    .line 417
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 420
    const v3, 0x7f0501c5

    .line 419
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    new-array v5, v12, [Ljava/lang/Runnable;

    aput-object v8, v5, v13

    move v3, v12

    .line 415
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 424
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 425
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 426
    const v2, 0x7f0501c2

    .line 425
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 428
    const v3, 0x7f0501c3

    .line 427
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 429
    new-array v5, v12, [Ljava/lang/Runnable;

    aput-object v8, v5, v13

    move v3, v12

    .line 423
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private supergiroVerificar()Z
    .locals 14

    .prologue
    .line 276
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v0

    .line 277
    .local v12, "s":[Ljava/lang/String;
    new-instance v11, Lcl/santander/smartphone/TransferSupergirosConfirm$3;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$3;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    .line 287
    .local v11, "run":Ljava/lang/Runnable;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 288
    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v2

    .line 289
    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutDest:Ljava/lang/String;

    iget v5, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->montoInt:I

    .line 290
    iget-object v6, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coord_1:Ljava/lang/String;

    iget-object v7, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coord_2:Ljava/lang/String;

    iget-object v8, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->coord_3:Ljava/lang/String;

    .line 287
    invoke-static/range {v0 .. v8}, Lcl/santander/smartphone/ServicesManager;->supergiroVerificar(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;

    move-result-object v13

    .line 292
    .local v13, "sgv":Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    if-eqz v13, :cond_0

    .line 293
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getNumeroTelefonoScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->numeroTelefono:Ljava/lang/String;

    .line 294
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getMail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->email:Ljava/lang/String;

    .line 295
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getTipoNotificacion()Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->codOpt:Lcl/santander/santanderCL/utils/Constant$TIPO_DE_NOTIFICACION;

    .line 296
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getDatosSupergiros()Lcl/santander/santanderCL/data/DatosSupergiros;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->datossupergiros:Lcl/santander/santanderCL/data/DatosSupergiros;

    .line 297
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;->getIdtrx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->idtrx:Ljava/lang/String;

    .line 298
    const/4 v0, 0x1

    .line 357
    .end local v13    # "sgv":Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    :goto_0
    return v0

    .line 301
    .restart local v13    # "sgv":Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 302
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 303
    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object v4, v12

    .line 300
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 306
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    .end local v13    # "sgv":Lcl/santander/santanderCL/response/Transf_Supergiro_VerificarResponse;
    :catch_0
    move-exception v10

    .line 309
    .local v10, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 310
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object v4, v12

    .line 309
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 357
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :catch_1
    move-exception v10

    .line 314
    .local v10, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 315
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object v4, v12

    .line 314
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 319
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v10

    .line 320
    .local v10, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v9, Lcl/santander/smartphone/TransferSupergirosConfirm$4;

    invoke-direct {v9, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$4;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    .line 337
    .local v9, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 338
    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 339
    .local v4, "s_cert":[Ljava/lang/String;
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 342
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 343
    const v2, 0x7f0501c4

    .line 342
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 345
    const v3, 0x7f0501c5

    .line 344
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    .line 340
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 349
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 350
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 351
    const v2, 0x7f0501c2

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 353
    const v3, 0x7f0501c3

    .line 352
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    .line 348
    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 646
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 650
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    :cond_3
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 652
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 651
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 653
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 654
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 655
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 212
    :goto_0
    return-object v0

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 219
    iput-object p0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 220
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 221
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 222
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    .line 223
    const v2, 0x7f0500f2

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/TransferSupergirosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->setHasOptionsMenu(Z)V

    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    invoke-direct {p0}, Lcl/santander/smartphone/TransferSupergirosConfirm;->initComponents()V

    .line 229
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_monto:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->monto:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_rutDest:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->rutDestScreen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_tipocuenta:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tipocuenta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->tv_numcuenta:Landroid/widget/TextView;

    .line 233
    iget-object v1, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->cuenta:Ljava/lang/String;

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseNumeroCuenta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->bt_Confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/TransferSupergirosConfirm$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferSupergirosConfirm$2;-><init>(Lcl/santander/smartphone/TransferSupergirosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    const v0, 0x7f03006c

    .line 187
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->m_View:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 583
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 594
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 586
    :pswitch_0
    iget v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 587
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 588
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 589
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferSupergirosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
