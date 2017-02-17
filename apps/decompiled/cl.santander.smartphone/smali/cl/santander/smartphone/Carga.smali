.class public Lcl/santander/smartphone/Carga;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "Carga.java"


# instance fields
.field final context:Landroid/content/Context;

.field private fmg:Landroid/support/v4/app/FragmentManager;

.field handler:Landroid/os/Handler;

.field private progreso:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 23
    iput-object p0, p0, Lcl/santander/smartphone/Carga;->context:Landroid/content/Context;

    .line 27
    new-instance v0, Lcl/santander/smartphone/Carga$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/Carga$1;-><init>(Lcl/santander/smartphone/Carga;)V

    iput-object v0, p0, Lcl/santander/smartphone/Carga;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/Carga;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcl/santander/smartphone/Carga;->progreso:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Carga;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcl/santander/smartphone/Carga;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 42
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Carga;->setContentView(I)V

    .line 44
    invoke-static {p0}, Lcl/santander/smartphone/Utils;->loadFonts(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Lcl/santander/smartphone/Carga;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Carga;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 50
    sput v1, Lcl/santander/smartphone/Global;->screenOrientation:I

    .line 54
    const-string v0, ""

    sput-object v0, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcl/santander/santanderCL/operations/Entorno;->getInstance()Lcl/santander/santanderCL/operations/Entorno;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$ENTORNO;->PRODUCCION:Lcl/santander/santanderCL/utils/Constant$ENTORNO;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/operations/Entorno;->setValue(Lcl/santander/santanderCL/utils/Constant$ENTORNO;)V

    .line 56
    const/4 v0, 0x0

    sput v0, Lcl/santander/smartphone/Utils;->HOCKEY:I

    .line 58
    sget v0, Lcl/santander/smartphone/Global;->screenOrientation:I

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Carga;->setRequestedOrientation(I)V

    .line 60
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Carga;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcl/santander/smartphone/Carga;->progreso:Landroid/widget/ProgressBar;

    .line 61
    iget-object v0, p0, Lcl/santander/smartphone/Carga;->progreso:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcl/santander/smartphone/Carga$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Carga$2;-><init>(Lcl/santander/smartphone/Carga;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method
