.class public Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;
.super Ljava/lang/Object;
.source "MenuItemMule.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final ERROR:Ljava/lang/String; = "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."


# instance fields
.field private final mItem:Lcom/actionbarsherlock/view/MenuItem;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 22
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupId()I
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrder()I
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/ActionProvider;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # C

    .prologue
    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # C

    .prologue
    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # C
    .param p2, "arg1"    # C

    .prologue
    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap()Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuItemMule;->mItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method
