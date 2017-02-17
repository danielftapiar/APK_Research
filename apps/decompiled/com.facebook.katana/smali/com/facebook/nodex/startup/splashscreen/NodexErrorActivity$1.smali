.class Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;
.super Ljava/lang/Object;
.source "NodexErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;->a:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->UI_INPUT_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, -0x10dc991c

    invoke-static {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$1;->a:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;

    invoke-static {v1}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity;)V

    .line 76
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->UI_INPUT_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, -0x15aec313

    invoke-static {v1, v2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    return-void
.end method
