.class public Lcom/prey/managers/PreyWindowsManager;
.super Ljava/lang/Object;
.source "PreyWindowsManager.java"


# static fields
.field private static _instance:Lcom/prey/managers/PreyWindowsManager;


# instance fields
.field private height:I

.field private width:I

.field private window:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/managers/PreyWindowsManager;->_instance:Lcom/prey/managers/PreyWindowsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prey/managers/PreyWindowsManager;->window:Landroid/view/WindowManager;

    .line 19
    iput v2, p0, Lcom/prey/managers/PreyWindowsManager;->width:I

    .line 20
    iput v2, p0, Lcom/prey/managers/PreyWindowsManager;->height:I

    .line 29
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/prey/managers/PreyWindowsManager;->window:Landroid/view/WindowManager;

    .line 30
    iget-object v1, p0, Lcom/prey/managers/PreyWindowsManager;->window:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 31
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/prey/managers/PreyWindowsManager;->width:I

    .line 32
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/prey/managers/PreyWindowsManager;->height:I

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWindowsManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/prey/managers/PreyWindowsManager;->_instance:Lcom/prey/managers/PreyWindowsManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/prey/managers/PreyWindowsManager;

    invoke-direct {v0, p0}, Lcom/prey/managers/PreyWindowsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/managers/PreyWindowsManager;->_instance:Lcom/prey/managers/PreyWindowsManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/prey/managers/PreyWindowsManager;->_instance:Lcom/prey/managers/PreyWindowsManager;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/prey/managers/PreyWindowsManager;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/prey/managers/PreyWindowsManager;->width:I

    return v0
.end method
