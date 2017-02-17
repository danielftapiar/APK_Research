.class public Lcl/santander/smartphone/CustomUltimosDestinatarios;
.super Landroid/app/Dialog;
.source "CustomUltimosDestinatarios.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;,
        Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;
    }
.end annotation


# instance fields
.field private cancelable:Z

.field private ctx:Landroid/content/Context;

.field public fpd:Lcl/santander/smartphone/CustomUltimosDestinatarios;

.field private itemClick:Ljava/lang/Runnable;

.field private lv_lista_ultimos:Landroid/widget/ListView;

.field private selected:Lcl/santander/santanderCL/data/response/ItemUltTransf;

.field private ultimas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemUltTransf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemUltTransf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p3, "ultimas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemUltTransf;>;"
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->requestWindowFeature(I)Z

    .line 53
    const v0, 0x7f030070

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->setContentView(I)V

    .line 54
    iput-object p1, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->ctx:Landroid/content/Context;

    .line 55
    iput-object p0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->fpd:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    .line 56
    iput-object p3, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06008d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->initComponents()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/CustomUltimosDestinatarios;Lcl/santander/santanderCL/data/response/ItemUltTransf;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->selected:Lcl/santander/santanderCL/data/response/ItemUltTransf;

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->itemClick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 69
    const v0, 0x7f060352

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->lv_lista_ultimos:Landroid/widget/ListView;

    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->lv_lista_ultimos:Landroid/widget/ListView;

    new-instance v1, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;

    iget-object v2, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->ctx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/CustomUltimosDestinatarios$myAdapterUltimos;-><init>(Lcl/santander/smartphone/CustomUltimosDestinatarios;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->lv_lista_ultimos:Landroid/widget/ListView;

    new-instance v1, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;-><init>(Lcl/santander/smartphone/CustomUltimosDestinatarios;Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getItemSelected()Lcl/santander/santanderCL/data/response/ItemUltTransf;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->selected:Lcl/santander/santanderCL/data/response/ItemUltTransf;

    return-object v0
.end method

.method public setRunnableOnItemSelection(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 166
    iput-object p1, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios;->itemClick:Ljava/lang/Runnable;

    .line 167
    return-void
.end method
