.class final Lcom/facebook/common/dextricks/DexLibLoader$1;
.super Ljava/lang/Object;
.source "DexLibLoader.java"

# interfaces
.implements Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexLibLoader$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibLoader$1;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
