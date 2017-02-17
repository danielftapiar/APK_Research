.class Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;
.super Ljava/lang/Object;
.source "CustomFiltrosPoiDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;-><init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 137
    const v1, 0x7f0601ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 138
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$0(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v1

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$0(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    move-result-object v1

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    :cond_0
    const/4 v1, 0x2

    if-ge p3, v1, :cond_4

    .line 142
    if-nez p3, :cond_2

    .line 144
    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$1(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$2(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Z)V

    .line 145
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$1(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    :goto_1
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    invoke-static {v1, v3}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$6(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Z)V

    .line 180
    return-void

    :cond_1
    move v1, v3

    .line 144
    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z
    invoke-static {v4}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$3(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v1, v2}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$4(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Z)V

    .line 150
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$3(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 149
    goto :goto_2

    .line 155
    :cond_4
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, p3, -0x2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v4, p3, -0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_3
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p3, -0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 158
    :cond_5
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p3, -0x2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 166
    :cond_6
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, p3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    :goto_4
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 169
    :cond_7
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;->this$0:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    # getter for: Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method
