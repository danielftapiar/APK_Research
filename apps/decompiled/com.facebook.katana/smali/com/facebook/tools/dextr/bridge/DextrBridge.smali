.class public Lcom/facebook/tools/dextr/bridge/DextrBridge;
.super Ljava/lang/Object;
.source "DextrBridge.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private static c:Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Lcom/facebook/tools/dextr/bridge/DextrBridge$1;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/bridge/DextrBridge$1;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static a(Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;)V
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->c:Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;

    .line 68
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    return-void
.end method

.method public static c()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic d()Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/facebook/tools/dextr/bridge/DextrBridge;->c:Lcom/facebook/tools/dextr/bridge/DextrBridge$PreferenceChangeListener;

    return-object v0
.end method
