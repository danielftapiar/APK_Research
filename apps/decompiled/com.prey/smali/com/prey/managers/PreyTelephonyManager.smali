.class public Lcom/prey/managers/PreyTelephonyManager;
.super Ljava/lang/Object;
.source "PreyTelephonyManager.java"


# static fields
.field private static _instance:Lcom/prey/managers/PreyTelephonyManager;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/managers/PreyTelephonyManager;->_instance:Lcom/prey/managers/PreyTelephonyManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/prey/managers/PreyTelephonyManager;->ctx:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyTelephonyManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/prey/managers/PreyTelephonyManager;->_instance:Lcom/prey/managers/PreyTelephonyManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/prey/managers/PreyTelephonyManager;

    invoke-direct {v0, p0}, Lcom/prey/managers/PreyTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/managers/PreyTelephonyManager;->_instance:Lcom/prey/managers/PreyTelephonyManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/prey/managers/PreyTelephonyManager;->_instance:Lcom/prey/managers/PreyTelephonyManager;

    return-object v0
.end method


# virtual methods
.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/prey/PreyPhone;

    iget-object v1, p0, Lcom/prey/managers/PreyTelephonyManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/prey/PreyPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/prey/PreyPhone;

    iget-object v1, p0, Lcom/prey/managers/PreyTelephonyManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/prey/PreyPhone;->getSimState()I

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/prey/PreyPhone;

    iget-object v1, p0, Lcom/prey/managers/PreyTelephonyManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/prey/PreyPhone;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimStateAbsent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/prey/managers/PreyTelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimStateReady()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/prey/managers/PreyTelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
