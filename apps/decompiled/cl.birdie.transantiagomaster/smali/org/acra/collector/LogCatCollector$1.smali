.class final Lorg/acra/collector/LogCatCollector$1;
.super Ljava/lang/Object;
.source "LogCatCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/acra/collector/LogCatCollector$1;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lorg/acra/collector/LogCatCollector$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 109
    .local v1, "stderr":Ljava/io/InputStream;
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 110
    .local v0, "dummy":[B
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    .line 114
    .end local v0    # "dummy":[B
    .end local v1    # "stderr":Ljava/io/InputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method