.class public Lcl/santander/smartphone/ConsolidadoInversiones;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ConsolidadoInversiones.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;
    }
.end annotation


# static fields
.field private static longitudIndicator:I


# instance fields
.field private acciones:Z

.field private apv:Z

.field private depositos:Z

.field private fondos:Z

.field list:Landroid/widget/ExpandableListView;

.field m_View:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcl/santander/smartphone/ConsolidadoInversiones;->longitudIndicator:I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "childPosition"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 45
    sput p0, Lcl/santander/smartphone/ConsolidadoInversiones;->longitudIndicator:I

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcl/santander/smartphone/ConsolidadoInversiones;->longitudIndicator:I

    return v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/ConsolidadoInversiones;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z

    return v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z

    return-void
.end method

.method static synthetic access$4(Lcl/santander/smartphone/ConsolidadoInversiones;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z

    return v0
.end method

.method static synthetic access$5(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z

    return-void
.end method

.method static synthetic access$6(Lcl/santander/smartphone/ConsolidadoInversiones;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z

    return v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z

    return-void
.end method

.method static synthetic access$8(Lcl/santander/smartphone/ConsolidadoInversiones;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z

    return v0
.end method

.method static synthetic access$9(Lcl/santander/smartphone/ConsolidadoInversiones;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z

    return-void
.end method

.method private inicializaGrupos()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z

    .line 104
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z

    .line 105
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z

    .line 106
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z

    .line 108
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 120
    iget-boolean v5, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z

    if-nez v5, :cond_9

    .line 122
    new-instance v2, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v2}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>()V

    .line 123
    .local v2, "fm":Lcl/santander/santanderCL/data/MatrizInversiones;
    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v2, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 124
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    .end local v2    # "fm":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z

    if-nez v5, :cond_a

    .line 134
    new-instance v4, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v4}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>()V

    .line 135
    .local v4, "m_apv":Lcl/santander/santanderCL/data/MatrizInversiones;
    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 136
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 144
    .end local v4    # "m_apv":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_1
    :goto_2
    iget-boolean v5, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z

    if-nez v5, :cond_b

    .line 146
    new-instance v1, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>()V

    .line 147
    .local v1, "dp":Lcl/santander/santanderCL/data/MatrizInversiones;
    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v1, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 148
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v1    # "dp":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z

    if-nez v5, :cond_c

    .line 158
    new-instance v0, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;-><init>()V

    .line 159
    .local v0, "ac":Lcl/santander/santanderCL/data/MatrizInversiones;
    sget-object v5, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v0, v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 160
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "ac":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_3
    :goto_4
    return-void

    .line 110
    :cond_4
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v5

    sget-object v6, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    iput-boolean v8, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z

    .line 112
    :cond_5
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v5

    sget-object v6, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 113
    iput-boolean v8, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z

    .line 114
    :cond_6
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v5

    sget-object v6, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 115
    iput-boolean v8, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z

    .line 116
    :cond_7
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v5

    sget-object v6, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    iput-boolean v8, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z

    .line 108
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 128
    :cond_9
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 129
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->fondos:Z

    goto/16 :goto_1

    .line 140
    :cond_a
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 141
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->apv:Z

    goto/16 :goto_2

    .line 152
    :cond_b
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 153
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->depositos:Z

    goto/16 :goto_3

    .line 164
    :cond_c
    sget-object v5, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 165
    iput-boolean v7, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->acciones:Z

    goto/16 :goto_4
.end method


# virtual methods
.method public loadProducts()V
    .locals 4

    .prologue
    .line 174
    invoke-direct {p0}, Lcl/santander/smartphone/ConsolidadoInversiones;->inicializaGrupos()V

    .line 176
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;

    iget-object v2, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 178
    sget v0, Lcl/santander/smartphone/ConsolidadoInversiones;->longitudIndicator:I

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    sget v2, Lcl/santander/smartphone/ConsolidadoInversiones;->longitudIndicator:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/ConsolidadoInversiones$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/ConsolidadoInversiones$2;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V

    .line 190
    const-wide/16 v2, 0x1

    .line 181
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/ConsolidadoInversiones$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/ConsolidadoInversiones$3;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    new-instance v1, Lcl/santander/smartphone/ConsolidadoInversiones$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/ConsolidadoInversiones$4;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 400
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcl/santander/smartphone/ConsolidadoInversiones;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 73
    iget-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcl/santander/smartphone/ConsolidadoInversiones;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/ConsolidadoInversiones;->setHasOptionsMenu(Z)V

    .line 76
    iget-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060066

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    .line 78
    iget-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->m_View:Landroid/view/View;

    invoke-static {v1, v2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcl/santander/smartphone/ConsolidadoInversiones;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcl/santander/smartphone/ConsolidadoInversiones$1;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/ConsolidadoInversiones$1;-><init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const v0, 0x7f03001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->m_View:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 404
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
