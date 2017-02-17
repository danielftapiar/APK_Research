.class public Lcom/facebook/tools/dextr/runtime/detour/AdapterDetour;
.super Ljava/lang/Object;
.source "AdapterDetour.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/BaseAdapter;I)V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ADAPTER_NOTIFY:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    .line 14
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    return-void
.end method

.method public static b(Landroid/widget/BaseAdapter;I)V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->ADAPTER_NOTIFY:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    .line 18
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 19
    return-void
.end method
