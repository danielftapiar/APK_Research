.class Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;
.super Ljava/lang/Object;
.source "DetalleUltimosMovimientosTarjeta.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myTextChanger"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 558
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 565
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 571
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->et_cuantos_split:Landroid/widget/EditText;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$6(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "divisors":Ljava/lang/String;
    const/4 v4, 0x1

    .line 576
    .local v4, "divisorsInt":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 581
    :goto_0
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporte()D

    move-result-wide v0

    .line 586
    .local v0, "amount":D
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    div-double v6, v0, v9

    .line 590
    .local v6, "partial":D
    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    .line 592
    .local v2, "divisa":Ljava/lang/String;
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v9

    const-string v10, "USD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 593
    const-string v2, "USD"

    .line 594
    :cond_0
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EUR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 595
    const-string v2, "EUR"

    .line 597
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 604
    .local v8, "partialString":Ljava/lang/String;
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->tv_cuanto_split:Landroid/widget/TextView;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->access$9(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    return-void

    .line 578
    .end local v0    # "amount":D
    .end local v2    # "divisa":Ljava/lang/String;
    .end local v6    # "partial":D
    .end local v8    # "partialString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 579
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_0
.end method
