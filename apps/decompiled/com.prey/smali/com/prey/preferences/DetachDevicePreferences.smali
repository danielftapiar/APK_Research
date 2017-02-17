.class public Lcom/prey/preferences/DetachDevicePreferences;
.super Landroid/preference/DialogPreference;
.source "DetachDevicePreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;
    }
.end annotation


# instance fields
.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences;->ctx:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/prey/preferences/DetachDevicePreferences;->ctx:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/preferences/DetachDevicePreferences;->ctx:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/prey/preferences/DetachDevicePreferences;->ctx:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/prey/preferences/DetachDevicePreferences;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/preferences/DetachDevicePreferences;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/prey/preferences/DetachDevicePreferences;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 46
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 48
    new-instance v0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;

    invoke-direct {v0, p0}, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;-><init>(Lcom/prey/preferences/DetachDevicePreferences;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;

    invoke-direct {v0, p0}, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;-><init>(Lcom/prey/preferences/DetachDevicePreferences;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/prey/preferences/DetachDevicePreferences$DetachDevice;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
