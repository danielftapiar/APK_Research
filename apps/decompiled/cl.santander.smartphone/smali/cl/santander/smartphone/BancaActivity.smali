.class public Lcl/santander/smartphone/BancaActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "BancaActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# instance fields
.field fa:Landroid/support/v4/app/FragmentActivity;

.field first:Z

.field fmg:Landroid/support/v4/app/FragmentManager;

.field menuBar:Lcom/actionbarsherlock/app/ActionBar;

.field pageAdapter:Landroid/support/v4/view/PagerAdapter;

.field pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/smartphone/BancaActivity;->first:Z

    .line 50
    return-void
.end method


# virtual methods
.method public initTabsMenu()V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 67
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 68
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 69
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 72
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 81
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "req"    # I
    .param p2, "res"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 281
    const/16 v0, 0x13ec

    if-ne p1, v0, :cond_0

    const/16 v0, 0x35

    if-ne p2, v0, :cond_0

    .line 283
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/BancaActivity;->setResult(I)V

    .line 285
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->finish()V

    .line 287
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget-object v0, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->finish()V

    .line 109
    :goto_0
    return-void

    .line 97
    :cond_0
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/BancaActivity;->setContentView(I)V

    .line 100
    iput-object p0, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    .line 101
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/BancaActivity;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 104
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->initTabsMenu()V

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 118
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 120
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v1

    iget-boolean v1, v1, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-nez v1, :cond_0

    .line 122
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 128
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    return v1

    .line 126
    :cond_0
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v3, 0x7f040000

    const/4 v0, 0x1

    .line 264
    sget-boolean v1, Lcl/santander/smartphone/Global;->NOBACK:Z

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->fmg:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    const/16 v2, -0x14

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 271
    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 272
    iget-object v1, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v3, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x2

    const/4 v8, 0x1

    .line 133
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 137
    :pswitch_0
    new-instance v7, Lcl/santander/smartphone/SettingsDialog;

    invoke-direct {v7, p0, v8, v10}, Lcl/santander/smartphone/SettingsDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 138
    .local v7, "sd":Lcl/santander/smartphone/SettingsDialog;
    invoke-virtual {v7}, Lcl/santander/smartphone/SettingsDialog;->show()V

    goto :goto_0

    .line 141
    .end local v7    # "sd":Lcl/santander/smartphone/SettingsDialog;
    :pswitch_1
    new-instance v6, Lcl/santander/smartphone/BancaActivity$1;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/BancaActivity$1;-><init>(Lcl/santander/smartphone/BancaActivity;)V

    .line 187
    .local v6, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 188
    .local v4, "buttons":[Ljava/lang/String;
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0500c4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v6, v5, v9

    aput-object v10, v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x7f06038b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 202
    new-instance v7, Lcl/santander/smartphone/BancaActivity$2;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/BancaActivity$2;-><init>(Lcl/santander/smartphone/BancaActivity;)V

    .line 212
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 213
    .local v4, "buttons":[Ljava/lang/String;
    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/BancaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050168

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 215
    .local v6, "d":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 218
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 219
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 114
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 259
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ftm"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    const/high16 v4, 0x7f040000

    .line 224
    iget-boolean v2, p0, Lcl/santander/smartphone/BancaActivity;->first:Z

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcl/santander/smartphone/BancaActivity;->first:Z

    .line 247
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 229
    iget-object v2, p0, Lcl/santander/smartphone/BancaActivity;->fmg:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 230
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 231
    new-instance v0, Lcl/santander/smartphone/PosicionGlobal;

    invoke-direct {v0}, Lcl/santander/smartphone/PosicionGlobal;-><init>()V

    .line 234
    .local v0, "PGlobalFragment":Lcl/santander/smartphone/PosicionGlobal;
    const v2, 0x7f060062

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 235
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 240
    .end local v0    # "PGlobalFragment":Lcl/santander/smartphone/PosicionGlobal;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-object v2, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 241
    iget-object v2, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 244
    iget-object v2, p0, Lcl/santander/smartphone/BancaActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v4, v4}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 253
    return-void
.end method
