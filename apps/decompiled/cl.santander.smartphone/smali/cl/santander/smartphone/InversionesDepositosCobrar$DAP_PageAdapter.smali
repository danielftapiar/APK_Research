.class Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "InversionesDepositosCobrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/InversionesDepositosCobrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DAP_PageAdapter"
.end annotation


# instance fields
.field list_dap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIPF;",
            ">;"
        }
    .end annotation
.end field

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/InversionesDepositosCobrar;Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "act"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/SherlockFragmentActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIPF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemIPF;>;"
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    .line 237
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 238
    iput-object p2, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 239
    iput-object p3, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->list_dap:Ljava/util/ArrayList;

    .line 240
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 293
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/widget/LinearLayout;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 300
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->list_dap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->list_dap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 283
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
    .line 288
    const/4 v0, -0x2

    return v0
.end method

.method public getStructure(I)Landroid/widget/LinearLayout;
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v6, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 258
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 259
    .local v0, "container":Landroid/widget/LinearLayout;
    const v6, 0x7f03004e

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "container":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 261
    .restart local v0    # "container":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 263
    const v6, 0x7f06023a

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 264
    .local v4, "tv_num_deposito":Landroid/widget/TextView;
    const v6, 0x7f06023b

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 265
    .local v5, "tv_tipo_deposito":Landroid/widget/TextView;
    const v6, 0x7f06023c

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 267
    .local v3, "ly_cobrable":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->list_dap:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemIPF;

    .line 270
    .local v2, "item":Lcl/santander/santanderCL/data/response/ItemIPF;
    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemIPF;->getNumeroDeposito()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemIPF;->getDescripcion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-object v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;->getStructure(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 251
    .local v0, "container":Landroid/widget/LinearLayout;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 252
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 304
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
