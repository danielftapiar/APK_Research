.class final Lorg/acra/ErrorReporter$3;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lorg/acra/ReportingInteractionMode;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lorg/acra/ErrorReporter$3;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0xbb8

    const/4 v8, 0x0

    .line 684
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 685
    .local v0, "beforeWait":Landroid/text/format/Time;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 686
    .local v3, "currentTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 687
    invoke-virtual {v0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 688
    .local v1, "beforeWaitInMillis":J
    const-wide/16 v4, 0x0

    .line 689
    .local v4, "elapsedTimeInMillis":J
    :goto_0
    cmp-long v6, v4, v9

    if-gez v6, :cond_0

    .line 692
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 697
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    sub-long v4, v6, v1

    goto :goto_0

    .line 694
    :catch_0
    move-exception v6

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    goto :goto_1

    .line 699
    :cond_0
    invoke-static {}, Lorg/acra/ErrorReporter;->access$202$138603()Z

    .line 700
    return-void
.end method
