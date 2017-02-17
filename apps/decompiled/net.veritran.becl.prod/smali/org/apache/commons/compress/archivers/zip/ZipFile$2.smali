.class Lorg/apache/commons/compress/archivers/zip/ZipFile$2;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .prologue
    .line 1029
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1029
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->compare(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)I
    .locals 8
    .param p1, "e1"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "e2"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .prologue
    .line 1031
    if-ne p1, p2, :cond_0

    .line 1032
    const/4 v4, 0x0

    .line 1045
    .end local p1    # "e1":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local p2    # "e2":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :goto_0
    return v4

    .line 1035
    .restart local p1    # "e1":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local p2    # "e2":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    instance-of v4, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-eqz v4, :cond_1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .end local p1    # "e1":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v0, p1

    .line 1036
    .local v0, "ent1":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :goto_1
    instance-of v4, p2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-eqz v4, :cond_2

    check-cast p2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .end local p2    # "e2":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v1, p2

    .line 1037
    .local v1, "ent2":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :goto_2
    if-nez v0, :cond_3

    .line 1038
    const/4 v4, 0x1

    goto :goto_0

    .line 1035
    .end local v0    # "ent1":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .end local v1    # "ent2":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .restart local p1    # "e1":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local p2    # "e2":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1036
    .end local p1    # "e1":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v0    # "ent1":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1040
    .end local p2    # "e2":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v1    # "ent2":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :cond_3
    if-nez v1, :cond_4

    .line 1041
    const/4 v4, -0x1

    goto :goto_0

    .line 1043
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v4

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v6

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 1045
    .local v2, "val":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    const/4 v4, -0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_0
.end method
