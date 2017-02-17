.class Lcl/santander/smartphone/Cuenta$3;
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
    iput-object p1, p0, Lcl/santander/smartphone/Cuenta$3;->this$0:Lcl/santander/smartphone/Cuenta;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v1, p0, Lcl/santander/smartphone/Cuenta$3;->this$0:Lcl/santander/smartphone/Cuenta;

    iget-object v1, v1, Lcl/santander/smartphone/Cuenta;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 133
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/Transferencias;

    const/4 v3, 0x0

    iget-object v4, p0, Lcl/santander/smartphone/Cuenta$3;->this$0:Lcl/santander/smartphone/Cuenta;

    iget-object v4, v4, Lcl/santander/smartphone/Cuenta;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcl/santander/smartphone/Transferencias;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 135
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 136
    return-void
.end method
