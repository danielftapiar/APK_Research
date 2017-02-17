.class Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraSolicitud.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->TieneRiesgo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 304
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v1, v1, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    .line 309
    .local v10, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->monto_o_cantidad:I
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$2(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 310
    new-instance v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$3(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->cuenta_custodia:Ljava/lang/String;
    invoke-static {v2}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$4(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->monto_o_cantidad:I
    invoke-static {v3}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$2(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I

    move-result v3

    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v4, v4, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->numero_dias:I
    invoke-static {v5}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$5(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I

    move-result v5

    iget-object v6, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v6, v6, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_acciones:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v7, v7, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->email:Ljava/lang/String;
    invoke-static {v8}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$6(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->telf:Ljava/lang/String;
    invoke-static {v9}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$7(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;-><init>(Lcl/santander/santanderCL/data/response/ItemAccionCompra;Ljava/lang/String;ILcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v0, "fragment":Lcl/santander/smartphone/InversionesAccionesCompraValidar;
    :goto_0
    const v1, 0x7f060062

    invoke-virtual {v10, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 317
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 318
    return-void

    .line 312
    .end local v0    # "fragment":Lcl/santander/smartphone/InversionesAccionesCompraValidar;
    :cond_0
    new-instance v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$3(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->cuenta_custodia:Ljava/lang/String;
    invoke-static {v2}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$4(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->monto_o_cantidad:I
    invoke-static {v3}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$2(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I

    move-result v3

    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v4, v4, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->numero_dias:I
    invoke-static {v5}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$5(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I

    move-result v5

    iget-object v6, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v6, v6, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_cantidad_acciones:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v7, v7, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->email:Ljava/lang/String;
    invoke-static {v8}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$6(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->telf:Ljava/lang/String;
    invoke-static {v9}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->access$7(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;-><init>(Lcl/santander/santanderCL/data/response/ItemAccionCompra;Ljava/lang/String;ILcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "fragment":Lcl/santander/smartphone/InversionesAccionesCompraValidar;
    goto :goto_0
.end method
