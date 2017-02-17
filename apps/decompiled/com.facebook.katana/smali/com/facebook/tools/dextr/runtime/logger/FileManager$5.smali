.class Lcom/facebook/tools/dextr/runtime/logger/FileManager$5;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/FileManager$5;->a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 191
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/logger/FileManager$5;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
