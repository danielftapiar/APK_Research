.class Lcl/santander/smartphone/localizador/Localizador$4;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 219
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 221
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 228
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$6(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$7(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 238
    :cond_0
    :goto_1
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$10(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->hayCategoriaDesactivada(Ljava/util/ArrayList;)Z
    invoke-static {v0, v1}, Lcl/santander/smartphone/localizador/Localizador;->access$11(Lcl/santander/smartphone/localizador/Localizador;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$12(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 247
    :goto_2
    return-void

    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    move-object v0, p1

    .line 225
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->mostrarPOIS()V
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$9(Lcl/santander/smartphone/localizador/Localizador;)V

    goto :goto_1

    .line 244
    .end local p1    # "v":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$4;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_filtro:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$12(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_2
.end method
