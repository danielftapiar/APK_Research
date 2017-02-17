.class final Lcl/birdie/transantiagomaster/MainActivity$36;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/facebook/IFBCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onCreatePost(Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field private final synthetic val$comentario:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$comentario:Ljava/lang/String;

    iput-object p4, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 3084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3127
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 3129
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3088
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3089
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$comentario:Ljava/lang/String;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$url:Ljava/lang/String;

    .line 3090
    new-instance v3, Lcl/birdie/transantiagomaster/MainActivity$36$1;

    iget-object v4, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-direct {v3, p0, v4}, Lcl/birdie/transantiagomaster/MainActivity$36$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$36;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 3089
    invoke-static {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/MainActivity;->access$11(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    .line 3123
    :goto_0
    return-void

    .line 3107
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$comentario:Ljava/lang/String;

    new-instance v2, Lcl/birdie/transantiagomaster/MainActivity$36$2;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$36;->val$callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-direct {v2, p0, v3}, Lcl/birdie/transantiagomaster/MainActivity$36$2;-><init>(Lcl/birdie/transantiagomaster/MainActivity$36;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    invoke-static {v0, v1, v2}, Lcl/birdie/transantiagomaster/MainActivity;->access$12(Lcl/birdie/transantiagomaster/MainActivity;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0
.end method
