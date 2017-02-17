.class public Lcom/facebook/tools/dextr/runtime/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)I
    .locals 2

    .prologue
    .line 35
    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/Bootstrap;->a(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0x439d5d2c

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    return v0
.end method

.method public static a(II)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 24
    return-void
.end method

.method public static a(Landroid/app/Application;I)V
    .locals 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/Bootstrap;->b(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_APPLICATION_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, -0x2caab9eb

    invoke-static {v0, v1, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 45
    return-void
.end method

.method public static b(II)V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_ACTIVITY_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 56
    return-void
.end method

.method public static c(II)V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 75
    return-void
.end method

.method public static d(II)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 86
    return-void
.end method

.method public static e(II)V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_FRAGMENT_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 97
    return-void
.end method

.method public static f(II)V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_VIEW_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 105
    return-void
.end method
