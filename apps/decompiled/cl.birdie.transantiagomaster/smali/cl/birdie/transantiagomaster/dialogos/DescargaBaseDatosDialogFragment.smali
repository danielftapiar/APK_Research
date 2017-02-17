.class public final Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "DescargaBaseDatosDialogFragment.java"


# instance fields
.field private caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field msgId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 54
    const v0, 0x7f060162

    iput v0, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->msgId:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    return-object v0
.end method

.method public static showDialog$25b1ab70(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 134
    if-nez p0, :cond_1

    .line 135
    const-string v3, "DescargaBaseDatosDialogFragment"

    const-string v4, "showDialog: activity null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 139
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 140
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    :cond_2
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "msgId"

    const v5, 0x7f060162

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "tag"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p2, v1, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 148
    .local v1, "pdFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v3

    if-eqz p2, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 109
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msgId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->msgId:I

    .line 61
    invoke-virtual {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->setCancelable(Z)V

    .line 62
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 63
    .local v0, "pd":Landroid/app/Dialog;
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 64
    return-object v0

    .line 59
    .end local v0    # "pd":Landroid/app/Dialog;
    :cond_0
    const v1, 0x7f060162

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    iget v2, p0, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;->msgId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 77
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 87
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/DescargaBaseDatosDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v0
.end method

.method public final onDestroy()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onDestroy()V

    .line 125
    return-void
.end method

.method public final onPause()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onPause()V

    .line 120
    return-void
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 103
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method
