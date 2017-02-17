.class final Lcom/facebook/tools/dextr/runtime/detour/SQLiteDetour$1;
.super Ljava/lang/ThreadLocal;
.source "SQLiteDetour.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/detour/SQLiteDetour$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
