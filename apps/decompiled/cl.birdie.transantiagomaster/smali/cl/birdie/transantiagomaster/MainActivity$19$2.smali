.class final Lcl/birdie/transantiagomaster/MainActivity$19$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity$19;->onError(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

.field private final synthetic val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity$19;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$19$2;->this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$19$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 2159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2163
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19$2;->val$caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const-string v1, "complaint"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 2164
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$19$2;->this$1:Lcl/birdie/transantiagomaster/MainActivity$19;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/MainActivity$19;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const-string v1, "TSM"

    const-string v2, "Reclamos"

    const-string v3, "error"

    invoke-virtual {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onTrackEvent$78a4d591(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    return-void
.end method
