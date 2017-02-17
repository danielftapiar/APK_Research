.class Lcl/santander/smartphone/InversionesDepositosCobrar$3;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrar.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosCobrar;->loadDepositosCobrar()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$3;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$3;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    # getter for: Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->access$0(Lcl/santander/smartphone/InversionesDepositosCobrar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemIPF;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemIPF;->isCobrable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$3;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar$3;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrar;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
