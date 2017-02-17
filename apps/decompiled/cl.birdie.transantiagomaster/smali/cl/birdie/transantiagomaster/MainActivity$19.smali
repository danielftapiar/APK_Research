.class final Lcl/birdie/transantiagomaster/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->doComplainObject(Lcl/birdie/transantiagomaster/MainActivity$RedSocial;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$19;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$19;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 2142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2159
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$19$2;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$19;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-direct {v1, p0, v2}, Lcl/birdie/transantiagomaster/MainActivity$19$2;-><init>(Lcl/birdie/transantiagomaster/MainActivity$19;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2167
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2146
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    new-instance v1, Lcl/birdie/transantiagomaster/MainActivity$19$1;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$19;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-direct {v1, p0, v2}, Lcl/birdie/transantiagomaster/MainActivity$19$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$19;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2155
    return-void
.end method
