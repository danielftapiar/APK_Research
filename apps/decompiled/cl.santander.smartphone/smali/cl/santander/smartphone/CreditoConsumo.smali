.class public Lcl/santander/smartphone/CreditoConsumo;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CreditoConsumo.java"


# static fields
.field private static final DATOS_DEL_CLIENTE_2:I = 0x2

.field private static final DATOS_DEL_CREDITO_1:I = 0x1

.field private static final SOLICITUD_RECIBIDA_3:I = 0x3


# instance fields
.field bt_Next:Landroid/widget/Button;

.field private celular:Ljava/lang/String;

.field private content:Landroid/widget/LinearLayout;

.field private email:Ljava/lang/String;

.field private fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

.field private m_View:Landroid/view/View;

.field private monto:Ljava/lang/String;

.field private plazo:Ljava/lang/String;

.field private progress:Landroid/widget/LinearLayout;

.field private sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private sfm:Landroid/support/v4/app/FragmentManager;

.field private step:I

.field private tv_title_credito:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/CreditoConsumo;)I
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo;->nextStep()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/CreditoConsumo;I)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcl/santander/smartphone/CreditoConsumo;->setStep(I)V

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/CreditoConsumo;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method private nextStep()I
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    .line 304
    :goto_0
    iget v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    return v0

    .line 302
    :cond_0
    iget v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    goto :goto_0
.end method

.method private setStep(I)V
    .locals 14
    .param p1, "step"    # I

    .prologue
    .line 103
    if-nez p1, :cond_2

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 106
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v0, 0x3

    if-lt v12, v0, :cond_1

    .line 194
    .end local v12    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 107
    .restart local v12    # "i":I
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 106
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 109
    .end local v12    # "i":I
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 111
    new-instance v0, Lcl/santander/smartphone/CreditoConsumo_Step1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/CreditoConsumo_Step1;-><init>(Lcl/santander/smartphone/CreditoConsumo;)V

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 114
    .local v11, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f060069

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 116
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->progress:Landroid/widget/LinearLayout;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->tv_title_credito:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 122
    .end local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    check-cast v0, Lcl/santander/smartphone/CreditoConsumo_Step1;

    invoke-virtual {v0}, Lcl/santander/smartphone/CreditoConsumo_Step1;->getMonto()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->monto:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    check-cast v0, Lcl/santander/smartphone/CreditoConsumo_Step1;

    invoke-virtual {v0}, Lcl/santander/smartphone/CreditoConsumo_Step1;->getPlazo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->plazo:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo;->validaMontoPlazo()I

    move-result v13

    .line 130
    .local v13, "validacion":I
    if-nez v13, :cond_4

    .line 132
    new-instance v0, Lcl/santander/smartphone/CreditoConsumo_Step2;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;-><init>(Lcl/santander/smartphone/CreditoConsumo;)V

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 135
    .restart local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f060069

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 136
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->progress:Landroid/widget/LinearLayout;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->tv_title_credito:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 144
    .end local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    .line 145
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 146
    .local v4, "s":[Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v13, v0, :cond_5

    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 149
    :cond_5
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 153
    .end local v4    # "s":[Ljava/lang/String;
    .end local v13    # "validacion":I
    :cond_6
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    check-cast v0, Lcl/santander/smartphone/CreditoConsumo_Step2;

    invoke-virtual {v0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getCelular()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->celular:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    check-cast v0, Lcl/santander/smartphone/CreditoConsumo_Step2;

    invoke-virtual {v0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->email:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo;->validaCelMail()I

    move-result v13

    .line 160
    .restart local v13    # "validacion":I
    if-nez v13, :cond_8

    .line 164
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo;->solicitarCreditoConsumo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    new-instance v5, Lcl/santander/smartphone/CreditoConsumo_Step3;

    iget-object v7, p0, Lcl/santander/smartphone/CreditoConsumo;->monto:Ljava/lang/String;

    iget-object v8, p0, Lcl/santander/smartphone/CreditoConsumo;->plazo:Ljava/lang/String;

    iget-object v9, p0, Lcl/santander/smartphone/CreditoConsumo;->celular:Ljava/lang/String;

    iget-object v10, p0, Lcl/santander/smartphone/CreditoConsumo;->email:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcl/santander/smartphone/CreditoConsumo_Step3;-><init>(Lcl/santander/smartphone/CreditoConsumo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 169
    .restart local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f060069

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v11, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 170
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 171
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->progress:Landroid/widget/LinearLayout;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->tv_title_credito:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 178
    .end local v11    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    goto/16 :goto_1

    .line 184
    :cond_8
    const/4 v0, 0x2

    iput v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    .line 185
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 186
    .restart local v4    # "s":[Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v13, v0, :cond_9

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 189
    :cond_9
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private solicitarCreditoConsumo()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 256
    new-array v10, v11, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v12

    .line 258
    .local v10, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getEscalares()Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;

    move-result-object v1

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcl/santander/smartphone/CreditoConsumo;->email:Ljava/lang/String;

    iget-object v5, p0, Lcl/santander/smartphone/CreditoConsumo;->celular:Ljava/lang/String;

    iget-object v6, p0, Lcl/santander/smartphone/CreditoConsumo;->monto:Ljava/lang/String;

    iget-object v7, p0, Lcl/santander/smartphone/CreditoConsumo;->plazo:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcl/santander/smartphone/ServicesManager;->SolicitarCreditoConsumo(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/EscalaresCruceProductoOnline;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/CreditosConsumoSolicitudResponse;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v11

    .line 288
    :goto_0
    return v0

    .line 260
    :catch_0
    move-exception v9

    .line 261
    .local v9, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v11

    move-object v4, v10

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_1
    move v0, v12

    .line 288
    goto :goto_0

    .line 263
    :catch_1
    move-exception v9

    .line 264
    .local v9, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v11

    move-object v4, v10

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 267
    .end local v9    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v9

    .line 268
    .local v9, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v8, Lcl/santander/smartphone/CreditoConsumo$2;

    invoke-direct {v8, p0}, Lcl/santander/smartphone/CreditoConsumo$2;-><init>(Lcl/santander/smartphone/CreditoConsumo;)V

    .line 281
    .local v8, "cert":Ljava/lang/Runnable;
    new-array v4, v11, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    .line 282
    .local v4, "s_cert":[Ljava/lang/String;
    invoke-virtual {v9}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Runnable;

    aput-object v8, v5, v12

    move v3, v11

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Runnable;

    aput-object v8, v5, v12

    move v3, v11

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private validaCelMail()I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 233
    iget-object v5, p0, Lcl/santander/smartphone/CreditoConsumo;->celular:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v3

    .line 235
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/CreditoConsumo;->celular:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    iget-object v3, p0, Lcl/santander/smartphone/CreditoConsumo;->email:Ljava/lang/String;

    const-string v5, "\u00f1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 240
    goto :goto_0

    .line 241
    :cond_2
    const-string v2, "^\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*([\\.]+\\w{2,3})+$"

    .line 243
    .local v2, "regExp":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 244
    .local v1, "pattern":Ljava/util/regex/Pattern;
    iget-object v3, p0, Lcl/santander/smartphone/CreditoConsumo;->email:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 245
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move v3, v4

    .line 248
    goto :goto_0
.end method

.method private validaMontoPlazo()I
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 200
    iget-object v6, p0, Lcl/santander/smartphone/CreditoConsumo;->monto:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 228
    :goto_0
    return v4

    .line 205
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcl/santander/smartphone/CreditoConsumo;->monto:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 213
    .local v0, "d":J
    iget-object v6, p0, Lcl/santander/smartphone/CreditoConsumo;->plazo:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v4, :cond_1

    move v4, v5

    .line 214
    goto :goto_0

    .line 207
    .end local v0    # "d":J
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 218
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcl/santander/smartphone/CreditoConsumo;->plazo:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 219
    .local v3, "i":I
    const/16 v4, 0xc

    if-lt v3, v4, :cond_2

    const/16 v4, 0x3c

    if-le v3, v4, :cond_3

    :cond_2
    move v4, v5

    .line 220
    goto :goto_0

    .line 222
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move v4, v5

    .line 224
    goto :goto_0

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->progress:Landroid/widget/LinearLayout;

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060069

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->content:Landroid/widget/LinearLayout;

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060067

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->tv_title_credito:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/CreditoConsumo$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/CreditoConsumo$1;-><init>(Lcl/santander/smartphone/CreditoConsumo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcl/santander/smartphone/CreditoConsumo;->setStep(I)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const v0, 0x7f03001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->m_View:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public refreshStep(Lcl/santander/smartphone/CreditoConsumo_Step1;)V
    .locals 3
    .param p1, "frag"    # Lcl/santander/smartphone/CreditoConsumo_Step1;

    .prologue
    .line 315
    iput-object p1, p0, Lcl/santander/smartphone/CreditoConsumo;->fragmentActivo:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 316
    const/4 v0, 0x1

    iput v0, p0, Lcl/santander/smartphone/CreditoConsumo;->step:I

    .line 317
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->progress:Landroid/widget/LinearLayout;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo;->tv_title_credito:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method
