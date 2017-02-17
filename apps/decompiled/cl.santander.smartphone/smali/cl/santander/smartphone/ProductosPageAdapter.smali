.class public Lcl/santander/smartphone/ProductosPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProductosPageAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/view/PagerAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I


# instance fields
.field productos:Lcl/santander/santanderCL/data/MatrizProductos;

.field private run:Ljava/lang/Runnable;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcl/santander/smartphone/ProductosPageAdapter;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->values()[Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_AHORRO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_CORRIENTE_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->CUENTA_VISTA:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->DEPOSITO_PLAZO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->LINEA_CREDITO_DOLARES:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->TARJETA_CREDITO:Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    invoke-virtual {v1}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcl/santander/smartphone/ProductosPageAdapter;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V
    .locals 0
    .param p1, "sfa"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p2, "_productos"    # Lcl/santander/santanderCL/data/MatrizProductos;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 26
    iput-object p2, p0, Lcl/santander/smartphone/ProductosPageAdapter;->productos:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 27
    iput-object p1, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 28
    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/ProductosPageAdapter;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcl/santander/smartphone/ProductosPageAdapter;->run:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/widget/LinearLayout;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcl/santander/smartphone/ProductosPageAdapter;->productos:Lcl/santander/santanderCL/data/MatrizProductos;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcl/santander/smartphone/ProductosPageAdapter;->productos:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 32
    const/4 v0, -0x2

    return v0
.end method

.method public getStructure(I)Landroid/widget/LinearLayout;
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 70
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 71
    .local v0, "container":Landroid/widget/LinearLayout;
    const v12, 0x7f03004f

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "container":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    .restart local v0    # "container":Landroid/widget/LinearLayout;
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v0}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    const v12, 0x7f06023d

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 76
    .local v7, "nombreProducto":Landroid/widget/TextView;
    const v12, 0x7f06023e

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 77
    .local v8, "numeroProducto":Landroid/widget/TextView;
    const v12, 0x7f06023f

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 78
    .local v10, "titulo1":Landroid/widget/TextView;
    const v12, 0x7f060241

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 79
    .local v11, "titulo2":Landroid/widget/TextView;
    const v12, 0x7f060240

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "data1":Landroid/widget/TextView;
    const v12, 0x7f060242

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "data2":Landroid/widget/TextView;
    const v12, 0x7f060243

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "headQuantity":Landroid/widget/TextView;
    const v12, 0x7f060244

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 85
    .local v9, "quantity":Landroid/widget/TextView;
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->productos:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v12, p1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    .line 87
    .local v5, "item":Lcl/santander/santanderCL/data/response/ItemProducto;
    invoke-static {}, Lcl/santander/smartphone/ProductosPageAdapter;->$SWITCH_TABLE$cl$santander$santanderCL$utils$Constant$PRODUCTOS()[I

    move-result-object v12

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getTipo()Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;

    move-result-object v13

    invoke-virtual {v13}, Lcl/santander/santanderCL/utils/Constant$PRODUCTOS;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->run:Ljava/lang/Runnable;

    if-eqz v12, :cond_0

    .line 135
    const v12, 0x7f060245

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 136
    .local v6, "ly_click":Landroid/widget/LinearLayout;
    new-instance v12, Lcl/santander/smartphone/ProductosPageAdapter$1;

    invoke-direct {v12, p0}, Lcl/santander/smartphone/ProductosPageAdapter$1;-><init>(Lcl/santander/smartphone/ProductosPageAdapter;)V

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .end local v6    # "ly_click":Landroid/widget/LinearLayout;
    :cond_0
    return-object v0

    .line 90
    :pswitch_1
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f05006e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050097

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroPanScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f05001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f05006e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const-string v12, ""

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f05001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    :pswitch_3
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroPanScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050161

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0500ac

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoUtilizadoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0500ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    :pswitch_4
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050161

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCupoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0500ac

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoUtilizadoScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v12, p0, Lcl/santander/smartphone/ProductosPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0500ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getMontoDisponibleScreen()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p2}, Lcl/santander/smartphone/ProductosPageAdapter;->getStructure(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 59
    .local v0, "container":Landroid/widget/LinearLayout;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 60
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 149
    check-cast p2, Landroid/widget/LinearLayout;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public setClickListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    iput-object p1, p0, Lcl/santander/smartphone/ProductosPageAdapter;->run:Ljava/lang/Runnable;

    .line 66
    return-void
.end method
