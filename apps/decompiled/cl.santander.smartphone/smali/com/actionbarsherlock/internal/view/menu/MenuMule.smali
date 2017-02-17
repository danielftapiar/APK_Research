.class public Lcom/actionbarsherlock/internal/view/menu/MenuMule;
.super Ljava/lang/Object;
.source "MenuMule.java"

# interfaces
.implements Landroid/view/Menu;


# static fields
.field private static final ERROR:Ljava/lang/String; = "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."


# instance fields
.field public mDispatchShow:Z

.field private final mMenu:Lcom/actionbarsherlock/view/Menu;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->mDispatchShow:Z

    .line 21
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->mMenu:Lcom/actionbarsherlock/view/Menu;

    .line 22
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Landroid/content/ComponentName;
    .param p5, "arg4"    # [Landroid/content/Intent;
    .param p6, "arg5"    # Landroid/content/Intent;
    .param p7, "arg6"    # I
    .param p8, "arg7"    # [Landroid/view/MenuItem;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->mMenu:Lcom/actionbarsherlock/view/Menu;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performIdentifierAction(II)Z
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;
    .param p3, "arg2"    # I

    .prologue
    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGroup(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z

    .prologue
    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupEnabled(IZ)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Z

    .prologue
    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupVisible(IZ)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Z

    .prologue
    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQwertyMode(Z)V
    .locals 2
    .param p1, "arg0"    # Z

    .prologue
    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with object designed for temporary instance passing. Make sure you using both SherlockFragmentActivity and SherlockFragment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrap()Lcom/actionbarsherlock/view/Menu;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/MenuMule;->mMenu:Lcom/actionbarsherlock/view/Menu;

    return-object v0
.end method
