.class Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;ZZ)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->c:Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;

    iput-boolean p2, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->a:Z

    iput-boolean p3, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->c:Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;

    iget-object v0, v0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->c:Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;

    iget-object v1, v1, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->d:Lcom/facebook/inject/FbInjector;

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->c:Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;

    iget-object v2, v2, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1;->e:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    iget-boolean v3, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->a:Z

    iget-boolean v4, p0, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder$1$1;->b:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a(Landroid/content/Context;Lcom/facebook/inject/FbInjector;Lcom/facebook/tools/dextr/runtime/logger/FileManager;ZZ)V

    .line 124
    return-void
.end method
