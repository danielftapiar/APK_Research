.class Lcl/santander/smartphone/LineaCredito$2;
.super Ljava/lang/Object;
.source "LineaCredito.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/LineaCredito;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/LineaCredito;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/LineaCredito;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/LineaCredito$2;->this$0:Lcl/santander/smartphone/LineaCredito;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v1, p0, Lcl/santander/smartphone/LineaCredito$2;->this$0:Lcl/santander/smartphone/LineaCredito;

    iget-object v1, v1, Lcl/santander/smartphone/LineaCredito;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 116
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/LineaCreditoResumen;

    iget-object v3, p0, Lcl/santander/smartphone/LineaCredito$2;->this$0:Lcl/santander/smartphone/LineaCredito;

    iget-object v3, v3, Lcl/santander/smartphone/LineaCredito;->lineas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v4, p0, Lcl/santander/smartphone/LineaCredito$2;->this$0:Lcl/santander/smartphone/LineaCredito;

    iget-object v4, v4, Lcl/santander/smartphone/LineaCredito;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcl/santander/smartphone/LineaCreditoResumen;-><init>(Lcl/santander/santanderCL/data/MatrizProductos;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 119
    return-void
.end method
