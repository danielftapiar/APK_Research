.class public Lcl/santander/smartphone/PagoOnlineWrapper;
.super Ljava/lang/Object;
.source "PagoOnlineWrapper.java"


# instance fields
.field base:Landroid/view/View;

.field private tv_descripcion:Landroid/widget/TextView;

.field private tv_empresa:Landroid/widget/TextView;

.field private tv_title_descripcion:Landroid/widget/TextView;

.field private tv_title_empresa:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "_base"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_empresa:Landroid/widget/TextView;

    .line 15
    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_descripcion:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_empresa:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_descripcion:Landroid/widget/TextView;

    .line 21
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    .line 22
    return-void
.end method


# virtual methods
.method public getDescripcion()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_descripcion:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    const v1, 0x7f060284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_descripcion:Landroid/widget/TextView;

    .line 49
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_descripcion:Landroid/widget/TextView;

    return-object v0
.end method

.method public getEmpresa()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_empresa:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    const v1, 0x7f060283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_empresa:Landroid/widget/TextView;

    .line 42
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_empresa:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleDescripcion()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_descripcion:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    const v1, 0x7f060282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_descripcion:Landroid/widget/TextView;

    .line 35
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_descripcion:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleEmpresa()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_empresa:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->base:Landroid/view/View;

    const v1, 0x7f060281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_empresa:Landroid/widget/TextView;

    .line 28
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineWrapper;->tv_title_empresa:Landroid/widget/TextView;

    return-object v0
.end method
