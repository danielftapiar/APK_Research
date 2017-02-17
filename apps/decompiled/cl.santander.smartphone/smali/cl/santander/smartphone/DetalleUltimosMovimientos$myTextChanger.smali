.class Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;
.super Ljava/lang/Object;
.source "DetalleUltimosMovimientos.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/DetalleUltimosMovimientos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myTextChanger"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;-><init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 545
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 552
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 558
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->et_cuantos_split:Landroid/widget/EditText;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$6(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "divisors":Ljava/lang/String;
    const/4 v4, 0x1

    .line 563
    .local v4, "divisorsInt":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 568
    :goto_0
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporte()D

    move-result-wide v0

    .line 573
    .local v0, "amount":D
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    div-double v6, v0, v9

    .line 577
    .local v6, "partial":D
    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    .line 579
    .local v2, "divisa":Ljava/lang/String;
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v9

    const-string v10, "USD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 580
    const-string v2, "USD"

    .line 581
    :cond_0
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->mMovimiento:Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$8(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v9

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EUR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 582
    const-string v2, "EUR"

    .line 584
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 591
    .local v8, "partialString":Ljava/lang/String;
    iget-object v9, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$myTextChanger;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->tv_cuanto_split:Landroid/widget/TextView;
    invoke-static {v9}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$9(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    return-void

    .line 565
    .end local v0    # "amount":D
    .end local v2    # "divisa":Ljava/lang/String;
    .end local v6    # "partial":D
    .end local v8    # "partialString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 566
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_0
.end method
