.class Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ConsolidadoInversiones.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/ConsolidadoInversiones;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandListAdapter"
.end annotation


# instance fields
.field private act:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field final synthetic this$0:Lcl/santander/smartphone/ConsolidadoInversiones;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/ConsolidadoInversiones;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 0
    .param p2, "act"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .prologue
    .line 420
    iput-object p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 421
    iput-object p2, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->act:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 424
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 428
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getInversiones()Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    .local v0, "chList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemInversion;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 436
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "view"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 442
    invoke-virtual {p0, p1, p2}, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemInversion;

    .line 445
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemInversion;
    iget-object v9, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v9, v9, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 446
    .local v2, "infalInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030056

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 447
    iget-object v9, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v9, v9, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, p4}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 450
    const v9, 0x7f060288

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 451
    .local v4, "ll":Landroid/widget/LinearLayout;
    const v9, 0x7f060289

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 452
    .local v7, "tipo":Landroid/widget/TextView;
    const v9, 0x7f06028a

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 453
    .local v8, "title":Landroid/widget/TextView;
    const v9, 0x7f06028b

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 455
    .local v5, "money":Landroid/widget/TextView;
    move v6, p2

    .line 457
    .local v6, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_2

    .line 463
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_3

    .line 464
    const v9, 0x7f0200d6

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 469
    :goto_1
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getDescripcion()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getDescripcion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 470
    :cond_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 474
    :goto_2
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getCcc()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getCcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 475
    :cond_1
    invoke-virtual {v8}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 479
    :goto_3
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldoCentral()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    return-object p4

    .line 458
    :cond_2
    invoke-virtual {p0, v1}, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 459
    .local v0, "group":Lcl/santander/santanderCL/data/MatrizInversiones;
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v9

    add-int/2addr v6, v9

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "group":Lcl/santander/santanderCL/data/MatrizInversiones;
    :cond_3
    const v9, 0x7f0200d7

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 472
    :cond_4
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getDescripcion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 477
    :cond_5
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemInversion;->getCcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 492
    sget-object v1, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getInversiones()Ljava/util/ArrayList;

    move-result-object v0

    .line 494
    .local v0, "chList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemInversion;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 499
    sget-object v0, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 505
    sget-object v0, Lcl/santander/smartphone/Global;->grupos_inversiones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 510
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "isLastChild"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 518
    .local v1, "group":Lcl/santander/santanderCL/data/MatrizInversiones;
    if-nez p3, :cond_0

    .line 519
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 520
    .local v2, "inf":Landroid/view/LayoutInflater;
    const v6, 0x7f030057

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 521
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p3}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 524
    .end local v2    # "inf":Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f06028c

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 525
    .local v3, "ll":Landroid/widget/LinearLayout;
    const v6, 0x7f06028e

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 526
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f06028d

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 527
    .local v0, "description":Landroid/widget/TextView;
    const v6, 0x7f06028f

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 529
    .local v4, "money":Landroid/widget/TextView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 532
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 534
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050108

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :cond_1
    :goto_0
    return-object p3

    .line 538
    :cond_2
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 540
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050109

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 544
    :cond_3
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 546
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05010a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :cond_4
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 552
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05010b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 556
    :cond_5
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v6, v7}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 558
    iget-object v6, p0, Lcl/santander/smartphone/ConsolidadoInversiones$ExpandListAdapter;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v6, v6, Lcl/santander/smartphone/ConsolidadoInversiones;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05010c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 576
    const/4 v0, 0x1

    return v0
.end method
