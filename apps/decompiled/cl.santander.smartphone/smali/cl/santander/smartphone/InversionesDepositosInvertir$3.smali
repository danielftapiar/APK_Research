.class Lcl/santander/smartphone/InversionesDepositosInvertir$3;
.super Ljava/lang/Object;
.source "InversionesDepositosInvertir.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosInvertir;->loadSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosInvertir;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "_option"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 203
    if-eqz p3, :cond_2

    .line 205
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->ly_tipo_reajuste:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    if-ne p3, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 210
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 224
    :goto_0
    # getter for: Lcl/santander/smartphone/InversionesDepositosInvertir;->tipo_reaj:I
    invoke-static {}, Lcl/santander/smartphone/InversionesDepositosInvertir;->access$1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    # getter for: Lcl/santander/smartphone/InversionesDepositosInvertir;->tipo_reaj:I
    invoke-static {}, Lcl/santander/smartphone/InversionesDepositosInvertir;->access$1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 228
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->sp_tipo_reajuste:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->ly_tipo_reajuste:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosInvertir$3;->this$0:Lcl/santander/smartphone/InversionesDepositosInvertir;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesDepositosInvertir;->bt_simular:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
