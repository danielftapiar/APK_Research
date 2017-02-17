.class Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;
.super Landroid/widget/ArrayAdapter;
.source "CustomFiltrosPoiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myAdapterFiltros"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;


# direct methods
.method public constructor <init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    .line 191
    const v0, 0x7f030043

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 193
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$7(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$7(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcl/santander/santanderCL/data/response/ItemCategoria;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$7(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$7(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemCategoria;

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->getItem(I)Lcl/santander/santanderCL/data/response/ItemCategoria;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    if-nez p2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 207
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    :cond_0
    const v1, 0x7f0601ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 213
    .local v0, "cb_filtro":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$7(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemCategoria;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemCategoria;->getNombre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 215
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 217
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$0(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$0(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 219
    :cond_1
    const/4 v1, 0x2

    if-ge p1, v1, :cond_4

    .line 221
    if-nez p1, :cond_3

    .line 222
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$1(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    :cond_2
    :goto_0
    return-object p2

    .line 224
    :cond_3
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$3(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 230
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 232
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 237
    :cond_6
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 239
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 241
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
