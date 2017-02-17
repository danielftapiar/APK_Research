.class public final Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "ProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v2, "TransantiagoMaster"

    const-string v3, "ProgressDialogFragment: dismissDialog: null activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 64
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 66
    const-string v2, "ProgressDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dismissDialog: quitando fragmento con tag "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 68
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 72
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    const-string v2, "ProgressDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dismissDialog: no encontramos fragmento con tag "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;ILjava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "msgId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const-string v2, "TransantiagoMaster"

    const-string v3, "ProgressDialogFragment: showDialog: null activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 46
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 47
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    :cond_1
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "msgId"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v2, v0, p2}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->setCancelable(Z)V

    .line 31
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "msgId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 32
    .local v0, "msgId":I
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v2, 0x7f06012e

    invoke-virtual {p0, v2}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 36
    return-object v1
.end method
