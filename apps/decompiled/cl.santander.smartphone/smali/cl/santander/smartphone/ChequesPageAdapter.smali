.class public Lcl/santander/smartphone/ChequesPageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ChequesPageAdapter.java"

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
.field cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizChequesAsociados;)V
    .locals 0
    .param p1, "sfa"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p2, "documentosAsociados"    # Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 30
    iput-object p2, p0, Lcl/santander/smartphone/ChequesPageAdapter;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    .line 31
    iput-object p1, p0, Lcl/santander/smartphone/ChequesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 32
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/widget/LinearLayout;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 48
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/smartphone/ChequesPageAdapter;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcl/santander/smartphone/ChequesPageAdapter;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;->size()I

    move-result v0

    .line 54
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
    .line 36
    const/4 v0, -0x2

    return v0
.end method

.method public getStructure(I)Landroid/widget/LinearLayout;
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v9, p0, Lcl/santander/smartphone/ChequesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 70
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 71
    .local v1, "container":Landroid/widget/LinearLayout;
    const v9, 0x7f03004d

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1    # "container":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 73
    .restart local v1    # "container":Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcl/santander/smartphone/ChequesPageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 75
    const v9, 0x7f060231

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 76
    .local v7, "tv_serie":Landroid/widget/TextView;
    const v9, 0x7f060236

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "tv_banco":Landroid/widget/TextView;
    const v9, 0x7f060232

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 78
    .local v4, "tv_cuenta":Landroid/widget/TextView;
    const v9, 0x7f060237

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 79
    .local v5, "tv_fecha":Landroid/widget/TextView;
    const v9, 0x7f060233

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 80
    .local v8, "tv_tipo":Landroid/widget/TextView;
    const v9, 0x7f060235

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 83
    .local v6, "tv_monto":Landroid/widget/TextView;
    iget-object v9, p0, Lcl/santander/smartphone/ChequesPageAdapter;->cheques:Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    invoke-virtual {v9, p1}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;->get(I)Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    move-result-object v0

    .line 85
    .local v0, "cheque":Lcl/santander/santanderCL/data/response/ItemChequeAsociado;
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getSerieDocumento()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getBanco()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getCuenta()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getTipoDoctoScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getFecha()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemChequeAsociado;->getMontoDocumentoScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-object v1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p2}, Lcl/santander/smartphone/ChequesPageAdapter;->getStructure(I)Landroid/widget/LinearLayout;

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
    .line 97
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
    .line 103
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
