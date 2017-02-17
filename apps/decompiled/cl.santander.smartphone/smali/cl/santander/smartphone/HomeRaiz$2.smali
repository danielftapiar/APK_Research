.class Lcl/santander/smartphone/HomeRaiz$2;
.super Ljava/lang/Object;
.source "HomeRaiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeRaiz;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeRaiz;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeRaiz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/HomeRaiz$2;)Lcl/santander/smartphone/HomeRaiz;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 101
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Lcl/santander/smartphone/HomeRaiz;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 104
    .local v5, "s":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v1, v1, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v1}, Lcl/santander/smartphone/ServicesManager;->LogOff(Landroid/app/Activity;)Z

    move-result v17

    .line 105
    .local v17, "logoff":Z
    if-nez v17, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v1, v1, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    const v4, 0x7f05016a

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/HomeRaiz;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 149
    .end local v17    # "logoff":Z
    :goto_0
    return-void

    .line 112
    .restart local v17    # "logoff":Z
    :cond_0
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v1, v1, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragment;->setHasOptionsMenu(Z)V

    .line 115
    sget-boolean v1, Lcl/santander/smartphone/Global;->indicadores:Z

    if-nez v1, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v1}, Lcl/santander/smartphone/HomeRaiz;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v15

    .line 118
    .local v15, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v15}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v16

    .line 119
    .local v16, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f040002

    const v2, 0x7f040001

    const v3, 0x7f040001

    const v4, 0x7f040002

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    const v1, 0x7f060095

    new-instance v2, Lcl/santander/smartphone/HomeLogin;

    invoke-direct {v2}, Lcl/santander/smartphone/HomeLogin;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 121
    invoke-virtual/range {v16 .. v16}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 124
    .end local v15    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v16    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v1, v1, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragment;->setHasOptionsMenu(Z)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 126
    .end local v17    # "logoff":Z
    :catch_0
    move-exception v12

    .line 127
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v1, v1, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 129
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 130
    .local v12, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v1, v1, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 132
    .end local v12    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v14

    .line 133
    .local v14, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/HomeRaiz$2$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/HomeRaiz$2$1;-><init>(Lcl/santander/smartphone/HomeRaiz$2;)V

    .line 142
    .local v13, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 143
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v6, v1, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v1}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v1}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 146
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v6, v1, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v1}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/HomeRaiz$2;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v1}, Lcl/santander/smartphone/HomeRaiz;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
