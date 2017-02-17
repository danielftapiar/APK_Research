.class Lcl/santander/smartphone/localizador/Localizador$5;
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
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/Localizador$5;)Lcl/santander/smartphone/localizador/Localizador;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    new-instance v9, Lcl/santander/smartphone/localizador/Localizador$5$1;

    invoke-direct {v9, p0}, Lcl/santander/smartphone/localizador/Localizador$5$1;-><init>(Lcl/santander/smartphone/localizador/Localizador$5;)V

    .line 287
    .local v9, "run":Ljava/lang/Runnable;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$7(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_suc_caj:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$6(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v6, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    .line 294
    .local v6, "tipo":Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    :goto_0
    iget-object v10, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    new-instance v0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$17(Lcl/santander/smartphone/localizador/Localizador;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->categorias:Ljava/util/ArrayList;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$18(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cat_seleccionadas:Ljava/util/ArrayList;
    invoke-static {v5}, Lcl/santander/smartphone/localizador/Localizador;->access$10(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->sucursales:Z
    invoke-static {v7}, Lcl/santander/smartphone/localizador/Localizador;->access$19(Lcl/santander/smartphone/localizador/Localizador;)Z

    move-result v7

    iget-object v8, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cajeros:Z
    invoke-static {v8}, Lcl/santander/smartphone/localizador/Localizador;->access$20(Lcl/santander/smartphone/localizador/Localizador;)Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;ZZ)V

    invoke-static {v10, v0}, Lcl/santander/smartphone/localizador/Localizador;->access$21(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)V

    .line 295
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->setCanceledOnTouchOutside(Z)V

    .line 296
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->setAceptarRunnable(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->cfdp:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$13(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->show()V

    .line 299
    return-void

    .line 289
    .end local v6    # "tipo":Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$5;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->bt_ofertas:Landroid/widget/Button;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$7(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    sget-object v6, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    .restart local v6    # "tipo":Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    goto :goto_0

    .line 292
    .end local v6    # "tipo":Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    :cond_1
    sget-object v6, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    .restart local v6    # "tipo":Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    goto :goto_0
.end method
