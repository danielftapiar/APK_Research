.class public Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;
.super Ljava/lang/Object;
.source "CallableWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->a:Ljava/util/concurrent/Callable;

    .line 18
    iput p2, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->c:I

    .line 19
    iput p3, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->CALL_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->b:I

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->c:I

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    move-result v1

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 28
    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v3, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->b:I

    invoke-static {v2, v3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v3, p0, Lcom/facebook/tools/dextr/runtime/detour/CallableWrapper;->b:I

    invoke-static {v2, v3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    throw v0
.end method
