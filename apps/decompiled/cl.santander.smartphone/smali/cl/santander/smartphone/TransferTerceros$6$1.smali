.class Lcl/santander/smartphone/TransferTerceros$6$1;
.super Ljava/lang/Object;
.source "TransferTerceros.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTerceros$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/TransferTerceros$6;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTerceros$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 260
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->cud:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    invoke-virtual {v4}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->getItemSelected()Lcl/santander/santanderCL/data/response/ItemUltTransf;

    move-result-object v3

    .line 262
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemUltTransf;
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->et_rut:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getRutCliente()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getNombreCliente()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->et_cuenta:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getNumeroCuenta()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemUltTransf;->getCodigoBanco()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "codigobanco":I
    const/4 v2, 0x0

    .line 269
    .local v2, "i":I
    const/4 v1, 0x0

    .line 270
    .local v1, "encontrado":Z
    :goto_0
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    if-eqz v1, :cond_2

    .line 279
    :cond_0
    if-eqz v1, :cond_1

    .line 280
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 282
    :cond_1
    return-void

    .line 273
    :cond_2
    iget-object v4, p0, Lcl/santander/smartphone/TransferTerceros$6$1;->this$1:Lcl/santander/smartphone/TransferTerceros$6;

    # getter for: Lcl/santander/smartphone/TransferTerceros$6;->this$0:Lcl/santander/smartphone/TransferTerceros;
    invoke-static {v4}, Lcl/santander/smartphone/TransferTerceros$6;->access$0(Lcl/santander/smartphone/TransferTerceros$6;)Lcl/santander/smartphone/TransferTerceros;

    move-result-object v4

    iget-object v4, v4, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemBanco;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemBanco;->getId()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 274
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
