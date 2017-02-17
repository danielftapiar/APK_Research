.class Lcl/santander/smartphone/Ultimos_Movimientos$11;
.super Ljava/lang/Object;
.source "Ultimos_Movimientos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ultimos_Movimientos;->filtrado(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

.field private final synthetic val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/CustomDatePickerDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iput-object p2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 585
    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 587
    .local v4, "s":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->_mDesde:Ljava/util/Date;
    invoke-static {v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$8(Lcl/santander/smartphone/Ultimos_Movimientos;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;

    invoke-virtual {v2}, Lcl/santander/smartphone/CustomDatePickerDialog;->getDate()Ljava/util/Date;

    move-result-object v2

    # invokes: Lcl/santander/smartphone/Ultimos_Movimientos;->validaHasta(Ljava/util/Date;Ljava/util/Date;)Z
    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$9(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;

    invoke-virtual {v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$10(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;)V

    .line 590
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->_mHasta:Ljava/util/Date;
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$11(Lcl/santander/smartphone/Ultimos_Movimientos;)Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$10(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, v1, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget v2, v2, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, v1, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget v2, v2, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->_mDesde:Ljava/util/Date;
    invoke-static {v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$8(Lcl/santander/smartphone/Ultimos_Movimientos;)Ljava/util/Date;

    move-result-object v2

    iget-object v5, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # getter for: Lcl/santander/smartphone/Ultimos_Movimientos;->_mHasta:Ljava/util/Date;
    invoke-static {v5}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$11(Lcl/santander/smartphone/Ultimos_Movimientos;)Ljava/util/Date;

    move-result-object v5

    # invokes: Lcl/santander/smartphone/Ultimos_Movimientos;->cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V
    invoke-static {v0, v1, v2, v5, v3}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$0(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 597
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;

    invoke-virtual {v0}, Lcl/santander/smartphone/CustomDatePickerDialog;->dismiss()V

    .line 598
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$11;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->ERROR_CONSULTA_FECHAS:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
