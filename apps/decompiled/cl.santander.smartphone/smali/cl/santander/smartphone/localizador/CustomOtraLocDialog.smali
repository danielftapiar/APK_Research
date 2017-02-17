.class public Lcl/santander/smartphone/localizador/CustomOtraLocDialog;
.super Landroid/app/Dialog;
.source "CustomOtraLocDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/localizador/CustomOtraLocDialog$AsyncLoc;,
        Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private bt_buscar:Landroid/widget/Button;

.field private bt_cancelar:Landroid/widget/Button;

.field private cancelable:Z

.field private ctx:Landroid/content/Context;

.field private et_loc:Landroid/widget/EditText;

.field private itemClick:Ljava/lang/Runnable;

.field private ll_pb:Landroid/widget/LinearLayout;

.field private lv_otra_loc:Landroid/widget/ListView;

.field public old:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

.field private pb:Landroid/widget/ProgressBar;

.field private selected:Landroid/location/Address;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->requestWindowFeature(I)Z

    .line 54
    const v0, 0x7f03004c

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->setContentView(I)V

    .line 55
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;

    .line 56
    iput-object p0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->old:Lcl/santander/smartphone/localizador/CustomOtraLocDialog;

    .line 60
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060086

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 62
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->initComponents()V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ll_pb:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->et_loc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->bt_buscar:Landroid/widget/Button;

    return-object v0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f06022f

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->pb:Landroid/widget/ProgressBar;

    .line 70
    const v0, 0x7f06022e

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ll_pb:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->ll_pb:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    const v0, 0x7f06022c

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->bt_cancelar:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->bt_cancelar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$1;-><init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f06022d

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->bt_buscar:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->bt_buscar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$2;-><init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f06022a

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->tv_title:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f06022b

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->et_loc:Landroid/widget/EditText;

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->et_loc:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$3;-><init>(Lcl/santander/smartphone/localizador/CustomOtraLocDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 138
    const v0, 0x7f060230

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;

    .line 139
    return-void
.end method


# virtual methods
.method public getAddressSelected()Landroid/location/Address;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->selected:Landroid/location/Address;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
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
    .line 217
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->lv_otra_loc:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;

    invoke-virtual {v0, p3}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog$myLocsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->selected:Landroid/location/Address;

    .line 219
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->itemClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->itemClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->dismiss()V

    .line 223
    return-void
.end method

.method public setRunnableOnItemSelection(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 197
    iput-object p1, p0, Lcl/santander/smartphone/localizador/CustomOtraLocDialog;->itemClick:Ljava/lang/Runnable;

    .line 198
    return-void
.end method
