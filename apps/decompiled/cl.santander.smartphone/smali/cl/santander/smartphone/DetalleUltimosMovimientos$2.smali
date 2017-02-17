.class Lcl/santander/smartphone/DetalleUltimosMovimientos$2;
.super Ljava/lang/Object;
.source "DetalleUltimosMovimientos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/DetalleUltimosMovimientos;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

.field private final synthetic val$ult:Lcl/santander/smartphone/DetalleUltimosMovimientos;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientos;Lcl/santander/smartphone/DetalleUltimosMovimientos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iput-object p2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->val$ult:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 659
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$10(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->documentosAsociados:Lcl/santander/santanderCL/data/MatrizChequesAsociados;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$10(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Lcl/santander/santanderCL/data/MatrizChequesAsociados;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizChequesAsociados;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 666
    iget-object v1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$11(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->val$ult:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v3, p0, Lcl/santander/smartphone/DetalleUltimosMovimientos$2;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientos;

    # getter for: Lcl/santander/smartphone/DetalleUltimosMovimientos;->sensorOrientacion:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcl/santander/smartphone/DetalleUltimosMovimientos;->access$12(Lcl/santander/smartphone/DetalleUltimosMovimientos;)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 668
    :cond_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
