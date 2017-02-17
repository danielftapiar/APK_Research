.class Lcom/facebook/common/dextricks/DexLibPaths;
.super Ljava/lang/Object;
.source "DexLibPaths.java"


# instance fields
.field private final a:Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;


# direct methods
.method constructor <init>(Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexLibPaths;->a:Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;

    .line 24
    return-void
.end method


# virtual methods
.method final a()Ljava/io/File;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibPaths;->a:Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;

    const-string v1, "secondary_program_dex"

    invoke-interface {v0, v1}, Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/io/File;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexLibPaths;->a:Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;

    const-string v1, "secondary_program_dex_opt"

    invoke-interface {v0, v1}, Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
