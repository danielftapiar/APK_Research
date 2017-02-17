.class public Lcl/santander/smartphone/AdapterUltimosMovimientos;
.super Landroid/widget/ArrayAdapter;
.source "AdapterUltimosMovimientos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field movimientos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "_movAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    const v0, 0x7f030071

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->context:Landroid/content/Context;

    .line 25
    invoke-direct {p0, p2}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->categoriza(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private categoriza(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "movs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    const-string v3, ""

    .line 36
    .local v3, "month":Ljava/lang/String;
    const/4 v1, 0x0

    .line 37
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 53
    return-object v4

    .line 39
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .line 40
    .local v2, "item":Lcl/santander/santanderCL/data/response/ItemMovimiento;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v6

    invoke-static {v6}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v6

    add-int/lit16 v6, v6, 0x76c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 42
    new-instance v0, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v5

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-static {v7}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, 0x76c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SECCION:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    .line 42
    invoke-direct {v0, v5, v6, v7}, Lcl/santander/santanderCL/data/response/ItemMovimiento;-><init>(Ljava/util/Date;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;)V

    .line 45
    .local v0, "aux":Lcl/santander/santanderCL/data/response/ItemMovimiento;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    .line 49
    .end local v0    # "aux":Lcl/santander/santanderCL/data/response/ItemMovimiento;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .line 107
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
    invoke-virtual {p0, p1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getItem(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 59
    const/4 v2, 0x0

    .line 63
    .local v2, "wrapper":Lcl/santander/smartphone/UltimosMovimientosWrapper;
    iget-object v3, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SECCION:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030072

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    const v3, 0x7f06035a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "tv_month":Landroid/widget/TextView;
    iget-object v3, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v3, 0x7f060358

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    .local v0, "lroot":Landroid/widget/LinearLayout;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 90
    .end local v0    # "lroot":Landroid/widget/LinearLayout;
    .end local v1    # "tv_month":Landroid/widget/TextView;
    :goto_0
    return-object p2

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030071

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    invoke-virtual {p0}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    new-instance v2, Lcl/santander/smartphone/UltimosMovimientosWrapper;

    .end local v2    # "wrapper":Lcl/santander/smartphone/UltimosMovimientosWrapper;
    invoke-direct {v2, p2}, Lcl/santander/smartphone/UltimosMovimientosWrapper;-><init>(Landroid/view/View;)V

    .line 77
    .restart local v2    # "wrapper":Lcl/santander/smartphone/UltimosMovimientosWrapper;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2, v3}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->fillWrapper(Lcl/santander/santanderCL/data/response/ItemMovimiento;)V

    .line 84
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_1

    .line 85
    iget-object v3, v2, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    const v4, 0x7f0200d6

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, v2, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    const v4, 0x7f0200d7

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMovimientos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "_movAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    invoke-direct {p0, p1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->categoriza(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/AdapterUltimosMovimientos;->movimientos:Ljava/util/ArrayList;

    .line 31
    return-void
.end method
