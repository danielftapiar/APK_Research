.class Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaSolicitud.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerPrecios()V
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
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v2, 0x8

    .line 328
    if-eqz p3, :cond_1

    .line 330
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    iput-object v1, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    .line 333
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_input_precio_limite:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$11(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;D)V

    .line 335
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_monto_final_venta:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D
    invoke-static {v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_numero_dias:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_monto_final_venta:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->rellenaPrecioFinal()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$12(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    .line 360
    :goto_1
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->M:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    iput-object v1, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    .line 343
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_input_precio_limite:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$11(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;D)V

    .line 345
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_monto_final_venta:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D
    invoke-static {v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_monto_final_venta:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    const/4 v1, 0x0

    iput-object v1, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    .line 357
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_input_precio_limite:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_numero_dias:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
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
    .line 363
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
