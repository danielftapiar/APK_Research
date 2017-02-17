.class public Lcl/santander/smartphone/InversionesPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InversionesPageAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/view/PagerAdapter;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizInversiones;)V
    .locals 0
    .param p1, "sfa"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p2, "inversiones"    # Lcl/santander/santanderCL/data/MatrizInversiones;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 30
    iput-object p1, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 31
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/widget/LinearLayout;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 47
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->size()I

    move-result v0

    .line 53
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
    .line 35
    const/4 v0, -0x2

    return v0
.end method

.method public getStructure(I)Landroid/widget/LinearLayout;
    .locals 13
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 70
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 71
    .local v0, "container":Landroid/widget/LinearLayout;
    const v11, 0x7f03004f

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "container":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    .restart local v0    # "container":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v0}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    const v11, 0x7f06023d

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 76
    .local v6, "nombreProducto":Landroid/widget/TextView;
    const v11, 0x7f06023e

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 77
    .local v7, "numeroProducto":Landroid/widget/TextView;
    const v11, 0x7f06023f

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 78
    .local v9, "titulo1":Landroid/widget/TextView;
    const v11, 0x7f060241

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 79
    .local v10, "titulo2":Landroid/widget/TextView;
    const v11, 0x7f060240

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 80
    .local v1, "data1":Landroid/widget/TextView;
    const v11, 0x7f060242

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "data2":Landroid/widget/TextView;
    const v11, 0x7f060243

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "headQuantity":Landroid/widget/TextView;
    const v11, 0x7f060244

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 84
    .local v8, "quantity":Landroid/widget/TextView;
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 85
    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 86
    const/4 v11, 0x3

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    const/4 v11, 0x3

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 91
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 92
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 93
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 94
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 95
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 97
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v11, p1}, Lcl/santander/santanderCL/data/MatrizInversiones;->get(I)Lcl/santander/santanderCL/data/response/ItemInversion;

    move-result-object v5

    .line 99
    .local v5, "item":Lcl/santander/santanderCL/data/response/ItemInversion;
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v11

    sget-object v12, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v11, v12}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 101
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getProducto()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getDescripcion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05009a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getMoneda()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const-string v11, ""

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050095

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldoCentral()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v11

    sget-object v12, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v11, v12}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 112
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getProducto()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getCcc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05006d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const-string v11, ""

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldoCentral()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v11

    sget-object v12, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v11, v12}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 123
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getProducto()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getCcc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0500af

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05009a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getMoneda()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0500b3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldoCentral()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 132
    :cond_3
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v11

    sget-object v12, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v11, v12}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 134
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getProducto()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getDescripcion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050087

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const-string v11, ""

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050095

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldoCentral()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 143
    :cond_4
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v11}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v11

    sget-object v12, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v11, v12}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 145
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getProducto()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getDescripcion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05016b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const-string v11, ""

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v11, p0, Lcl/santander/smartphone/InversionesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v11}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05016c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemInversion;->getSaldoCentral()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p2}, Lcl/santander/smartphone/InversionesPageAdapter;->getStructure(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 62
    .local v0, "container":Landroid/widget/LinearLayout;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 63
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 162
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
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
