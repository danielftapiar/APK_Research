.class public Lcl/santander/smartphone/MyTabListener;
.super Ljava/lang/Object;
.source "MyTabListener.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/actionbarsherlock/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private final mArgs:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/SherlockFragmentActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcl/santander/smartphone/MyTabListener;, "Lcl/santander/smartphone/MyTabListener<TT;>;"
    .local p3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcl/santander/smartphone/MyTabListener;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 29
    iput-object p2, p0, Lcl/santander/smartphone/MyTabListener;->mTag:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcl/santander/smartphone/MyTabListener;->mClass:Ljava/lang/Class;

    .line 31
    iput-object p4, p0, Lcl/santander/smartphone/MyTabListener;->mArgs:Landroid/os/Bundle;

    .line 32
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 80
    .local p0, "this":Lcl/santander/smartphone/MyTabListener;, "Lcl/santander/smartphone/MyTabListener<TT;>;"
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 37
    .local p0, "this":Lcl/santander/smartphone/MyTabListener;, "Lcl/santander/smartphone/MyTabListener<TT;>;"
    const/4 v2, 0x0

    sput-boolean v2, Lcl/santander/smartphone/Global;->indicadores:Z

    .line 39
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 40
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0b0057

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTheme(I)V

    .line 44
    :goto_0
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 46
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 48
    .local v1, "ftg":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    if-nez v2, :cond_1

    .line 50
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v3, p0, Lcl/santander/smartphone/MyTabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcl/santander/smartphone/MyTabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/app/SherlockFragment;

    iput-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 51
    const v2, 0x1020002

    iget-object v3, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    iget-object v4, p0, Lcl/santander/smartphone/MyTabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 60
    :goto_1
    return-void

    .line 42
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "ftg":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v3, 0x7f0b0066

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTheme(I)V

    goto :goto_0

    .line 55
    .restart local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .restart local v1    # "ftg":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 56
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 4
    .param p1, "tab"    # Lcom/actionbarsherlock/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 64
    .local p0, "this":Lcl/santander/smartphone/MyTabListener;, "Lcl/santander/smartphone/MyTabListener<TT;>;"
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 66
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 68
    .local v1, "ftg":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/SherlockFragment;->setHasOptionsMenu(Z)V

    .line 71
    iget-object v2, p0, Lcl/santander/smartphone/MyTabListener;->mFragment:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 72
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 74
    :cond_0
    return-void
.end method
