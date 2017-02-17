.class public Lcl/santander/smartphone/SeleccionaEntorno;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "SeleccionaEntorno.java"


# instance fields
.field private bt_desarrollo:Landroid/widget/Button;

.field private bt_produccion:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public initComponents()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f0602da

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SeleccionaEntorno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/SeleccionaEntorno;->bt_desarrollo:Landroid/widget/Button;

    .line 37
    const v0, 0x7f0602db

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SeleccionaEntorno;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/SeleccionaEntorno;->bt_produccion:Landroid/widget/Button;

    .line 38
    const-string v0, ""

    sput-object v0, Lcl/santander/smartphone/Global;->instancia:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcl/santander/smartphone/SeleccionaEntorno;->bt_desarrollo:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/SeleccionaEntorno$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/SeleccionaEntorno$1;-><init>(Lcl/santander/smartphone/SeleccionaEntorno;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcl/santander/smartphone/SeleccionaEntorno;->bt_produccion:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/SeleccionaEntorno$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/SeleccionaEntorno$2;-><init>(Lcl/santander/smartphone/SeleccionaEntorno;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/SeleccionaEntorno;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcl/santander/smartphone/SeleccionaEntorno;->initComponents()V

    .line 32
    return-void
.end method
