.class public Lcom/facebook/tools/dextr/runtime/detour/BlueServiceOperationFactoryDetour;
.super Ljava/lang/Object;
.source "BlueServiceOperationFactoryDetour.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p3, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 26
    invoke-interface {p0, p1, p2}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/common/callercontext/CallerContext;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p4, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 56
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/common/callercontext/CallerContext;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p4, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 41
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;Lcom/facebook/common/callercontext/CallerContext;I)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p5, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 72
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/fbservice/ops/BlueServiceOperationFactory;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/fbservice/ops/ErrorPropagation;Lcom/facebook/common/callercontext/CallerContext;)Lcom/facebook/fbservice/ops/BlueServiceOperationFactory$Operation;

    move-result-object v0

    return-object v0
.end method
