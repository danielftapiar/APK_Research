.class Lcl/santander/smartphone/Cuenta$4;
.super Ljava/lang/Object;
.source "Cuenta.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Cuenta;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Cuenta;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Cuenta;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Cuenta$4;->this$0:Lcl/santander/smartphone/Cuenta;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    const/4 v1, 0x1

    sput-boolean v1, Lcl/santander/smartphone/Global;->m_bCallInitialWSPagoOnline:Z

    .line 144
    iget-object v1, p0, Lcl/santander/smartphone/Cuenta$4;->this$0:Lcl/santander/smartphone/Cuenta;

    iget-object v1, v1, Lcl/santander/smartphone/Cuenta;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 145
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcl/santander/smartphone/Cuenta$4;->this$0:Lcl/santander/smartphone/Cuenta;

    iget-object v1, v1, Lcl/santander/smartphone/Cuenta;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Cuenta$4;->this$0:Lcl/santander/smartphone/Cuenta;

    iget-object v2, v2, Lcl/santander/smartphone/Cuenta;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->setSelected(I)V

    .line 146
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/PagoOnline;

    iget-object v3, p0, Lcl/santander/smartphone/Cuenta$4;->this$0:Lcl/santander/smartphone/Cuenta;

    iget-object v3, v3, Lcl/santander/smartphone/Cuenta;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v2, v3}, Lcl/santander/smartphone/PagoOnline;-><init>(Lcl/santander/santanderCL/data/MatrizProductos;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    return-void
.end method
