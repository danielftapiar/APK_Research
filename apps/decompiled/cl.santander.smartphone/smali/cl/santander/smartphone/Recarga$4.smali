.class Lcl/santander/smartphone/Recarga$4;
.super Ljava/lang/Object;
.source "Recarga.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Recarga;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Recarga;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Recarga;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v0, v0, Lcl/santander/smartphone/Recarga;->et_Numero:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "number":Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-boolean v0, v0, Lcl/santander/smartphone/Recarga;->m_bInputModeSpinner:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v0, v0, Lcl/santander/smartphone/Recarga;->m_SpinnerMontoRecarga:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "monto":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 333
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v0, v0, Lcl/santander/smartphone/Recarga;->et_Email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "email":Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->m_SpinnerOperadores:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v5, v1}, Lcl/santander/smartphone/Recarga;->validaCampos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "."

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 342
    .local v4, "montoValue":I
    new-instance v0, Lcl/santander/smartphone/DataRecarga;

    .line 343
    iget-object v1, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v1, v1, Lcl/santander/smartphone/Recarga;->m_Operadoras:Ljava/util/ArrayList;

    iget-object v7, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget v7, v7, Lcl/santander/smartphone/Recarga;->m_iCurrentOperador:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemOperadora;

    .line 342
    invoke-direct/range {v0 .. v5}, Lcl/santander/smartphone/DataRecarga;-><init>(Lcl/santander/santanderCL/data/response/ItemOperadora;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcl/santander/smartphone/Global;->m_DataRecarga:Lcl/santander/smartphone/DataRecarga;

    .line 346
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v0, v0, Lcl/santander/smartphone/Recarga;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 348
    .local v6, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f060062

    .line 349
    new-instance v1, Lcl/santander/smartphone/RecargaConfirm;

    iget-object v7, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v7, v7, Lcl/santander/smartphone/Recarga;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v8, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v8, v8, Lcl/santander/smartphone/Recarga;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v8

    invoke-virtual {v7, v8}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v7

    sget-object v8, Lcl/santander/smartphone/Global;->m_DataRecarga:Lcl/santander/smartphone/DataRecarga;

    invoke-direct {v1, v7, v8}, Lcl/santander/smartphone/RecargaConfirm;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/smartphone/DataRecarga;)V

    .line 348
    invoke-virtual {v6, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 351
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 352
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 354
    .end local v4    # "montoValue":I
    .end local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void

    .line 329
    .end local v3    # "monto":Ljava/lang/String;
    .end local v5    # "email":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/Recarga$4;->this$0:Lcl/santander/smartphone/Recarga;

    iget-object v0, v0, Lcl/santander/smartphone/Recarga;->et_Monto:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "monto":Ljava/lang/String;
    goto :goto_0
.end method
