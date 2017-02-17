.class Lcl/santander/smartphone/Transferencias$5;
.super Ljava/lang/Object;
.source "Transferencias.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Transferencias;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Transferencias;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Transferencias;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 291
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 285
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    iget v0, v0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    iget-object v1, v1, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    iget-object v2, v2, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v3, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    iget-object v3, v3, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v4, p0, Lcl/santander/smartphone/Transferencias$5;->this$0:Lcl/santander/smartphone/Transferencias;

    # getter for: Lcl/santander/smartphone/Transferencias;->tipoOrigen:I
    invoke-static {v4}, Lcl/santander/smartphone/Transferencias;->access$0(Lcl/santander/smartphone/Transferencias;)I

    move-result v4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcl/santander/smartphone/TransferEntremisproductos;->setProductosDestino(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/MatrizProductos;II)V

    .line 279
    :cond_0
    return-void
.end method
