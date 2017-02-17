.class public Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;
.super Ljava/lang/Object;
.source "RunnableWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;II)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->a:Ljava/lang/Runnable;

    .line 16
    iput p2, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->c:I

    .line 17
    iput p3, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->CALL_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v1, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->c:I

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    move-result v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v2, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    invoke-static {v0, v2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->CALL_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    iget v3, p0, Lcom/facebook/tools/dextr/runtime/detour/RunnableWrapper;->b:I

    invoke-static {v2, v3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    throw v0
.end method
