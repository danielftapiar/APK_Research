.class Lcl/santander/smartphone/HomeRaiz$3;
.super Ljava/lang/Object;
.source "HomeRaiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeRaiz;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/HomeRaiz;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeRaiz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeRaiz$3;->this$0:Lcl/santander/smartphone/HomeRaiz;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const v5, 0x7f040002

    const v4, 0x7f040001

    const/4 v3, 0x0

    .line 169
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v2

    iput-boolean v3, v2, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    .line 170
    iget-object v2, p0, Lcl/santander/smartphone/HomeRaiz$3;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v2, v2, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragment;->setHasOptionsMenu(Z)V

    .line 172
    sget-boolean v2, Lcl/santander/smartphone/Global;->indicadores:Z

    if-nez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcl/santander/smartphone/HomeRaiz$3;->this$0:Lcl/santander/smartphone/HomeRaiz;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeRaiz;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 175
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 176
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v5, v4, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 177
    const v2, 0x7f060095

    new-instance v3, Lcl/santander/smartphone/HomeLogin;

    invoke-direct {v3}, Lcl/santander/smartphone/HomeLogin;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 178
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 181
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/HomeRaiz$3;->this$0:Lcl/santander/smartphone/HomeRaiz;

    iget-object v2, v2, Lcl/santander/smartphone/HomeRaiz;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragment;->setHasOptionsMenu(Z)V

    .line 182
    return-void
.end method
