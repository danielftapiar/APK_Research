.class Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "PosicionGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/PosicionGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandListAdapter"
.end annotation


# instance fields
.field private act:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/MatrizProductos;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcl/santander/smartphone/PosicionGlobal;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/PosicionGlobal;Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "act"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/SherlockFragmentActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/MatrizProductos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/MatrizProductos;>;"
    iput-object p1, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 364
    iput-object p2, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->act:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 365
    iput-object p3, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->groups:Ljava/util/ArrayList;

    .line 366
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getMatriz()Ljava/util/ArrayList;

    move-result-object v0

    .line 372
    .local v0, "chList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemProducto;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 378
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
    .line 384
    invoke-virtual {p0, p1, p2}, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 386
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemProducto;
    if-nez p4, :cond_0

    .line 387
    iget-object v9, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v9, v9, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 388
    .local v2, "infalInflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030056

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 389
    iget-object v9, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v9, v9, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, p4}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 392
    .end local v2    # "infalInflater":Landroid/view/LayoutInflater;
    :cond_0
    const v9, 0x7f060288

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 393
    .local v4, "ll":Landroid/widget/LinearLayout;
    const v9, 0x7f06028a

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 394
    .local v8, "title":Landroid/widget/TextView;
    const v9, 0x7f060289

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 396
    .local v7, "tipoc":Landroid/widget/TextView;
    const v9, 0x7f06028b

    invoke-virtual {p4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 398
    .local v5, "money":Landroid/widget/TextView;
    move v6, p2

    .line 400
    .local v6, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_2

    .line 406
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_3

    .line 407
    const v9, 0x7f0200d6

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 411
    :goto_1
    const/4 v9, 0x3

    if-ne p1, v9, :cond_4

    .line 412
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    const-string v9, ""

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1
    :goto_2
    return-object p4

    .line 401
    :cond_2
    invoke-virtual {p0, v1}, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 402
    .local v0, "group":Lcl/santander/santanderCL/data/MatrizProductos;
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v9

    add-int/2addr v6, v9

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "group":Lcl/santander/santanderCL/data/MatrizProductos;
    :cond_3
    const v9, 0x7f0200d7

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 416
    :cond_4
    const/4 v9, 0x2

    if-ne p1, v9, :cond_5

    .line 417
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroPanScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 421
    :cond_5
    if-eqz p1, :cond_6

    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 422
    :cond_6
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 436
    iget-object v1, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getMatriz()Ljava/util/ArrayList;

    move-result-object v0

    .line 438
    .local v0, "chList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemProducto;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 454
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "groupPosition"    # I
    .param p2, "isLastChild"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f050022

    .line 460
    invoke-virtual {p0, p1}, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 462
    .local v1, "group":Lcl/santander/santanderCL/data/MatrizProductos;
    if-nez p3, :cond_0

    .line 463
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v6, v6, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 464
    .local v2, "inf":Landroid/view/LayoutInflater;
    const v6, 0x7f030057

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 465
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v6, v6, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p3}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 468
    .end local v2    # "inf":Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f06028c

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 469
    .local v3, "ll":Landroid/widget/LinearLayout;
    const v6, 0x7f06028e

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 470
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f06028d

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 471
    .local v0, "description":Landroid/widget/TextView;
    const v6, 0x7f06028f

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 473
    .local v4, "money":Landroid/widget/TextView;
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 475
    packed-switch p1, :pswitch_data_0

    .line 522
    :goto_0
    return-object p3

    .line 477
    :pswitch_0
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v6, v6, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->hayVariasDivisas()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 480
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    invoke-virtual {v6}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getTotalScreen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :cond_1
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v6, v6, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05005e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->hayVariasDivisas()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 493
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    invoke-virtual {v6}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getTotalScreen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 498
    :cond_2
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 503
    :pswitch_2
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v6, v6, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f05005f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->hayVariasDivisas()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 506
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    invoke-virtual {v6}, Lcl/santander/smartphone/PosicionGlobal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->getTotalScreen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 511
    :cond_3
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 516
    :pswitch_3
    iget-object v6, p0, Lcl/santander/smartphone/PosicionGlobal$ExpandListAdapter;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v6, v6, Lcl/santander/smartphone/PosicionGlobal;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method
