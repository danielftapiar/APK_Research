.class Lcl/santander/smartphone/BancaActivity$1;
.super Ljava/lang/Object;
.source "BancaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/BancaActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/BancaActivity;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/BancaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/BancaActivity$1;)Lcl/santander/smartphone/BancaActivity;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/BancaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 148
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    iget-object v0, v0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->LogOff(Landroid/app/Activity;)Z

    move-result v14

    .line 149
    .local v14, "logoff":Z
    if-nez v14, :cond_0

    .line 151
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    iget-object v0, v0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v1}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    const v3, 0x7f05016a

    invoke-virtual {v2, v3}, Lcl/santander/smartphone/BancaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 183
    .end local v14    # "logoff":Z
    :goto_0
    return-void

    .line 156
    .restart local v14    # "logoff":Z
    :cond_0
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/BancaActivity;->setResult(I)V

    .line 158
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v0}, Lcl/santander/smartphone/BancaActivity;->finish()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 160
    .end local v14    # "logoff":Z
    :catch_0
    move-exception v11

    .line 161
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    iget-object v0, v0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v1}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

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

    .line 163
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v11

    .line 164
    .local v11, "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    iget-object v0, v0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v1}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

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

    .line 166
    .end local v11    # "_e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v13

    .line 167
    .local v13, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/BancaActivity$1$1;

    invoke-direct {v12, p0}, Lcl/santander/smartphone/BancaActivity$1$1;-><init>(Lcl/santander/smartphone/BancaActivity$1;)V

    .line 176
    .local v12, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v1}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 177
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    iget-object v5, v0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

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

    .line 180
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    iget-object v5, v0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity$1;->this$0:Lcl/santander/smartphone/BancaActivity;

    invoke-virtual {v0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

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
