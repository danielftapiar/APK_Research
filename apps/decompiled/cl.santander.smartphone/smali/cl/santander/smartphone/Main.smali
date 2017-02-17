.class public Lcl/santander/smartphone/Main;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "Main.java"


# static fields
.field public static mapa:Lcom/google/android/maps/MapView;


# instance fields
.field menuBar:Lcom/actionbarsherlock/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initTabsMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 33
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 34
    new-instance v2, Lcl/santander/smartphone/MyTabListener;

    const-class v3, Lcl/santander/smartphone/HomeRaiz;

    invoke-direct {v2, p0, v4, v3, v4}, Lcl/santander/smartphone/MyTabListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 36
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 37
    new-instance v2, Lcl/santander/smartphone/MyTabListener;

    const-class v3, Lcl/santander/smartphone/Banca;

    invoke-direct {v2, p0, v4, v3, v4}, Lcl/santander/smartphone/MyTabListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 38
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 39
    new-instance v2, Lcl/santander/smartphone/MyTabListener;

    const-class v3, Lcl/santander/smartphone/localizador/Localizador;

    invoke-direct {v2, p0, v4, v3, v4}, Lcl/santander/smartphone/MyTabListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 40
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 41
    new-instance v2, Lcl/santander/smartphone/MyTabListener;

    const-class v3, Lcl/santander/smartphone/Ayuda;

    invoke-direct {v2, p0, v4, v3, v4}, Lcl/santander/smartphone/MyTabListener;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 43
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 45
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 51
    new-instance v0, Lcom/google/android/maps/MapView;

    sget-object v1, Lcl/santander/smartphone/Global;->mapKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 52
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v1, 0x13ec

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p1, v1, :cond_2

    const/16 v0, 0x35

    if-ne p2, v0, :cond_2

    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 94
    :cond_0
    :goto_0
    const/16 v0, -0x14

    if-ne p2, v0, :cond_3

    .line 97
    :try_start_0
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iget-boolean v0, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->LogOff(Landroid/app/Activity;)Z
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->finish()V

    .line 103
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 121
    :goto_2
    return-void

    .line 90
    :cond_2
    if-ne p1, v1, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_0

    .line 107
    :cond_3
    if-ne p1, v3, :cond_4

    .line 109
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 113
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 115
    if-eq p2, p1, :cond_5

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/Main;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, p2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 120
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2

    .line 100
    :catch_0
    move-exception v0

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    sget-boolean v2, Lcl/santander/smartphone/Global;->indicadores:Z

    if-nez v2, :cond_1

    .line 133
    :try_start_0
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v2

    iget-boolean v2, v2, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-eqz v2, :cond_0

    .line 134
    invoke-static {p0}, Lcl/santander/smartphone/ServicesManager;->LogOff(Landroid/app/Activity;)Z
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->finish()V

    .line 139
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 140
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 151
    :goto_1
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 145
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 146
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0600b6

    new-instance v3, Lcl/santander/smartphone/Home;

    invoke-direct {v3}, Lcl/santander/smartphone/Home;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 147
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 148
    sput-boolean v4, Lcl/santander/smartphone/Global;->indicadores:Z

    goto :goto_1

    .line 136
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 135
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v2, 0x10000

    .line 59
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget-object v1, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcl/santander/smartphone/Carga;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Main;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->finish()V

    .line 70
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 78
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->initTabsMenu()V

    .line 75
    sget v1, Lcl/santander/smartphone/Utils;->HOCKEY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 76
    invoke-static {p0}, Lcl/santander/smartphone/Utils;->HAPP_checkUpdates(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 205
    sget-boolean v0, Lcl/santander/smartphone/Global;->indicadores:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcl/santander/smartphone/Main;->onBackPressed()V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onLowMemory()V

    .line 191
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestart()V

    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 183
    sget v0, Lcl/santander/smartphone/Utils;->HOCKEY:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    invoke-static {p0}, Lcl/santander/smartphone/Utils;->HAPP_checkCrashes(Landroid/app/Activity;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 198
    return-void
.end method
