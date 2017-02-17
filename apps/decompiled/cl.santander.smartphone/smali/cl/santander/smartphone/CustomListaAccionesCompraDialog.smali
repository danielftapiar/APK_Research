.class public Lcl/santander/smartphone/CustomListaAccionesCompraDialog;
.super Landroid/app/Dialog;
.source "CustomListaAccionesCompraDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;
    }
.end annotation


# instance fields
.field private acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cancelable:Z

.field private ctx:Landroid/content/Context;

.field private et_buscar:Landroid/widget/EditText;

.field private intItemSelected:I

.field private itemSelected:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

.field public lacd:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

.field private lv_lista_acciones:Landroid/widget/ListView;

.field private run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lcl/santander/santanderCL/data/MatrizAccionesCompra;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "acciones"    # Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->requestWindowFeature(I)Z

    .line 51
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->setContentView(I)V

    .line 53
    iput-object p1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->ctx:Landroid/content/Context;

    .line 54
    iput-object p0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->lacd:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    .line 55
    iput-object p4, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    .line 57
    invoke-virtual {p0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601eb

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 61
    invoke-direct {p0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->initComponents()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Lcl/santander/santanderCL/data/MatrizAccionesCompra;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    return-object v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;Lcl/santander/santanderCL/data/response/ItemAccionCompra;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->itemSelected:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    return-void
.end method

.method static synthetic access$3(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->intItemSelected:I

    return-void
.end method

.method static synthetic access$4(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->run:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initComponents()V
    .locals 5

    .prologue
    .line 91
    const v0, 0x7f0601ee

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->lv_lista_acciones:Landroid/widget/ListView;

    .line 92
    const v0, 0x7f0601ed

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->et_buscar:Landroid/widget/EditText;

    .line 94
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->ctx:Landroid/content/Context;

    const v2, 0x7f030064

    const v3, 0x7f060073

    iget-object v4, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->acciones:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    invoke-direct {p0, v4}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->pasarAarray(Lcl/santander/santanderCL/data/MatrizAccionesCompra;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->adapter:Landroid/widget/ArrayAdapter;

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->lv_lista_acciones:Landroid/widget/ListView;

    iget-object v1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->lv_lista_acciones:Landroid/widget/ListView;

    new-instance v1, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;-><init>(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;Lcl/santander/smartphone/CustomListaAccionesCompraDialog$myItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->et_buscar:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog$1;-><init>(Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    return-void
.end method

.method private pasarAarray(Lcl/santander/santanderCL/data/MatrizAccionesCompra;)[Ljava/lang/String;
    .locals 4
    .param p1, "matriz"    # Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/MatrizAccionesCompra;->getAccionesCompra()Ljava/util/ArrayList;

    move-result-object v1

    .line 76
    .local v1, "aux":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemAccionCompra;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 78
    .local v0, "array":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 83
    return-object v0

    .line 80
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIndexItemSelected()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->intItemSelected:I

    return v0
.end method

.method public getItemSelected()Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->itemSelected:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    return-object v0
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 121
    iput-object p1, p0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->run:Ljava/lang/Runnable;

    .line 122
    return-void
.end method
