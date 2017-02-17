.class final Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionStatusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;B)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;-><init>(Lcl/birdie/transantiagomaster/MainActivity;)V

    return-void
.end method


# virtual methods
.method public final call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 340
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$SessionStatusCallback;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    # invokes: Lcl/birdie/transantiagomaster/MainActivity;->onSessionStateChange$2514babc(Lcom/facebook/Session;Lcom/facebook/SessionState;)V
    invoke-static {v0, p1, p2}, Lcl/birdie/transantiagomaster/MainActivity;->access$0$6407a2a7(Lcl/birdie/transantiagomaster/MainActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;)V

    .line 342
    return-void
.end method
