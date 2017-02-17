.class Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaSolicitud.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerAcciones()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 285
    if-eqz p3, :cond_0

    .line 287
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # getter for: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->cartera_acciones:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$6(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-static {v1, v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$7(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;Lcl/santander/santanderCL/data/response/ItemCartera;)V

    .line 288
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_datos_accion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_cantidad_acciones:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_tipo_precio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->rellenaDatosAccion()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$8(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    .line 292
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerPrecios()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$9(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$7(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;Lcl/santander/santanderCL/data/response/ItemCartera;)V

    .line 297
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_datos_accion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_cantidad_acciones:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_tipo_precio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

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
    .line 304
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
