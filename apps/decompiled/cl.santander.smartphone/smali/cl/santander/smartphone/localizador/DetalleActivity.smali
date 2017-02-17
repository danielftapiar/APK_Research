.class public Lcl/santander/smartphone/localizador/DetalleActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "DetalleActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# instance fields
.field desc_oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

.field fa:Landroid/support/v4/app/FragmentActivity;

.field first:Z

.field fmg:Landroid/support/v4/app/FragmentManager;

.field menuBar:Lcom/actionbarsherlock/app/ActionBar;

.field pageAdapter:Landroid/support/v4/view/PagerAdapter;

.field pager:Landroid/support/v4/view/ViewPager;

.field poi:Lcl/santander/santanderCL/data/response/ItemPOI;

.field pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->first:Z

    .line 27
    return-void
.end method

.method private recogeDatos()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcl/santander/smartphone/Global;->poi_seleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 104
    sget-object v0, Lcl/santander/smartphone/Global;->pos_seleccionado:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .line 105
    sget-object v0, Lcl/santander/smartphone/Global;->oferta_seleccionado:Lcl/santander/santanderCL/data/response/ItemOferta;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->desc_oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    .line 106
    return-void
.end method


# virtual methods
.method public initTabsMenu()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 45
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 46
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 48
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 49
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 50
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 52
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 55
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 57
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/DetalleActivity;->setResult(I)V

    .line 113
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget-object v0, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 85
    :cond_0
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/DetalleActivity;->setContentView(I)V

    .line 88
    iput-object p0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    .line 89
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 91
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->recogeDatos()V

    .line 93
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/DetalleActivity;->initTabsMenu()V

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->menuBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 70
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 155
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ftm"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    const/high16 v4, 0x7f040000

    .line 120
    iget-boolean v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->first:Z

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->first:Z

    .line 143
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 125
    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fmg:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 126
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 127
    new-instance v0, Lcl/santander/smartphone/localizador/DetallePoi;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->poi:Lcl/santander/santanderCL/data/response/ItemPOI;

    iget-object v3, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->desc_oferta:Lcl/santander/santanderCL/data/response/ItemOferta;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->pos_actual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v0, v2, v3, v4}, Lcl/santander/smartphone/localizador/DetallePoi;-><init>(Lcl/santander/santanderCL/data/response/ItemPOI;Lcl/santander/santanderCL/data/response/ItemOferta;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    .line 130
    .local v0, "DetalleFragment":Lcl/santander/smartphone/localizador/DetallePoi;
    const v2, 0x7f06008c

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 136
    .end local v0    # "DetalleFragment":Lcl/santander/smartphone/localizador/DetallePoi;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 137
    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 140
    iget-object v2, p0, Lcl/santander/smartphone/localizador/DetalleActivity;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v4, v4}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 149
    return-void
.end method
