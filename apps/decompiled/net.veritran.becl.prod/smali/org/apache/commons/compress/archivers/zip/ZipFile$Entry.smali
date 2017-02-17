.class Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V
    .locals 0
    .param p1, "offset"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .prologue
    .line 1056
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    .line 1057
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 1058
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1072
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1074
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 1075
    .local v0, "otherEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->dataOffset:J
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1080
    .end local v0    # "otherEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :cond_0
    return v1
.end method

.method getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1066
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    # getter for: Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->headerOffset:J
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method
