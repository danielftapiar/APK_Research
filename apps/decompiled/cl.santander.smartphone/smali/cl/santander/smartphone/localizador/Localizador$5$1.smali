.class Lcl/santander/smartphone/localizador/Localizador$5$1;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/localizador/Localizador$5;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->isModificado()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v1

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->getMarcadas()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->access$14(Lcl/santander/smartphone/localizador/Localizador;Ljava/util/ArrayList;)V

    .line 267
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v1

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->isCajeros()Z

    move-result v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->access$15(Lcl/santander/smartphone/localizador/Localizador;Z)V

    .line 268
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v1

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->isSucursales()Z

    move-result v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->access$16(Lcl/santander/smartphone/localizador/Localizador;Z)V

    .line 271
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v1

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$10(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->hayCategoriaDesactivada(Ljava/util/ArrayList;)Z
    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->access$11(Lcl/santander/smartphone/localizador/Localizador;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$12(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 280
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->mostrarPOIS()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$9(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 283
    :cond_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5$1;->this$1:Lcl/santander/smartphone/localizador/Localizador$5;

    # getter for: Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador$5;->access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;

    move-result-object v0

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$12(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method
