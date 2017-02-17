.class final Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$1;
.super Ljava/lang/Object;
.source "SocialLoginDialogFragment.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 207
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    invoke-static {v0, p2}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->access$0$1b994b90(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;Lcom/facebook/SessionState;)V

    .line 209
    return-void
.end method
