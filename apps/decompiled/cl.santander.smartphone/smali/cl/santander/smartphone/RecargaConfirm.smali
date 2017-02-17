.class public Lcl/santander/smartphone/RecargaConfirm;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "RecargaConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;
    }
.end annotation


# instance fields
.field bt_Confirmar:Landroid/widget/Button;

.field coord_1:Ljava/lang/String;

.field coord_2:Ljava/lang/String;

.field coord_3:Ljava/lang/String;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field private input:Landroid/view/inputmethod/InputMethodManager;

.field m_Data:Lcl/santander/smartphone/DataRecarga;

.field m_View:Landroid/view/View;

.field m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_celular:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_cuentac:Landroid/widget/TextView;

.field tv_instrucciones:Landroid/widget/TextView;

.field tv_monto:Landroid/widget/TextView;

.field tv_saldoc:Landroid/widget/TextView;

.field tv_saldod:Landroid/widget/TextView;

.field tv_subtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/smartphone/DataRecarga;)V
    .locals 0
    .param p1, "_itemProd"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "_data"    # Lcl/santander/smartphone/DataRecarga;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 82
    iput-object p2, p0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    .line 83
    iput-object p1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 84
    return-void
.end method


# virtual methods
.method public RealizarRecargaMovil()V
    .locals 19

    .prologue
    .line 214
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v3, "Ok"

    aput-object v3, v18, v2

    .line 215
    .local v18, "s":[Ljava/lang/String;
    new-instance v17, Lcl/santander/smartphone/RecargaConfirm$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/RecargaConfirm$2;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    .line 222
    .local v17, "run":Ljava/lang/Runnable;
    const/16 v16, 0x0

    .line 226
    .local v16, "resp":Lcl/santander/santanderCL/response/PagoRecargaResponse;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 227
    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v4, v4, Lcl/santander/smartphone/DataRecarga;->itemOperador:Lcl/santander/santanderCL/data/response/ItemOperadora;

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/RecargaConfirm;->m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 230
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v6, v7, Lcl/santander/smartphone/DataRecarga;->phone:Ljava/lang/String;

    .line 231
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v7, v7, Lcl/santander/smartphone/DataRecarga;->email:Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget v8, v8, Lcl/santander/smartphone/DataRecarga;->montoValue:I

    .line 233
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/RecargaConfirm;->coord_1:Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/RecargaConfirm;->coord_2:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/RecargaConfirm;->coord_3:Ljava/lang/String;

    .line 225
    invoke-static/range {v2 .. v11}, Lcl/santander/smartphone/ServicesManager;->RecargaPagar(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemOperadora;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/PagoRecargaResponse;

    move-result-object v16

    .line 238
    if-eqz v16, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/RecargaConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v15

    .line 242
    .local v15, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    .line 243
    new-instance v3, Lcl/santander/smartphone/RecargaReport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/RecargaConfirm;->m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    .line 243
    move-object/from16 v0, v16

    invoke-direct {v3, v4, v5, v0}, Lcl/santander/smartphone/RecargaReport;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/smartphone/DataRecarga;Lcl/santander/santanderCL/response/PagoRecargaResponse;)V

    .line 242
    invoke-virtual {v15, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 248
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 249
    invoke-virtual {v15}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 282
    .end local v15    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 255
    :catch_0
    move-exception v12

    .line 256
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 258
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 259
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    move-object/from16 v6, v18

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 262
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v14

    .line 263
    .local v14, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/RecargaConfirm$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/RecargaConfirm$3;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    .line 276
    .local v13, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 277
    .local v6, "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0501c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0501c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public cambiafoco()V
    .locals 3

    .prologue
    .line 373
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 377
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 379
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 380
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public desafioRecarga()V
    .locals 15

    .prologue
    .line 164
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Ok"

    aput-object v1, v4, v0

    .line 167
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->RecargaPedirDesafio(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;

    move-result-object v14

    .line 168
    .local v14, "resp":Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    if-eqz v14, :cond_0

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_coord1:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_coord2:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_coord3:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_instrucciones:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;->getNumeroTarjeta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v14    # "resp":Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    :goto_0
    return-void

    .line 181
    .restart local v14    # "resp":Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

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

    .line 183
    .end local v14    # "resp":Lcl/santander/santanderCL/response/RecargaPedirDesafioResponse;
    :catch_0
    move-exception v11

    .line 184
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

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

    .line 186
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v11

    .line 188
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

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

    .line 190
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v13

    .line 191
    .local v13, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/RecargaConfirm$1;

    invoke-direct {v12, p0}, Lcl/santander/smartphone/RecargaConfirm$1;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    .line 204
    .local v12, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 205
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v5, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

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

    .line 208
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

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

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 88
    const-string v0, ""

    .line 89
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602a5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_subtitle:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602a7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_cuentac:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602a9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_saldoc:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602ab

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_saldod:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602ad

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_celular:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602af

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_monto:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_coord1:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_coord2:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_coord3:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_instrucciones:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_cuentac:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_saldoc:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_saldod:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_itemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_celular:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v1, v1, Lcl/santander/smartphone/DataRecarga;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_monto:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget v2, v2, Lcl/santander/smartphone/DataRecarga;->montoValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->tv_subtitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/RecargaConfirm;->m_Data:Lcl/santander/smartphone/DataRecarga;

    iget-object v2, v2, Lcl/santander/smartphone/DataRecarga;->itemOperador:Lcl/santander/santanderCL/data/response/ItemOperadora;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemOperadora;->getNombre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    .line 143
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 144
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 148
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 149
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    .line 151
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaConfirm$CustomTextWatcher;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 290
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 291
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500ea

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/RecargaConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/RecargaConfirm;->setHasOptionsMenu(Z)V

    .line 294
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/RecargaConfirm;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602b7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->bt_Confirmar:Landroid/widget/Button;

    .line 297
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->bt_Confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->bt_Confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/RecargaConfirm$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaConfirm$4;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->initScreen()V

    .line 314
    sget-boolean v0, Lcl/santander/smartphone/Global;->m_bCallInitialWSRecarga:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcl/santander/smartphone/RecargaConfirm;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/RecargaConfirm$5;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RecargaConfirm$5;-><init>(Lcl/santander/smartphone/RecargaConfirm;)V

    .line 321
    const-wide/16 v2, 0x32

    .line 315
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->m_View:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 327
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/RecargaConfirm;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
