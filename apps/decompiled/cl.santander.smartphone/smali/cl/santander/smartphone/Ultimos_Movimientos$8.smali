.class Lcl/santander/smartphone/Ultimos_Movimientos$8;
.super Ljava/lang/Object;
.source "Ultimos_Movimientos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ultimos_Movimientos;->filtradoFecha()V
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
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iput-object p2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v0, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, v1, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget v2, v2, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget-object v1, v1, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    iget v2, v2, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcl/santander/smartphone/Ultimos_Movimientos;->cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V
    invoke-static {v0, v1, v3, v3, v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$0(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 548
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$8;->val$dp:Lcl/santander/smartphone/CustomDatePickerDialog;

    invoke-virtual {v0}, Lcl/santander/smartphone/CustomDatePickerDialog;->dismiss()V

    .line 549
    return-void
.end method
