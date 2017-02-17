.class public final Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "BuscarPopupScreen.java"


# instance fields
.field btnBuscar:Landroid/widget/Button;

.field btnCancelar:Landroid/widget/Button;

.field direccionf:Landroid/widget/EditText;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public static dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 135
    const-string v2, "BuscarPopupScreen"

    const-string v3, "BuscarPopupScreen: dismissDialog: null activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 139
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 142
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 146
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    const-string v2, "BuscarPopupScreen"

    const-string v3, "dismissDialog: prev not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 33
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-void

    .line 35
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->setCancelable(Z)V

    .line 98
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 99
    .local v0, "pd":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 100
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "v":Landroid/view/View;
    const/4 v0, 0x0

    .line 67
    .local v0, "texto":Ljava/lang/String;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->direccionf:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->direccionf:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->direccionf:Landroid/widget/EditText;

    .line 71
    if-eqz v0, :cond_1

    .line 72
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->direccionf:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->btnBuscar:Landroid/widget/Button;

    .line 75
    const v2, 0x7f080081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->btnCancelar:Landroid/widget/Button;

    .line 77
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->btnBuscar:Landroid/widget/Button;

    new-instance v3, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$1;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->btnCancelar:Landroid/widget/Button;

    new-instance v3, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$2;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object v1
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 153
    return-void
.end method

.method public final onStop()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onStop()V

    .line 58
    return-void
.end method

.method public final procesarBusqueda()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->direccionf:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "dir":Ljava/lang/String;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/BuscarPopupScreen;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onBuscar(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
