.class Lcl/santander/smartphone/InversionesDepositosCobrar$1;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosCobrar;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosCobrar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    iget-object v2, v2, Lcl/santander/smartphone/InversionesDepositosCobrar;->vp_depositos:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 102
    .local v1, "sel":I
    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    iget-object v2, v2, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 103
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f060062

    new-instance v4, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    # getter for: Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;
    invoke-static {v2}, Lcl/santander/smartphone/InversionesDepositosCobrar;->access$0(Lcl/santander/smartphone/InversionesDepositosCobrar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemIPF;

    invoke-direct {v4, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;-><init>(Lcl/santander/santanderCL/data/response/ItemIPF;)V

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 109
    return-void
.end method
