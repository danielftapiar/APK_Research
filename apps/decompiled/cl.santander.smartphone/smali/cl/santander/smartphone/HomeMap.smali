.class public Lcl/santander/smartphone/HomeMap;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HomeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/HomeMap$Localiza;
    }
.end annotation


# instance fields
.field private iv_poi:Landroid/widget/ImageView;

.field private ll_estrella:Landroid/widget/LinearLayout;

.field private ll_homemaps:Landroid/widget/LinearLayout;

.field private ll_homemaps_activado:Landroid/widget/LinearLayout;

.field private ll_mapa_container:Landroid/widget/LinearLayout;

.field private ll_no_posicion:Landroid/widget/LinearLayout;

.field private ll_posicionando:Landroid/widget/LinearLayout;

.field private loc:Lcl/santander/smartphone/HomeMap$Localiza;

.field private mapa:Lcom/google/android/maps/MapView;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field private tv_direccion:Landroid/widget/TextView;

.field private tv_distancia:Landroid/widget/TextView;

.field private tv_estrella_1:Landroid/widget/TextView;

.field private tv_estrella_2:Landroid/widget/TextView;

.field private tv_estrella_3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_no_posicion:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_posicionando:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_estrella:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcl/santander/smartphone/HomeMap;)Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method static synthetic access$13(Lcl/santander/smartphone/HomeMap;Lcl/santander/smartphone/HomeMap$Localiza;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcl/santander/smartphone/HomeMap;->loc:Lcl/santander/smartphone/HomeMap$Localiza;

    return-void
.end method

.method static synthetic access$14(Lcl/santander/smartphone/HomeMap;)Lcl/santander/smartphone/HomeMap$Localiza;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->loc:Lcl/santander/smartphone/HomeMap$Localiza;

    return-object v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps_activado:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_distancia:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_direccion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/HomeMap;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->iv_poi:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_estrella_1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_estrella_2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_estrella_3:Landroid/widget/TextView;

    return-object v0
.end method

.method private cargaMapa()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    .line 148
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_mapa_container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->displayZoomControls(Z)V

    .line 163
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    .locals 7

    .prologue
    .line 195
    sget-object v4, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 196
    .local v4, "mapa":Lcom/google/android/maps/MapView;
    const/4 v5, 0x0

    .line 197
    .local v5, "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 199
    .local v1, "capas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    .line 200
    .local v2, "encontrado":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    if-eqz v2, :cond_2

    .line 212
    .end local v5    # "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    :goto_1
    return-object v5

    .line 202
    .restart local v5    # "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    :cond_1
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 v2, 0x1

    .line 200
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 205
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600a9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_estrella:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600aa

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_estrella_1:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_estrella_2:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ac

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_estrella_3:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600a5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps_activado:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600b1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_no_posicion:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600b4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_posicionando:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ae

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_mapa_container:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->iv_poi:Landroid/widget/ImageView;

    .line 118
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeMap;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcl/santander/smartphone/HomeMap$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/HomeMap$1;-><init>(Lcl/santander/smartphone/HomeMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600a7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_distancia:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ad

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->tv_direccion:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps_activado:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_no_posicion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->ll_posicionando:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/HomeMap;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 139
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap;->cargaMapa()V

    .line 142
    return-void
.end method

.method private tryLocate()V
    .locals 6

    .prologue
    .line 173
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v3, Lcl/santander/smartphone/Global;->SETTINGS:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v2, Lcl/santander/smartphone/Global;->MODO_LOCALIZACION_HOME:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 179
    .local v0, "loc_auto":Z
    if-eqz v0, :cond_0

    .line 181
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap;->ll_homemaps:Landroid/widget/LinearLayout;

    new-instance v3, Lcl/santander/smartphone/HomeMap$2;

    invoke-direct {v3, p0}, Lcl/santander/smartphone/HomeMap$2;-><init>(Lcl/santander/smartphone/HomeMap;)V

    .line 188
    const-wide/16 v4, 0x3e8

    .line 181
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    iput-object p0, p0, Lcl/santander/smartphone/HomeMap;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 91
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeMap;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 94
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap;->initComponents()V

    .line 96
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap;->tryLocate()V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->loc:Lcl/santander/smartphone/HomeMap$Localiza;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap;->loc:Lcl/santander/smartphone/HomeMap$Localiza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/HomeMap$Localiza;->cancel(Z)Z

    .line 492
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 493
    return-void
.end method
