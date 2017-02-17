.class public Lcl/santander/smartphone/HomeLogin2;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HomeLogin2.java"


# static fields
.field public static final WS_LOGIN:I


# instance fields
.field bt_ok:Landroid/widget/Button;

.field et_Password:Landroid/widget/EditText;

.field et_User:Landroid/widget/EditText;

.field private firstTime:Z

.field fl_enter:Landroid/widget/LinearLayout;

.field private lastActualText:Ljava/lang/String;

.field public m_Handler:Landroid/os/Handler;

.field public m_bHasHeader:Z

.field private prog:Z

.field private secondTime:Z

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field st_Textview:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "_bHasHeader"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 62
    iput-boolean p1, p0, Lcl/santander/smartphone/HomeLogin2;->m_bHasHeader:Z

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/HomeLogin2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcl/santander/smartphone/HomeLogin2;->tryToLogin()V

    return-void
.end method

.method private initComponents()V
    .locals 4

    .prologue
    .line 84
    iget-boolean v2, p0, Lcl/santander/smartphone/HomeLogin2;->m_bHasHeader:Z

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 86
    .local v1, "parent":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0600a1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 87
    .local v0, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 89
    .end local v0    # "header":Landroid/widget/LinearLayout;
    .end local v1    # "parent":Landroid/widget/LinearLayout;
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0600a2

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    .line 90
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0600a3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    .line 94
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0600a4

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->bt_ok:Landroid/widget/Button;

    .line 95
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->st_Textview:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->bt_ok:Landroid/widget/Button;

    new-instance v3, Lcl/santander/smartphone/HomeLogin2$1;

    invoke-direct {v3, p0}, Lcl/santander/smartphone/HomeLogin2$1;-><init>(Lcl/santander/smartphone/HomeLogin2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    new-instance v3, Lcl/santander/smartphone/HomeLogin2$2;

    invoke-direct {v3, p0}, Lcl/santander/smartphone/HomeLogin2$2;-><init>(Lcl/santander/smartphone/HomeLogin2;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    new-instance v3, Lcl/santander/smartphone/HomeLogin2$3;

    invoke-direct {v3, p0}, Lcl/santander/smartphone/HomeLogin2$3;-><init>(Lcl/santander/smartphone/HomeLogin2;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    invoke-direct {p0}, Lcl/santander/smartphone/HomeLogin2;->setTypeFaces()V

    .line 144
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeLogin2;->checkButtonOK()V

    .line 145
    return-void
.end method

.method private setTypeFaces()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_normal:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v0, p0, Lcl/santander/smartphone/HomeLogin2;->bt_ok:Landroid/widget/Button;

    sget-object v1, Lcl/santander/smartphone/Utils;->tf_black:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    return-void
.end method

.method private tryToLogin()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 184
    .local v20, "rut":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    .line 185
    .local v18, "pin":Ljava/lang/String;
    const/4 v14, 0x0

    .line 187
    .local v14, "bError":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 188
    .local v17, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 190
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 192
    const/4 v14, 0x1

    .line 197
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    const v3, 0x7f020060

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 199
    const/4 v14, 0x1

    .line 203
    :goto_1
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f05002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcl/santander/smartphone/HomeLogin2;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 205
    .local v6, "s":[Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 251
    :goto_2
    return-void

    .line 195
    .end local v6    # "s":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/HomeLogin2;->st_Textview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/HomeLogin2;->st_Textview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 209
    .restart local v6    # "s":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500bf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 215
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/ServicesManager;->Login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/LoginResponse;

    move-result-object v19

    .line 216
    .local v19, "resp":Lcl/santander/santanderCL/response/LoginResponse;
    if-eqz v19, :cond_4

    .line 217
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->initBankSection()V

    .line 219
    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcl/santander/smartphone/DatosPersonalesUsuario;->setRut_usuario(Ljava/lang/String;)V

    .line 221
    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcl/santander/smartphone/DatosPersonalesUsuario;->setPin_usuario(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcl/santander/smartphone/HomeLogin2;->prog:Z
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 227
    .end local v19    # "resp":Lcl/santander/santanderCL/response/LoginResponse;
    :catch_0
    move-exception v13

    .line 228
    .local v13, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 225
    .end local v13    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v19    # "resp":Lcl/santander/santanderCL/response/LoginResponse;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 230
    .end local v19    # "resp":Lcl/santander/santanderCL/response/LoginResponse;
    :catch_1
    move-exception v13

    .line 231
    .local v13, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 233
    .end local v13    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v16

    .line 234
    .local v16, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v15, Lcl/santander/smartphone/HomeLogin2$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcl/santander/smartphone/HomeLogin2$4;-><init>(Lcl/santander/smartphone/HomeLogin2;)V

    .line 241
    .local v15, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 242
    .local v11, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v15, v12, v2

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 245
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/HomeLogin2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v15, v12, v2

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method


# virtual methods
.method public checkButtonOK()V
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_User:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "rut":Ljava/lang/String;
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->et_Password:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "pin":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 152
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->bt_ok:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->bt_ok:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public initBankSection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 168
    const/4 v2, -0x1

    sput v2, Lcl/santander/smartphone/Global;->idPulsado:I

    .line 169
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 170
    .local v0, "bar":Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 171
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-class v3, Lcl/santander/smartphone/BancaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2, v1, v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeLogin2;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/HomeLogin2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeLogin2;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 79
    invoke-direct {p0}, Lcl/santander/smartphone/HomeLogin2;->initComponents()V

    .line 81
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
    const v0, 0x7f030028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
