.class public Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;
.super Landroid/app/Dialog;
.source "CustomFiltrosPoiDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;,
        Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;
    }
.end annotation


# instance fields
.field private bt_aceptar:Landroid/widget/Button;

.field private cajeros:Z

.field private cancelable:Z

.field private cat_marcadas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private categorias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCategoria;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Landroid/content/Context;

.field public fpd:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

.field private lv_lista_filtros:Landroid/widget/ListView;

.field private modificacion:Z

.field private runnable:Ljava/lang/Runnable;

.field private sucursales:Z

.field private tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .param p7, "sucursales"    # Z
    .param p8, "cajeros"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/content/DialogInterface$OnCancelListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCategoria;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "categorias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemCategoria;>;"
    .local p5, "marcadas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->requestWindowFeature(I)Z

    .line 49
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->setContentView(I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->modificacion:Z

    .line 51
    iput-boolean p7, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z

    .line 52
    iput-boolean p8, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z

    .line 53
    iput-object p6, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    .line 54
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->ctx:Landroid/content/Context;

    .line 55
    iput-object p0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->fpd:Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;

    .line 56
    if-eqz p4, :cond_1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    .line 60
    :goto_0
    if-eqz p5, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06008d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->initComponents()V

    .line 68
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z

    return v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z

    return-void
.end method

.method static synthetic access$3(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z

    return v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z

    return-void
.end method

.method static synthetic access$5(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Z)V
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->modificacion:Z

    return-void
.end method

.method static synthetic access$7(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initComponents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 90
    const v1, 0x7f06008f

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->lv_lista_filtros:Landroid/widget/ListView;

    .line 91
    const v1, 0x7f060087

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tv_title:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 102
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->TODOS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    new-instance v2, Lcl/santander/santanderCL/data/response/ItemCategoria;

    const-string v3, "-1"

    const-string v4, "Sucursales"

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/ItemCategoria;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    new-instance v2, Lcl/santander/santanderCL/data/response/ItemCategoria;

    const-string v3, "-1"

    const-string v4, "Cajeros"

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/ItemCategoria;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 114
    :cond_1
    :goto_1
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->lv_lista_filtros:Landroid/widget/ListView;

    new-instance v2, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;

    iget-object v3, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->ctx:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myAdapterFiltros;-><init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->lv_lista_filtros:Landroid/widget/ListView;

    new-instance v2, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;-><init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$myItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    const v1, 0x7f060090

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->bt_aceptar:Landroid/widget/Button;

    .line 118
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->bt_aceptar:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog$1;-><init>(Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void

    .line 98
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->tipo:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->SUCURSALES_CAJEROS:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 110
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    new-instance v2, Lcl/santander/santanderCL/data/response/ItemCategoria;

    const-string v3, "-"

    const-string v4, "Sucursales"

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/ItemCategoria;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->categorias:Ljava/util/ArrayList;

    new-instance v2, Lcl/santander/santanderCL/data/response/ItemCategoria;

    const-string v3, "-1"

    const-string v4, "Cajeros"

    invoke-direct {v2, v3, v4}, Lcl/santander/santanderCL/data/response/ItemCategoria;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public getMarcadas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cat_marcadas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCajeros()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->cajeros:Z

    return v0
.end method

.method public isModificado()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->modificacion:Z

    return v0
.end method

.method public isSucursales()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->sucursales:Z

    return v0
.end method

.method public setAceptarRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 271
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomFiltrosPoiDialog;->runnable:Ljava/lang/Runnable;

    .line 272
    return-void
.end method
