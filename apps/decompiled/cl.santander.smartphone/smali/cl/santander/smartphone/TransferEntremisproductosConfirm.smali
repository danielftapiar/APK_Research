.class public Lcl/santander/smartphone/TransferEntremisproductosConfirm;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TransferEntremisproductosConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;
    }
.end annotation


# static fields
.field private static final STATE_CLAVE:I = 0x0

.field private static final STATE_REPORT:I = 0x1


# instance fields
.field btConfirm:Landroid/widget/Button;

.field destino:Lcl/santander/santanderCL/data/response/ItemProducto;

.field et_clave:Landroid/widget/EditText;

.field ll_clave:Landroid/widget/LinearLayout;

.field ll_comprobante:Landroid/widget/LinearLayout;

.field m_View:Landroid/view/View;

.field monto:Ljava/lang/String;

.field origen:Lcl/santander/santanderCL/data/response/ItemProducto;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field state:I

.field tv_destino_numerocuenta:Landroid/widget/TextView;

.field tv_destino_saldo:Landroid/widget/TextView;

.field tv_destino_tipocuenta:Landroid/widget/TextView;

.field tv_monto:Landroid/widget/TextView;

.field tv_origen_numerocuenta:Landroid/widget/TextView;

.field tv_origen_saldo:Landroid/widget/TextView;

.field tv_origen_tipocuenta:Landroid/widget/TextView;

.field tv_report_infomail:Landroid/widget/TextView;

.field tv_titulo_monto:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)V
    .locals 0
    .param p1, "origen"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "destino"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p3, "monto"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 58
    iput-object p1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 59
    iput-object p2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 60
    iput-object p3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->monto:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/TransferEntremisproductosConfirm;I)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->changeState(I)V

    return-void
.end method

.method private changeState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_monto:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->monto:Ljava/lang/String;

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v3, v4}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    if-ne v2, v3, :cond_0

    .line 170
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroPanScreen()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "numerocuentaorigen":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    if-ne v2, v3, :cond_1

    .line 175
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroPanScreen()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "numerocuentadestino":Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_tipocuenta:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v4, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v4

    invoke-static {v3, v4}, Lcl/santander/smartphone/Utils;->getTipoProductoString(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_numerocuenta:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_saldo:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_tipocuenta:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v4, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v4

    invoke-static {v3, v4}, Lcl/santander/smartphone/Utils;->getTipoProductoString(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_numerocuenta:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_saldo:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->ll_comprobante:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->btConfirm:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 172
    .end local v0    # "numerocuentadestino":Ljava/lang/String;
    .end local v1    # "numerocuentaorigen":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "numerocuentaorigen":Ljava/lang/String;
    goto :goto_1

    .line 177
    :cond_1
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "numerocuentadestino":Ljava/lang/String;
    goto :goto_2

    .line 195
    .end local v0    # "numerocuentadestino":Ljava/lang/String;
    .end local v1    # "numerocuentaorigen":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0500f2

    invoke-virtual {p0, v3}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, v5}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->setHasOptionsMenu(Z)V

    .line 197
    invoke-virtual {p0, v6}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->setHasOptionsMenu(Z)V

    .line 198
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->ll_comprobante:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->btConfirm:Landroid/widget/Button;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->btConfirm:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_titulo_monto:Landroid/widget/TextView;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_report_infomail:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0500a2

    invoke-virtual {p0, v4}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 323
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 324
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->btConfirm:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 325
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 328
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public entreMisProductos()Z
    .locals 20

    .prologue
    .line 98
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 103
    .local v10, "s":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->monto:Ljava/lang/String;

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

    move-result v5

    .line 110
    .local v5, "montoInt":I
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->origen:Lcl/santander/santanderCL/data/response/ItemProducto;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->destino:Lcl/santander/santanderCL/data/response/ItemProducto;

    sget-object v6, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v6}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->et_clave:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/ServicesManager;->tranf_entremisproductos(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemProducto;ILjava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_MisProductosResponse;

    move-result-object v19

    .line 112
    .local v19, "mp":Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    if-eqz v19, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_numerocuenta:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getNumCuentaOrigenScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_saldo:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getSaldoCuentaOrigenScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_numerocuenta:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getNumCuentaDestinoScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_saldo:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/response/Transf_MisProductosResponse;->getSaldoCuentaDestinoScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v2, 0x1

    .line 155
    .end local v5    # "montoInt":I
    .end local v19    # "mp":Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    :goto_1
    return v2

    .line 105
    :catch_0
    move-exception v18

    .line 107
    .local v18, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .restart local v5    # "montoInt":I
    goto :goto_0

    .line 124
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v19    # "mp":Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 125
    const/4 v2, 0x0

    goto :goto_1

    .line 127
    .end local v5    # "montoInt":I
    .end local v19    # "mp":Lcl/santander/santanderCL/response/Transf_MisProductosResponse;
    :catch_1
    move-exception v18

    .line 128
    .local v18, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 155
    .end local v18    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 130
    :catch_2
    move-exception v18

    .line 131
    .local v18, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 134
    .end local v18    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_3
    move-exception v18

    .line 135
    .local v18, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v17, Lcl/santander/smartphone/TransferEntremisproductosConfirm$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/TransferEntremisproductosConfirm$1;-><init>(Lcl/santander/smartphone/TransferEntremisproductosConfirm;)V

    .line 148
    .local v17, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v2

    .line 149
    .local v15, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Runnable;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v17, v16, v2

    invoke-static/range {v11 .. v16}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Runnable;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    aput-object v17, v16, v2

    invoke-static/range {v11 .. v16}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method

.method public initComponents()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_monto:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_tipocuenta:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_numerocuenta:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_origen_saldo:Landroid/widget/TextView;

    .line 217
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_tipocuenta:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_numerocuenta:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_destino_saldo:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602fb

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->et_clave:Landroid/widget/EditText;

    .line 221
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->ll_clave:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602fc

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->ll_comprobante:Landroid/widget/LinearLayout;

    .line 223
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_titulo_monto:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602fd

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->tv_report_infomail:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->et_clave:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/TransferEntremisproductosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->btConfirm:Landroid/widget/Button;

    .line 229
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->btConfirm:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm$2;-><init>(Lcl/santander/smartphone/TransferEntremisproductosConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    iput-object p0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 77
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 79
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500f2

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->setHasOptionsMenu(Z)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->initComponents()V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->changeState(I)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->m_View:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 266
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 270
    :pswitch_0
    iget v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 274
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 275
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductosConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
