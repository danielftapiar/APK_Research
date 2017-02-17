.class public Lcl/santander/smartphone/PagoOnlineConfirm;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PagoOnlineConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;
    }
.end annotation


# instance fields
.field coord_1:Ljava/lang/String;

.field coord_2:Ljava/lang/String;

.field coord_3:Ljava/lang/String;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field m_BtConfirm:Landroid/widget/Button;

.field m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

.field m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

.field m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

.field m_View:Landroid/view/View;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_a_pagar:Landroid/widget/TextView;

.field tv_cc:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_desc:Landroid/widget/TextView;

.field tv_empresa:Landroid/widget/TextView;

.field tv_fecha_pago:Landroid/widget/TextView;

.field tv_fechav:Landroid/widget/TextView;

.field tv_idcliente:Landroid/widget/TextView;

.field tv_saldo_disp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Lcl/santander/santanderCL/data/response/ItemProducto;)V
    .locals 0
    .param p1, "_itemSuscripcion"    # Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    .param p2, "_itemDetalle"    # Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .param p3, "_itemProducto"    # Lcl/santander/santanderCL/data/response/ItemProducto;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 66
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    .line 67
    iput-object p2, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 68
    iput-object p3, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/PagoOnlineConfirm;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->desafioDetallePago()V

    return-void
.end method

.method private desafioDetallePago()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 81
    new-array v4, v8, [Ljava/lang/String;

    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 84
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->detalleSuscripcion(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemSuscripcion;)Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getCoordenada1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getCoordenada2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getCoordenada3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

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

    .line 95
    :catch_0
    move-exception v11

    .line 96
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 98
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v11

    .line 99
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 101
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v13

    .line 102
    .local v13, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/PagoOnlineConfirm$1;

    invoke-direct {v12, p0}, Lcl/santander/smartphone/PagoOnlineConfirm$1;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    .line 115
    .local v12, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 116
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v5, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v12, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v12, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 347
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 348
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_BtConfirm:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 349
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 133
    const-string v0, ""

    .line 134
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    return-object v0

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_BtConfirm:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06024b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_cc:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06024d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_saldo_disp:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06024f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_empresa:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060251

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_desc:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060253

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_idcliente:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060255

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_fecha_pago:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060257

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_a_pagar:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060259

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_fechav:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06025a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord1:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06025b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord2:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06025c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord3:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_cc:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_saldo_disp:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_empresa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_idcliente:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getIdCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_fecha_pago:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getFechaPago()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_a_pagar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMontoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_fechav:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getFechaVencimiento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getCoordenada1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getCoordenada2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getCoordenada3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06025d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    .line 183
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 184
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 185
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 186
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06025e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06025f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    .line 191
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 193
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnlineConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 271
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 273
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500e8

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/PagoOnlineConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/PagoOnlineConfirm;->setHasOptionsMenu(Z)V

    .line 276
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->initScreen()V

    .line 279
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060260

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_BtConfirm:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_BtConfirm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_BtConfirm:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/PagoOnlineConfirm$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnlineConfirm$4;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const v0, 0x7f030051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_View:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 296
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public realizarPago()V
    .locals 17

    .prologue
    .line 201
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    const v2, 0x7f05002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/PagoOnlineConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v1

    .line 202
    .local v16, "s":[Ljava/lang/String;
    new-instance v15, Lcl/santander/smartphone/PagoOnlineConfirm$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcl/santander/smartphone/PagoOnlineConfirm$2;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    .line 212
    .local v15, "run":Ljava/lang/Runnable;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 215
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 216
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->coord_1:Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->coord_2:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->coord_3:Ljava/lang/String;

    .line 219
    sget-object v9, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v9}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v9

    .line 211
    invoke-static/range {v1 .. v9}, Lcl/santander/smartphone/ServicesManager;->PagoSuscripcion(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    move-result-object v14

    .line 221
    .local v14, "resp":Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    if-eqz v14, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 226
    .local v13, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/PagoOnlineReport;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-direct {v2, v3, v4, v14}, Lcl/santander/smartphone/PagoOnlineReport;-><init>(Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/response/PagoSuscripcionResponse;)V

    invoke-virtual {v13, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 228
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 262
    .end local v13    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v14    # "resp":Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    :goto_0
    return-void

    .line 232
    .restart local v14    # "resp":Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 234
    .end local v14    # "resp":Lcl/santander/santanderCL/response/PagoSuscripcionResponse;
    :catch_0
    move-exception v10

    .line 235
    .local v10, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 237
    .end local v10    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v10

    .line 238
    .local v10, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    move-object/from16 v5, v16

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 240
    .end local v10    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 241
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/PagoOnlineConfirm$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcl/santander/smartphone/PagoOnlineConfirm$3;-><init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    .line 254
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 255
    .local v5, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 258
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/PagoOnlineConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/PagoOnlineConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
