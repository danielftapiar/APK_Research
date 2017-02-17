.class public Lcl/santander/smartphone/localizador/Lista;
.super Lcl/santander/smartphone/localizador/FragmentoInterno;
.source "Lista.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;
    }
.end annotation


# instance fields
.field fa:Landroid/support/v4/app/FragmentActivity;

.field fmg:Landroid/support/v4/app/FragmentManager;

.field lista:Landroid/widget/ExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;-><init>()V

    return-void
.end method

.method public constructor <init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "pActual"    # Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "ofis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    invoke-direct {p0, p1, p2}, Lcl/santander/smartphone/localizador/FragmentoInterno;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V

    .line 58
    return-void
.end method

.method private cargarListado()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Lista$MyExpandableListAdapter;-><init>(Lcl/santander/smartphone/localizador/Lista;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/localizador/Lista$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Lista$1;-><init>(Lcl/santander/smartphone/localizador/Lista;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/localizador/Lista$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Lista$2;-><init>(Lcl/santander/smartphone/localizador/Lista;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Lista;->fa:Landroid/support/v4/app/FragmentActivity;

    .line 86
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Lista;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Lista;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Lista;->handlerBubble:Landroid/os/Handler;

    .line 90
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Lista;->fa:Landroid/support/v4/app/FragmentActivity;

    const v2, 0x7f06020d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    .line 93
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 95
    .local v0, "mapa":Lcom/google/android/maps/MapView;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 100
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->IncluirPois()V

    .line 102
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Lista;->cargarListado()V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/Lista;->setRetainInstance(Z)V

    .line 64
    invoke-super {p0, p1}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 384
    sget-object v1, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    sget-object v1, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 386
    .local v0, "l":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 389
    .end local v0    # "l":Landroid/widget/LinearLayout;
    :cond_0
    invoke-super {p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onDestroyView()V

    .line 390
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    sget-boolean v1, Lcl/santander/smartphone/Global;->fromDirections:Z

    if-eqz v1, :cond_1

    .line 113
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 115
    .local v0, "mapa":Lcom/google/android/maps/MapView;
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Lista;->IncluirPois()V

    .line 122
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Lista;->cargarListado()V

    .line 124
    .end local v0    # "mapa":Lcom/google/android/maps/MapView;
    :cond_1
    invoke-super {p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onResume()V

    .line 125
    return-void
.end method
