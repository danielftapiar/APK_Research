.class Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;
.super Ljava/lang/Throwable;
.source "ErrorReporter.java"


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/ErrorReporter;


# direct methods
.method private constructor <init>(Lcom/facebook/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;->this$0:Lcom/facebook/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/ErrorReporter$1;)V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    return-void
.end method
