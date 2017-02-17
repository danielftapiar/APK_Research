.class public Lcl/santander/smartphone/HomeRaiz;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HomeRaiz.java"


# instance fields
.field root:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeRaiz;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 40
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/HomeRaiz;->setHasOptionsMenu(Z)V

    .line 45
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeRaiz;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->root:Landroid/view/View;

    .line 47
    iput-object p0, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 52
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeRaiz;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/HomeRaiz$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/HomeRaiz$1;-><init>(Lcl/santander/smartphone/HomeRaiz;)V

    .line 63
    const-wide/16 v2, 0x32

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeRaiz;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 66
    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    .line 74
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 76
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iget-boolean v0, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-nez v0, :cond_0

    .line 78
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 85
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 86
    return-void

    .line 82
    :cond_0
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    .line 90
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 93
    :pswitch_0
    new-instance v7, Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v7, v0, v9, v11}, Lcl/santander/smartphone/SettingsDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    .local v7, "sd":Lcl/santander/smartphone/SettingsDialog;
    invoke-virtual {v7}, Lcl/santander/smartphone/SettingsDialog;->show()V

    goto :goto_0

    .line 97
    .end local v7    # "sd":Lcl/santander/smartphone/SettingsDialog;
    :pswitch_1
    new-instance v6, Lcl/santander/smartphone/HomeRaiz$2;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/HomeRaiz$2;-><init>(Lcl/santander/smartphone/HomeRaiz;)V

    .line 153
    .local v6, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 154
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f050012

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v5}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0500c4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v6, v5, v10

    aput-object v11, v5, v9

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x7f06038b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 165
    new-instance v7, Lcl/santander/smartphone/HomeRaiz$3;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/HomeRaiz$3;-><init>(Lcl/santander/smartphone/HomeRaiz;)V

    .line 185
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 186
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/HomeRaiz;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050168

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 188
    .local v6, "dialogo":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 191
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 192
    return-void
.end method
