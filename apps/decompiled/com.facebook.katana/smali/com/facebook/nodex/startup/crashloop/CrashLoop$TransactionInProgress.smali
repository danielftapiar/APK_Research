.class public Lcom/facebook/nodex/startup/crashloop/CrashLoop$TransactionInProgress;
.super Landroid/content/BroadcastReceiver;
.source "CrashLoop.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassBroadcastReceiver.SecureBroadcastReceiver"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, 0x57b18a5f

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 107
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->LIFECYCLE_BROADCAST_RECEIVER_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, -0x27d767d4

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method
