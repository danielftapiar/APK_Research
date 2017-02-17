.class public Lcom/actionbarsherlock/app/SherlockDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SherlockDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SherlockDialogFragment"


# instance fields
.field private mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/actionbarsherlock/app/SherlockDialogFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SherlockDialogFragment must be attached to a SherlockFragmentActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 27
    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iput-object v0, p0, Lcom/actionbarsherlock/app/SherlockDialogFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 36
    instance-of v1, p1, Lcom/actionbarsherlock/internal/view/menu/MenuMule;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;

    .line 38
    .local v0, "mule":Lcom/actionbarsherlock/internal/view/menu/MenuMule;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->mDispatchShow:Z

    .line 39
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->unwrap()Lcom/actionbarsherlock/view/Menu;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/app/SherlockDialogFragment;->mActivity:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 41
    .end local v0    # "mule":Lcom/actionbarsherlock/internal/view/menu/MenuMule;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 45
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 66
    instance-of v0, p1, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;

    .end local p1    # "item":Landroid/view/MenuItem;
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->unwrap()Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .restart local p1    # "item":Landroid/view/MenuItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 51
    instance-of v1, p1, Lcom/actionbarsherlock/internal/view/menu/MenuMule;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;

    .line 53
    .local v0, "mule":Lcom/actionbarsherlock/internal/view/menu/MenuMule;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->mDispatchShow:Z

    .line 54
    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->unwrap()Lcom/actionbarsherlock/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 56
    .end local v0    # "mule":Lcom/actionbarsherlock/internal/view/menu/MenuMule;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 60
    return-void
.end method
