.class Lcl/santander/smartphone/RealizarPagoOnline$1;
.super Ljava/lang/Object;
.source "RealizarPagoOnline.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/RealizarPagoOnline;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/RealizarPagoOnline;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/RealizarPagoOnline;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/RealizarPagoOnline$1;->this$0:Lcl/santander/smartphone/RealizarPagoOnline;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline$1;->this$0:Lcl/santander/smartphone/RealizarPagoOnline;

    iget-object v1, v1, Lcl/santander/smartphone/RealizarPagoOnline;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 128
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/PagoOnlineConfirm;

    iget-object v3, p0, Lcl/santander/smartphone/RealizarPagoOnline$1;->this$0:Lcl/santander/smartphone/RealizarPagoOnline;

    iget-object v3, v3, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    iget-object v4, p0, Lcl/santander/smartphone/RealizarPagoOnline$1;->this$0:Lcl/santander/smartphone/RealizarPagoOnline;

    iget-object v4, v4, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    iget-object v5, p0, Lcl/santander/smartphone/RealizarPagoOnline$1;->this$0:Lcl/santander/smartphone/RealizarPagoOnline;

    iget-object v5, v5, Lcl/santander/smartphone/RealizarPagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v6, p0, Lcl/santander/smartphone/RealizarPagoOnline$1;->this$0:Lcl/santander/smartphone/RealizarPagoOnline;

    iget-object v6, v6, Lcl/santander/smartphone/RealizarPagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcl/santander/smartphone/PagoOnlineConfirm;-><init>(Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Lcl/santander/santanderCL/data/response/ItemProducto;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 130
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 131
    return-void
.end method
