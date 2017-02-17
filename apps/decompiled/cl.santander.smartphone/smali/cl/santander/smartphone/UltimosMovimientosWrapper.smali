.class public Lcl/santander/smartphone/UltimosMovimientosWrapper;
.super Ljava/lang/Object;
.source "UltimosMovimientosWrapper.java"


# instance fields
.field base:Landroid/view/View;

.field private tv_cantidad:Landroid/widget/TextView;

.field private tv_concepto:Landroid/widget/TextView;

.field private tv_day:Landroid/widget/TextView;

.field private tv_month:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "_base"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_concepto:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_cantidad:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_month:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_day:Landroid/widget/TextView;

    .line 26
    iput-object p1, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    .line 27
    return-void
.end method


# virtual methods
.method public fillWrapper(Lcl/santander/santanderCL/data/response/ItemMovimiento;)V
    .locals 4
    .param p1, "mov"    # Lcl/santander/santanderCL/data/response/ItemMovimiento;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->getConcept()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->getQuantity()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->getDay()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->getMonth()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getFecha()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-static {v1}, Lcl/santander/smartphone/Utils;->getDisplayNameForMonth(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->getQuantity()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/UltimosMovimientosWrapper;->getQuantity()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public getConcept()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_concepto:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    const v1, 0x7f060356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_concepto:Landroid/widget/TextView;

    .line 33
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_concepto:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDay()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_day:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    const v1, 0x7f060355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_day:Landroid/widget/TextView;

    .line 54
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_day:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMonth()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_month:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    const v1, 0x7f060354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_month:Landroid/widget/TextView;

    .line 47
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_month:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuantity()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_cantidad:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->base:Landroid/view/View;

    const v1, 0x7f060357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_cantidad:Landroid/widget/TextView;

    .line 40
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/UltimosMovimientosWrapper;->tv_cantidad:Landroid/widget/TextView;

    return-object v0
.end method
