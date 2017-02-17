.class final Lorg/acra/ErrorReporter$2;
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
    .line 633
    iput-object p1, p0, Lorg/acra/ErrorReporter$2;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 643
    iget-object v0, p0, Lorg/acra/ErrorReporter$2;->this$0:Lorg/acra/ErrorReporter;

    # getter for: Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;
    invoke-static {v0}, Lorg/acra/ErrorReporter;->access$100(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v1

    invoke-static {v0, v1}, Lorg/acra/util/ToastSender;->sendToast$3047fd93(Landroid/content/Context;I)V

    .line 644
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 645
    return-void
.end method
