.class final Lcl/birdie/transantiagomaster/MainActivity$36$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$36;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$36;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$36;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->this$1:Lcl/birdie/transantiagomaster/MainActivity$36;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 3107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3118
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    .line 3119
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 3120
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3111
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    .line 3112
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    .line 3113
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36$2;->this$1:Lcl/birdie/transantiagomaster/MainActivity$36;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/MainActivity$36;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-static {v0}, Lcl/birdie/transantiagomaster/MainActivity;->access$6(Lcl/birdie/transantiagomaster/MainActivity;)V

    .line 3114
    return-void
.end method
